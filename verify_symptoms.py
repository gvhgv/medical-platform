# -*- coding: utf-8 -*-
import mysql.connector

# 数据库连接信息
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': '621412',
    'database': 'medical_platform',
    'charset': 'utf8mb4'
}

# 连接数据库
def connect_db():
    return mysql.connector.connect(**DB_CONFIG)

# 验证症状和伴随症状数据
def verify_symptoms():
    conn = connect_db()
    cursor = conn.cursor()
    
    try:
        # 获取所有症状
        cursor.execute("SELECT id, name, body_part_id FROM symptoms")
        symptoms = cursor.fetchall()
        
        print(f"总共有 {len(symptoms)} 个症状")
        
        # 检查每个症状是否有伴随症状
        symptoms_without_companions = []
        
        for symptom_id, symptom_name, body_part_id in symptoms:
            # 获取伴随症状数量
            cursor.execute("SELECT COUNT(*) FROM companion_symptoms WHERE symptom_id = %s", (symptom_id,))
            companion_count = cursor.fetchone()[0]
            
            if companion_count == 0:
                symptoms_without_companions.append((symptom_id, symptom_name))
            else:
                print(f"症状: {symptom_name}, 伴随症状数量: {companion_count}")
        
        # 输出没有伴随症状的症状
        if symptoms_without_companions:
            print(f"\n有 {len(symptoms_without_companions)} 个症状没有伴随症状:")
            for symptom_id, symptom_name in symptoms_without_companions:
                print(f"- {symptom_name}")
        else:
            print("\n所有症状都有伴随症状，验证通过！")
        
        # 按身体部位统计症状数量
        print("\n按身体部位统计症状数量:")
        cursor.execute("SELECT bp.name, COUNT(s.id) as symptom_count FROM symptoms s JOIN body_parts bp ON s.body_part_id = bp.id GROUP BY bp.name")
        body_part_stats = cursor.fetchall()
        
        for body_part_name, symptom_count in body_part_stats:
            print(f"{body_part_name}: {symptom_count} 个症状")
            
    except Exception as e:
        print(f"错误: {e}")
    finally:
        cursor.close()
        conn.close()

if __name__ == "__main__":
    verify_symptoms()
