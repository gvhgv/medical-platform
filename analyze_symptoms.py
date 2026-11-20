import pandas as pd
import os
import sys

# 设置默认编码为utf-8
sys.stdout.reconfigure(encoding='utf-8')

# 要分析的Excel文件列表
excel_files = [
    'd:\\医疗平台\\腹.xlsx',
    'd:\\医疗平台\\手.xlsx',
    'd:\\医疗平台\\头.xlsx',
    'd:\\医疗平台\\腿.xlsx',
    'd:\\医疗平台\\胸.xlsx'
]

# 分析每个Excel文件
def analyze_excel_file(file_path):
    try:
        print(f"\n分析文件: {file_path}")
        
        # 读取Excel文件
        df = pd.read_excel(file_path, sheet_name=0)
        print(f"数据列名: {df.columns.tolist()}")
        
        # 检查是否有症状和伴随症状列
        symptom_col = None
        companion_col = None
        cause_col = None
        department_col = None
        
        for col in df.columns:
            col_lower = str(col).lower()
            if '症状' in col_lower and symptom_col is None:
                symptom_col = col
            elif '伴随' in col_lower:
                companion_col = col
            elif '原因' in col_lower:
                cause_col = col
            elif '科室' in col_lower:
                department_col = col
        
        print(f"识别到的列: 症状={symptom_col}, 伴随症状={companion_col}, 原因={cause_col}, 科室={department_col}")
        
        # 检查每个症状是否有伴随症状
        missing_companions = []
        if symptom_col and companion_col:
            print("\n检查症状的伴随症状:")
            for index, row in df.iterrows():
                try:
                    symptom = row[symptom_col]
                    companion = row[companion_col]
                    
                    if pd.notna(symptom):
                        # 跳过表头或占位符
                        if str(symptom).strip() == '症状' or str(symptom).strip() == '常见症状':
                            continue
                        
                        if pd.isna(companion) or str(companion).strip() == '':
                            print(f"- 症状 '{symptom}' 缺少伴随症状")
                            missing_companions.append(symptom)
                        else:
                            # 处理编码问题
                            companion_str = str(companion).strip()
                            print(f"- 症状 '{symptom}' 有伴随症状: {companion_str}")
                except Exception as e:
                    print(f"处理第{index}行时出错: {e}")
                    continue
        else:
            print("未找到症状或伴随症状列")
        
        return {
            'file': file_path,
            'symptom_col': symptom_col,
            'companion_col': companion_col,
            'cause_col': cause_col,
            'department_col': department_col,
            'data': df,
            'missing_companions': missing_companions
        }
        
    except Exception as e:
        print(f"读取文件 {file_path} 时出错: {e}")
        return None

# 主函数
def main():
    results = []
    
    for file in excel_files:
        if os.path.exists(file):
            result = analyze_excel_file(file)
            if result:
                results.append(result)
        else:
            print(f"文件不存在: {file}")
    
    # 汇总结果
    print("\n=== 分析汇总 ===")
    for result in results:
        print(f"\n文件: {result['file']}")
        print(f"症状列: {result['symptom_col']}")
        print(f"伴随症状列: {result['companion_col']}")
        print(f"原因列: {result['cause_col']}")
        print(f"科室列: {result['department_col']}")
        print(f"数据行数: {len(result['data'])}")
        print(f"缺少伴随症状的症状数: {len(result['missing_companions'])}")
        if result['missing_companions']:
            print(f"缺少伴随症状的症状: {result['missing_companions']}")

if __name__ == "__main__":
    main()
