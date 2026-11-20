# -*- coding: utf-8 -*-
import pandas as pd
from openpyxl import load_workbook
import os
import mysql.connector

# 设置编码
os.environ['PYTHONIOENCODING'] = 'utf-8'

# 数据库连接信息
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': '621412',
    'database': 'medical_platform',
    'charset': 'utf8mb4'
}

# 身体部位映射
BODY_PART_MAP = {
    '头.xlsx': 'head',
    '胸.xlsx': 'chest',
    '腹.xlsx': 'abdomen',
    '手.xlsx': 'right-arm',  # 假设手对应右臂
    '腿.xlsx': 'right-leg'   # 假设腿对应右腿
}

# 读取Excel文件并提取症状和伴随症状
def read_excel_file(file_path, body_part_code):
    print(f"=== 读取文件: {file_path} ===")
    wb = load_workbook(file_path, data_only=True)
    ws = wb.active
    
    symptoms = []
    current_symptom = None
    companion_symptoms = []
    
    for row_idx in range(1, ws.max_row + 1):
        try:
            # 读取第一列（症状）
            symptom_cell = ws.cell(row=row_idx, column=1).value
            if symptom_cell:
                # 如果是新症状，保存之前的症状和伴随症状
                if current_symptom and companion_symptoms:
                    symptoms.append({
                        'name': current_symptom,
                        'companion_symptoms': companion_symptoms.copy()
                    })
                    companion_symptoms = []
                # 开始新的症状，处理特殊字符
                current_symptom = str(symptom_cell).strip().replace('\u200b', '')
            
            # 读取第二列（伴随症状）
            companion_cell = ws.cell(row=row_idx, column=2).value
            if companion_cell and current_symptom:
                # 处理特殊字符
                companion_symptom = str(companion_cell).strip().replace('\u200b', '')
                if companion_symptom and companion_symptom != '伴随症状':  # 跳过表头
                    companion_symptoms.append(companion_symptom)
        except Exception as e:
            print(f"处理行 {row_idx} 时出错: {e}")
            continue
    
    # 保存最后一个症状
    if current_symptom and companion_symptoms and current_symptom != '症状':  # 跳过表头
        symptoms.append({
            'name': current_symptom,
            'companion_symptoms': companion_symptoms.copy()
        })
    
    print(f"找到 {len(symptoms)} 个症状")
    for symptom in symptoms[:5]:  # 显示前5个症状作为示例
        print(f"症状: {symptom['name']}, 伴随症状: {symptom['companion_symptoms'][:3]}...")
    
    return symptoms

# 连接数据库
def connect_db():
    return mysql.connector.connect(**DB_CONFIG)

# 获取身体部位ID
def get_body_part_id(cursor, code):
    cursor.execute("SELECT id FROM body_parts WHERE code = %s", (code,))
    result = cursor.fetchone()
    return result[0] if result else None

# 插入症状
def insert_symptom(cursor, name, body_part_id):
    # 检查症状是否已存在
    cursor.execute("SELECT id FROM symptoms WHERE name = %s", (name,))
    result = cursor.fetchone()
    if result:
        return result[0]
    
    # 生成代码
    code = name.lower().replace(' ', '-').replace('、', '-').replace(',', '-')
    
    # 插入新症状
    cursor.execute(
        "INSERT INTO symptoms (name, code, description, body_part_id, severity, icon, status, created_at, updated_at) VALUES (%s, %s, %s, %s, %s, %s, %s, NOW(), NOW())",
        (name, code, name, body_part_id, 'moderate', 'fas fa-notes-medical', 'active')
    )
    return cursor.lastrowid

# 插入伴随症状
def insert_companion_symptom(cursor, name, symptom_id):
    # 检查伴随症状是否已存在
    cursor.execute("SELECT id FROM companion_symptoms WHERE name = %s AND symptom_id = %s", (name, symptom_id))
    result = cursor.fetchone()
    if result:
        return result[0]
    
    # 插入新伴随症状
    cursor.execute(
        "INSERT INTO companion_symptoms (name, description, symptom_id, status, created_at, updated_at) VALUES (%s, %s, %s, %s, NOW(), NOW())",
        (name, name, symptom_id, 'active')
    )
    return cursor.lastrowid

# 主函数
def main():
    excel_files = [
        'd:\\医疗平台\\手.xlsx',
        'd:\\医疗平台\\头.xlsx',
        'd:\\医疗平台\\腿.xlsx',
        'd:\\医疗平台\\胸.xlsx',
        'd:\\医疗平台\\腹.xlsx'
    ]
    
    conn = connect_db()
    cursor = conn.cursor()
    
    try:
        for file_path in excel_files:
            # 获取身体部位代码
            file_name = os.path.basename(file_path)
            body_part_code = BODY_PART_MAP.get(file_name)
            
            if not body_part_code:
                print(f"跳过文件 {file_name}，未找到对应的身体部位")
                continue
            
            # 获取身体部位ID
            body_part_id = get_body_part_id(cursor, body_part_code)
            if not body_part_id:
                print(f"未找到身体部位 {body_part_code} 的ID")
                continue
            
            # 读取Excel文件
            symptoms = read_excel_file(file_path, body_part_code)
            
            # 插入数据
            for symptom in symptoms:
                # 插入症状
                symptom_id = insert_symptom(cursor, symptom['name'], body_part_id)
                
                # 插入伴随症状
                for companion_symptom in symptom['companion_symptoms']:
                    insert_companion_symptom(cursor, companion_symptom, symptom_id)
            
            # 提交事务
            conn.commit()
            print(f"文件 {file_name} 处理完成")
            
    except Exception as e:
        print(f"错误: {e}")
        conn.rollback()
    finally:
        cursor.close()
        conn.close()

if __name__ == "__main__":
    main()
