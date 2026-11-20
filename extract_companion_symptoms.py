import pandas as pd
import os
import sys
import re

# 设置默认编码为utf-8
sys.stdout.reconfigure(encoding='utf-8')

# 要分析的Excel文件列表
excel_files = [
    {'path': 'd:\\医疗平台\\腹.xlsx', 'body_part': 'abdomen'},
    {'path': 'd:\\医疗平台\\手.xlsx', 'body_part': 'arm'},
    {'path': 'd:\\医疗平台\\头.xlsx', 'body_part': 'head'},
    {'path': 'd:\\医疗平台\\腿.xlsx', 'body_part': 'leg'},
    {'path': 'd:\\医疗平台\\胸.xlsx', 'body_part': 'chest'}
]

# 症状ID映射
# 这里需要根据SymptomSelection.vue中的症状ID来映射
# 由于Excel中的症状名称可能与前端中的不完全一致，需要手动映射

symptom_id_mapping = {
    # 头部症状
    '头痛': 'head-pain',
    '剧烈头痛（非外伤）': 'head-severe-headache',
    '外伤后剧烈头痛伴呕吐、神志不清': 'head-severe-headache',
    '头晕': 'head-dizziness',
    '发热': 'head-fever',
    '失眠': 'head-insomnia',
    '疲劳 / 无力': 'head-fatigue',
    '惊厥': 'head-seizure',
    '木僵 / 精神活动迟钝': 'head-drowsiness',
    '神志不清': 'head-confusion',
    '呕吐': 'head-vomiting',
    '视力问题（模糊、重影）': 'head-vision',
    '记忆力减退 / 反应慢': 'head-memory',
    '性格改变（变怪、行为异常）': 'head-personality',
    '怕光怕吵 / 畏光畏声': 'head-sensitivity',
    '麻木（局部或全身）': 'head-numbness',
    '牙痛': 'head-toothache',
    '面部放射性疼痛': 'head-trigeminal',
    
    # 胸部症状
    '胸痛': 'chest-pain',
    '突发胸痛胸闷': 'chest-sudden-chest-pain',
    '胸痛伴呼吸受限': 'chest-chest-pain-breath',
    '运动后胸痛': 'chest-sports-pain',
    '撕裂性胸痛': 'chest-tearing-pain',
    '心悸': 'chest-palpitation',
    '气短': 'chest-shortness-breath',
    '咳嗽': 'chest-cough',
    '咯血': 'chest-hemoptysis',
    '烧心': 'chest-heartburn',
    '吞咽困难': 'chest-dysphagia',
    '怕热、爱出汗': 'chest-sweating',
    '声音嘶哑': 'chest-hoarseness',
    '脖子前面肿': 'chest-swelling',
    
    # 腹部症状
    '腹痛': 'abdomen-pain',
    '剧烈腹痛': 'abdomen-severe-pain',
    '恶心': 'abdomen-nausea',
    '腹泻': 'abdomen-diarrhea',
    '便秘': 'abdomen-constipation',
    '便血': 'abdomen-blood-stool',
    '食欲缺乏': 'abdomen-poor-appetite',
    '体重减轻': 'abdomen-weight-loss',
    '腹胀': 'abdomen-swelling',
    '黄疸': 'abdomen-jaundice',
    '尿频尿急尿痛': 'abdomen-urination',
    '尿血': 'abdomen-hematuria',
    '尿少伴浮肿': 'abdomen-urine-decrease',
    '尿少伴腰痛': 'abdomen-urine-decrease-pain',
    '腰腹痛': 'abdomen-lower-back-pain',
    '月经异常': 'abdomen-menstrual',
    '白带异常': 'abdomen-vaginal',
    '腰痛': 'abdomen-back-pain',
    '疲劳': 'abdomen-fatigue',
    
    # 手臂症状
    '疼痛': ['left-arm-pain', 'right-arm-pain'],
    '麻木': ['left-arm-numbness', 'right-arm-numbness'],
    '肿胀': ['left-arm-swelling', 'right-arm-swelling'],
    '无力': ['left-arm-weakness', 'right-arm-weakness'],
    '关节肿痛': ['left-arm-joint-pain', 'right-arm-joint-pain'],
    '关节强直': ['left-arm-joint-stiffness', 'right-arm-joint-stiffness'],
    '屈伸不利': ['left-arm-range-of-motion-limitation', 'right-arm-range-of-motion-limitation'],
    '肌痛': ['left-arm-muscle-pain', 'right-arm-muscle-pain'],
    '肌肉酸痛': ['left-arm-muscle-soreness', 'right-arm-muscle-soreness'],
    '压痛': ['left-arm-tenderness', 'right-arm-tenderness'],
    '创伤': ['left-arm-trauma', 'right-arm-trauma'],
    '肌肉萎缩': ['left-arm-muscle-atrophy', 'right-arm-muscle-atrophy'],
    '水泡': ['left-arm-blister', 'right-arm-blister'],
    '感觉障碍': ['left-arm-sensation-disorder', 'right-arm-sensation-disorder'],
    
    # 腿部症状
    '疼痛': ['left-leg-pain', 'right-leg-pain'],
    '麻木': ['left-leg-numbness', 'right-leg-numbness'],
    '肿胀': ['left-leg-swelling', 'right-leg-swelling'],
    '无力': ['left-leg-weakness', 'right-leg-weakness'],
    '关节肿痛': ['left-leg-joint-pain', 'right-leg-joint-pain'],
    '关节强直': ['left-leg-joint-stiffness', 'right-leg-joint-stiffness'],
    '屈伸不利': ['left-leg-range-of-motion-limitation', 'right-leg-range-of-motion-limitation'],
    '肌痛': ['left-leg-muscle-pain', 'right-leg-muscle-pain'],
    '肌肉酸痛': ['left-leg-muscle-soreness', 'right-leg-muscle-soreness'],
    '压痛': ['left-leg-tenderness', 'right-leg-tenderness'],
    '创伤': ['left-leg-trauma', 'right-leg-trauma'],
    '抽筋': ['left-leg-cramp', 'right-leg-cramp'],
    '肌肉萎缩': ['left-leg-muscle-atrophy', 'right-leg-muscle-atrophy'],
    '水泡': ['left-leg-blister', 'right-leg-blister'],
    '感觉障碍': ['left-leg-sensation-disorder', 'right-leg-sensation-disorder']
}

# 清洗字符串，移除特殊字符
def clean_string(s):
    # 移除零宽空格等特殊字符
    s = re.sub(r'\u200b', '', s)
    # 移除多余的空格
    s = re.sub(r'\s+', ' ', s)
    return s.strip()

# 生成症状ID
def generate_symptom_id(symptom_name, body_part):
    """
    生成症状ID
    """
    # 清洗症状名称
    cleaned_name = clean_string(symptom_name)
    # 移除特殊字符，只保留字母、数字和下划线
    cleaned_name = re.sub(r'[^a-zA-Z0-9\u4e00-\u9fa5]', '-', cleaned_name)
    # 转换为小写
    cleaned_name = cleaned_name.lower()
    # 生成ID
    if body_part == 'arm':
        # 为手臂症状生成左右两侧的ID
        left_id = f'left-arm-{cleaned_name}'
        right_id = f'right-arm-{cleaned_name}'
        return [left_id, right_id]
    elif body_part == 'leg':
        # 为腿部症状生成左右两侧的ID
        left_id = f'left-leg-{cleaned_name}'
        right_id = f'right-leg-{cleaned_name}'
        return [left_id, right_id]
    elif body_part == 'abdomen':
        # 为腹部症状生成ID
        return [f'abdomen-{cleaned_name}']
    else:
        # 为其他身体部位生成ID
        return [f'{body_part}-{cleaned_name}']

# 分析每个Excel文件并提取伴随症状
def extract_companion_symptoms():
    companion_data = {}
    
    for file_info in excel_files:
        file_path = file_info['path']
        body_part = file_info['body_part']
        
        try:
            print(f"\n分析文件: {file_path}")
            
            # 读取Excel文件
            df = pd.read_excel(file_path, sheet_name=0)
            
            # 检查是否有症状和伴随症状列
            symptom_col = None
            companion_col = None
            
            for col in df.columns:
                col_lower = str(col).lower()
                if '症状' in col_lower and symptom_col is None:
                    symptom_col = col
                elif '伴随' in col_lower:
                    companion_col = col
            
            if symptom_col and companion_col:
                print(f"识别到的列: 症状={symptom_col}, 伴随症状={companion_col}")
                
                # 提取伴随症状
                for index, row in df.iterrows():
                    try:
                        symptom = row[symptom_col]
                        companion = row[companion_col]
                        
                        if pd.notna(symptom) and pd.notna(companion):
                            # 跳过表头或占位符
                            symptom_str = str(symptom).strip()
                            if symptom_str == '症状' or symptom_str == '常见症状':
                                continue
                            
                            # 清洗字符串
                            symptom_name = clean_string(symptom_str)
                            companion_str = clean_string(str(companion))
                            
                            # 生成症状ID
                            symptom_ids = generate_symptom_id(symptom_name, body_part)
                            
                            # 处理伴随症状，支持多种分隔符
                            # 先尝试用顿号分割
                            if '、' in companion_str:
                                companion_list = [clean_string(c) for c in companion_str.split('、') if clean_string(c)]
                            # 再尝试用逗号分割
                            elif '，' in companion_str:
                                companion_list = [clean_string(c) for c in companion_str.split('，') if clean_string(c)]
                            # 再尝试用逗号分割（英文逗号）
                            elif ',' in companion_str:
                                companion_list = [clean_string(c) for c in companion_str.split(',') if clean_string(c)]
                            # 如果没有分隔符，整个作为一个伴随症状
                            else:
                                companion_list = [clean_string(companion_str)] if clean_string(companion_str) else []
                            
                            for symptom_id in symptom_ids:
                                if symptom_id not in companion_data:
                                    companion_data[symptom_id] = []
                                
                                # 添加伴随症状
                                for c in companion_list:
                                    # 生成唯一ID
                                    # 使用英文或拼音作为ID，避免中文ID
                                    companion_id = f"{symptom_id}-{re.sub(r'[^a-zA-Z0-9]', '-', c.lower())}"
                                    # 检查是否已存在
                                    if not any(item['name'] == c for item in companion_data[symptom_id]):
                                        companion_data[symptom_id].append({
                                            'id': companion_id,
                                            'name': c,
                                            'description': f'伴随{symptom_name}的{c}'
                                        })
                    except Exception as e:
                        print(f"处理第{index}行时出错: {e}")
                        continue
            else:
                print("未找到症状或伴随症状列")
                
        except Exception as e:
            print(f"读取文件 {file_path} 时出错: {e}")
            continue
    
    return companion_data

# 生成前端代码
def generate_frontend_code(companion_data):
    code = "// 伴随症状数据\nconst companionData = {\n"
    
    for symptom_id, companions in companion_data.items():
        code += f"  '{symptom_id}': [\n"
        for i, companion in enumerate(companions):
            comma = ',' if i < len(companions) - 1 else ''
            # 确保字符串正确转义
            name = companion['name'].replace("'", "\\'")
            description = companion['description'].replace("'", "\\'")
            code += f"    {{ id: '{companion['id']}', name: '{name}', description: '{description}' }}{comma}\n"
        code += "  ],\n"
    
    code += "};"
    
    return code

# 主函数
def main():
    companion_data = extract_companion_symptoms()
    
    # 生成前端代码
    frontend_code = generate_frontend_code(companion_data)
    print("\n=== 生成的前端代码 ===")
    print(frontend_code)
    
    # 保存到文件
    with open('d:\\医疗平台\\companion_data.js', 'w', encoding='utf-8') as f:
        f.write(frontend_code)
    
    print("\n代码已保存到 companion_data.js 文件")

if __name__ == "__main__":
    main()
