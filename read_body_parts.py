# -*- coding: utf-8 -*-
from openpyxl import load_workbook
import os
import re

os.environ['PYTHONIOENCODING'] = 'utf-8'

files = {
    '头': r'd:\医疗平台\头.xlsx',
    '胸': r'd:\医疗平台\胸.xlsx',
    '腹': r'd:\医疗平台\腹.xlsx',
    '腿': r'd:\医疗平台\腿.xlsx',
    '手': r'd:\医疗平台\手.xlsx'
}

body_part_ids = {
    '头': 1,
    '胸': 2,
    '腹': 3,
    '腿': 4,
    '手': 5
}

# Department mapping
dept_mapping = {
    '神经内科': '神经内科', '神经外科': '神经外科', '内科': '内科', '外科': '外科',
    '儿科': '儿科', '骨科': '骨科', '妇产科': '妇产科', '妇科': '妇科',
    '急诊科': '急诊科', '急诊': '急诊科', '皮肤科': '皮肤科', '眼科': '眼科',
    '耳鼻喉科': '耳鼻喉科', '呼吸内科': '呼吸内科', '消化内科': '消化内科',
    '心血管内科': '心血管内科', '泌尿外科': '泌尿外科', '肾内科': '肾内科',
    '血液科': '血液科', '肿瘤科': '肿瘤科', '胸外科': '胸外科', '血管外科': '血管外科',
    '风湿免疫科': '风湿免疫科', '内分泌科': '内分泌科', '精神科': '精神科',
    '临床心理科': '临床心理科', '感染科': '感染科', '肝病科': '肝病科', '普外科': '普外科',
    '疼痛科': '疼痛科', '变态反应科': '变态反应科', '安宁疗护科': '安宁疗护科',
    '记忆门诊': '记忆门诊', '全科': '全科医学科', '全科医学科': '全科医学科',
    '发热门诊': '感染科', '肿瘤': '肿瘤科', '血管': '血管外科', '血液': '血液科',
    '免疫': '风湿免疫科', '消化': '消化内科', '心内科': '心血管内科',
    '神内': '神经内科', '神外': '神经外科',
}

all_symptoms = []

def clean_text(text):
    if not text:
        return ''
    text = str(text).replace('\u200b', '').replace('\xa0', ' ').strip()
    return text

def parse_department(dept_str):
    if not dept_str:
        return []
    dept_str = clean_text(dept_str)
    departments = []
    parts = re.split(r'[,，、/／\\|]+', dept_str)
    for part in parts:
        part = part.strip()
        if not part:
            continue
        matched = False
        for dept_name, canonical in dept_mapping.items():
            if dept_name in part or part in dept_name:
                if canonical not in departments:
                    departments.append(canonical)
                matched = True
                break
        if not matched:
            for dept_name, canonical in dept_mapping.items():
                if dept_name in part:
                    if canonical not in departments:
                        departments.append(canonical)
                    break
    return departments

print("=== Reading Excel files ===")

for part_key, file_path in files.items():
    print(f"\nReading {part_key}.xlsx...")
    wb = load_workbook(file_path, data_only=True)
    ws = wb.active

    headers = []
    for col_idx in range(1, ws.max_column + 1):
        cell = ws.cell(row=1, column=col_idx)
        headers.append(clean_text(cell.value) if cell.value else f'Col{col_idx}')

    symptom_col = None
    accompanying_col = None
    cause_col = None
    dept_col = None

    for col_idx, header in enumerate(headers):
        if '症状' in header and symptom_col is None:
            symptom_col = col_idx
        elif '伴随' in header and accompanying_col is None:
            accompanying_col = col_idx
        elif '原因' in header and cause_col is None:
            cause_col = col_idx
        elif '科室' in header.replace('和', '') and dept_col is None:
            dept_col = col_idx

    for row_idx in range(2, ws.max_row + 1):
        symptom = clean_text(ws.cell(row=row_idx, column=symptom_col+1).value) if symptom_col is not None else ''
        if not symptom or symptom == '症状':
            continue

        accompanying = clean_text(ws.cell(row=row_idx, column=accompanying_col+1).value) if accompanying_col is not None else ''
        cause = clean_text(ws.cell(row=row_idx, column=cause_col+1).value) if cause_col is not None else ''

        dept = ''
        if dept_col is not None:
            dept = clean_text(ws.cell(row=row_idx, column=dept_col+1).value)

        departments = parse_department(dept) if dept else parse_department(cause)

        all_symptoms.append({
            'body_part': part_key,
            'body_part_id': body_part_ids[part_key],
            'symptom': symptom,
            'accompanying': accompanying,
            'cause': cause,
            'departments': departments
        })

print(f"\n\nTotal symptoms collected: {len(all_symptoms)}")

# Generate SQL
sql_output = []
sql_output.append("-- Symptoms data from body part Excel files")
sql_output.append("SET NAMES utf8mb4;")
sql_output.append("SET FOREIGN_KEY_CHECKS = 0;")
sql_output.append("")

# Create symptom_departments table
sql_output.append("-- Create symptom_departments table if not exists")
sql_output.append("CREATE TABLE IF NOT EXISTS symptom_departments (")
sql_output.append("  id INT AUTO_INCREMENT PRIMARY KEY,")
sql_output.append("  symptom_id INT NOT NULL,")
sql_output.append("  department_id INT NOT NULL,")
sql_output.append("  weight INT DEFAULT 1,")
sql_output.append("  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,")
sql_output.append("  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,")
sql_output.append("  UNIQUE KEY unique_symptom_department (symptom_id, department_id),")
sql_output.append("  INDEX idx_symptom_id (symptom_id),")
sql_output.append("  INDEX idx_department_id (department_id)")
sql_output.append(") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;")
sql_output.append("")

sql_output.append("-- Ensure body_parts exist")
for part_key, part_name in [('头', '头部'), ('胸', '胸部'), ('腹', '腹部'), ('腿', '腿部'), ('手', '手部')]:
    sql_output.append(f"INSERT IGNORE INTO body_parts (id, name, code, description, status, created_at, updated_at) VALUES ({body_part_ids[part_key]}, '{part_name}', '{part_key}', '{part_name}', 'active', NOW(), NOW());")
sql_output.append("")

sql_output.append("-- Insert symptoms")
symptom_code_map = {}

for idx, symptom_data in enumerate(all_symptoms):
    symptom = symptom_data['symptom']
    code = symptom.replace(' ', '_').replace('（', '').replace('）', '').lower()
    code = ''.join(c for c in code if c.isalnum() or c == '_')
    symptom_code_map[symptom] = f"{symptom_data['body_part']}_{code}"

    symptom_esc = symptom.replace("'", "''")
    accompanying_esc = symptom_data['accompanying'].replace("'", "''")
    cause_esc = symptom_data['cause'].replace("'", "''")
    description = f"{symptom}。{symptom_data['accompanying']}。{symptom_data['cause']}"
    description_esc = description.replace("'", "''")

    sql_output.append(f"INSERT IGNORE INTO symptoms (name, code, description, body_part_id, severity, status, created_at, updated_at) VALUES ('{symptom_esc}', '{symptom_code_map[symptom]}', '{description_esc}', {symptom_data['body_part_id']}, 'moderate', 'active', NOW(), NOW());")

sql_output.append("")
sql_output.append("-- Create symptom_departments relationships")
sql_output.append("DELETE FROM symptom_departments;")
sql_output.append("")

for symptom_data in all_symptoms:
    symptom = symptom_data['symptom']
    symptom_esc = symptom.replace("'", "''")

    for dept in symptom_data['departments']:
        dept_esc = dept.replace("'", "''")
        sql_output.append(f"INSERT IGNORE INTO symptom_departments (symptom_id, department_id, weight, created_at, updated_at) SELECT s.id, d.id, 1, NOW(), NOW() FROM symptoms s JOIN departments d WHERE s.name = '{symptom_esc}' AND d.name = '{dept_esc}';")

sql_output.append("")
sql_output.append("SET FOREIGN_KEY_CHECKS = 1;")

output_file = r'd:\医疗平台\sql\body_part_symptoms.sql'
with open(output_file, 'w', encoding='utf-8') as f:
    f.write('\n'.join(sql_output))

print(f"\nSQL file written to: {output_file}")
print(f"Total symptoms: {len(all_symptoms)}")

print("\n=== Sample symptoms ===")
for symptom_data in all_symptoms[:10]:
    print(f"{symptom_data['body_part']}: {symptom_data['symptom']} -> {symptom_data['departments']}")