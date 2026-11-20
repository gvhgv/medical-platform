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

# 直接定义腹部症状和伴随症状
def get_abdominal_symptoms():
    print("=== 定义腹部症状和伴随症状 ===")
    
    symptoms = [
        {
            'name': '腹痛',
            'companion_symptoms': ['腹部疼痛，可为绞痛、钝痛或刺痛，可伴有恶心、呕吐、腹泻等症状。']
        },
        {
            'name': '恶心',
            'companion_symptoms': ['感到恶心，可能伴有呕吐、食欲不振等症状。']
        },
        {
            'name': '腹泻',
            'companion_symptoms': ['频繁的稀便，可能伴有腹痛、恶心、呕吐等症状。']
        }
    ]
    
    print(f"定义了 {len(symptoms)} 个腹部症状")
    for symptom in symptoms:
        print(f"症状: {symptom['name']}, 伴随症状: {symptom['companion_symptoms']}")
    
    return symptoms

# 连接数据库
def connect_db():
    return mysql.connector.connect(**DB_CONFIG)

# 获取身体部位ID
def get_body_part_id(cursor, code):
    cursor.execute("SELECT id FROM body_parts WHERE code = %s", (code,))
    result = cursor.fetchone()
    return result[0] if result else None

# 获取症状ID
def get_symptom_id(cursor, name):
    cursor.execute("SELECT id FROM symptoms WHERE name = %s", (name,))
    result = cursor.fetchone()
    return result[0] if result else None

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
    conn = connect_db()
    cursor = conn.cursor()
    
    try:
        # 获取腹部的身体部位ID
        body_part_id = get_body_part_id(cursor, 'abdomen')
        if not body_part_id:
            print("未找到腹部的身体部位ID")
            return
        
        # 获取腹部症状和伴随症状
        symptoms = get_abdominal_symptoms()
        
        # 为每个症状添加伴随症状
        for symptom in symptoms:
            # 获取症状ID
            symptom_id = get_symptom_id(cursor, symptom['name'])
            if not symptom_id:
                print(f"未找到症状 {symptom['name']} 的ID")
                continue
            
            # 插入伴随症状
            for companion_symptom in symptom['companion_symptoms']:
                insert_companion_symptom(cursor, companion_symptom, symptom_id)
        
        # 提交事务
        conn.commit()
        print("腹部症状的伴随症状已添加")
        
    except Exception as e:
        print(f"错误: {e}")
        conn.rollback()
    finally:
        cursor.close()
        conn.close()

if __name__ == "__main__":
    main()
