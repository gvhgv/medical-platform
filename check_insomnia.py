import pandas as pd

# 读取头.xlsx文件
try:
    # 尝试读取不同的sheet
    xls = pd.ExcelFile('d:\医疗平台\头.xlsx')
    print("Excel文件包含的sheet:", xls.sheet_names)
    
    # 读取第一个sheet
    df = pd.read_excel('d:\医疗平台\头.xlsx', sheet_name=0)
    print("\n数据列名:", df.columns.tolist())
    
    # 搜索包含"失眠"的行
    insomnia_rows = df[df.apply(lambda row: row.astype(str).str.contains('失眠').any(), axis=1)]
    
    if not insomnia_rows.empty:
        print("\n找到包含失眠的行:")
        # 逐行打印，避免编码问题
        for index, row in insomnia_rows.iterrows():
            print(f"\n第{index}行:")
            for col in df.columns:
                value = row[col]
                if pd.notna(value):
                    try:
                        print(f"{col}: {value}")
                    except:
                        print(f"{col}: {str(value).encode('utf-8', 'ignore').decode('utf-8')}")
        
        # 检查是否有伴随症状列
        for col in df.columns:
            if '伴随' in col or '症状' in col:
                print(f"\n{col}列内容:")
                for value in insomnia_rows[col].dropna():
                    try:
                        print(f"- {value}")
                    except:
                        print(f"- {str(value).encode('utf-8', 'ignore').decode('utf-8')}")
    else:
        print("未找到包含失眠的行")
        
    # 打印前10行数据，了解数据结构
    print("\n前10行数据:")
    for index, row in df.head(10).iterrows():
        print(f"\n第{index}行:")
        for col in df.columns:
            value = row[col]
            if pd.notna(value):
                try:
                    print(f"{col}: {value}")
                except:
                    print(f"{col}: {str(value).encode('utf-8', 'ignore').decode('utf-8')}")
    
except Exception as e:
    print(f"读取Excel文件时出错: {e}")
