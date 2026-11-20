import pandas as pd
import os

# 身体部位映射
body_part_mapping = {
    '手': ['left-hand', 'right-hand'],
    '头': ['head'],
    '腿': ['left-leg', 'right-leg'],
    '胸': ['chest'],
    '腹': ['abdomen']
}

# 读取Excel文件并生成SQL语句
def generate_sql_from_excel():
    # 定义输出文件
    sql_file = 'd:\\医疗平台\\symptom_data.sql'
    
    # 清空输出文件
    with open(sql_file, 'w', encoding='utf-8') as f:
        f.write('-- 症状和伴随症状数据\n\n')
    
    # 处理每个Excel文件
    for body_part, codes in body_part_mapping.items():
        file_path = f'd:\\医疗平台\\{body_part}.xlsx'
        if not os.path.exists(file_path):
            print(f'文件不存在: {file_path}')
            continue
        
        # 读取Excel文件
        df = pd.read_excel(file_path)
        
        # 生成SQL语句
        with open(sql_file, 'a', encoding='utf-8') as f:
            f.write(f'-- {body_part}部位症状\n\n')
            
            # 遍历每一行
            for index, row in df.iterrows():
                # 跳过表头行
                if pd.isna(row.iloc[0]) or row.iloc[0] == '症状':
                    continue
                
                # 获取症状名称
                symptom_name = row.iloc[0]
                
                # 生成症状代码（使用拼音或英文）
                symptom_code = symptom_name.lower().replace(' ', '_')
                
                # 获取伴随症状
                companion_symptoms = []
                if len(row) > 1 and not pd.isna(row.iloc[1]):
                    companion_symptoms = [cs.strip() for cs in row.iloc[1].split('、')]
                
                # 为每个身体部位代码生成症状
                for code in codes:
                    # 生成症状SQL
                    f.write(f"INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('{symptom_name}', '{symptom_code}_{code}', (SELECT id FROM body_parts WHERE code = '{code}'), 'moderate', 'active');\n")
                
                # 生成伴随症状SQL
                for cs in companion_symptoms:
                    if cs:
                        f.write(f"INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('{cs}', (SELECT id FROM symptoms WHERE name = '{symptom_name}'), 'active');\n")
                
                f.write('\n')
    
    print(f'SQL语句已生成到: {sql_file}')

if __name__ == '__main__':
    generate_sql_from_excel()
