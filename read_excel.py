import pandas as pd
import json

try:
    df_dict = pd.read_excel('d:/医疗平台/手.xlsx', sheet_name=None)
    result = {}
    for sheet_name, df in df_dict.items():
        result[sheet_name] = df.to_dict(orient='records')

    with open('d:/医疗平台/hand_data.json', 'w', encoding='utf-8') as f:
        json.dump(result, f, ensure_ascii=False, indent=2)
    print("Data saved to hand_data.json")
except Exception as e:
    print(f"Error: {e}")
    import traceback
    traceback.print_exc()