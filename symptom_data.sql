-- 症状和伴随症状数据

-- 手部位症状

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('疼痛​', '疼痛​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('疼痛​', '疼痛​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('左臂任何部位的酸痛', (SELECT id FROM symptoms WHERE name = '疼痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胀痛', (SELECT id FROM symptoms WHERE name = '疼痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('刺痛等不适感。', (SELECT id FROM symptoms WHERE name = '疼痛​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('麻木​', '麻木​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('麻木​', '麻木​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('左臂感觉减退', (SELECT id FROM symptoms WHERE name = '麻木​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发木或像有“小电流”通过的刺痛感。', (SELECT id FROM symptoms WHERE name = '麻木​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肿胀​', '肿胀​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肿胀​', '肿胀​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('左臂局部或整体肿胀', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发红', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('皮温升高。', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('无力​', '无力​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('无力​', '无力​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('左臂力量明显下降，持物', (SELECT id FROM symptoms WHERE name = '无力​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('抬举困难。', (SELECT id FROM symptoms WHERE name = '无力​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('震颤​', '震颤​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('震颤​', '震颤​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手臂不自主', (SELECT id FROM symptoms WHERE name = '震颤​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('有节律地抖动。', (SELECT id FROM symptoms WHERE name = '震颤​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节肿痛​', '关节肿痛​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节肿痛​', '关节肿痛​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肘', (SELECT id FROM symptoms WHERE name = '关节肿痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腕', (SELECT id FROM symptoms WHERE name = '关节肿痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肩等关节的红', (SELECT id FROM symptoms WHERE name = '关节肿痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肿', (SELECT id FROM symptoms WHERE name = '关节肿痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('热', (SELECT id FROM symptoms WHERE name = '关节肿痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('痛。', (SELECT id FROM symptoms WHERE name = '关节肿痛​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节强直​', '关节强直​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节强直​', '关节强直​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节僵硬，活动不灵活。', (SELECT id FROM symptoms WHERE name = '关节强直​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('屈伸不利​', '屈伸不利​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('屈伸不利​', '屈伸不利​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节活动范围受限，无法完全弯曲或伸直。', (SELECT id FROM symptoms WHERE name = '屈伸不利​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌痛​', '肌痛​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌痛​', '肌痛​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肌肉酸痛，通常与活动或劳损相关。', (SELECT id FROM symptoms WHERE name = '肌痛​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('压痛​', '压痛​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('压痛​', '压痛​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('按压特定部位时出现的疼痛。', (SELECT id FROM symptoms WHERE name = '压痛​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('损伤​', '损伤​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('损伤​', '损伤​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('明确的外伤史，如扭伤', (SELECT id FROM symptoms WHERE name = '损伤​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('拉伤', (SELECT id FROM symptoms WHERE name = '损伤​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('撞击。', (SELECT id FROM symptoms WHERE name = '损伤​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('感觉障碍​', '感觉障碍​_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('感觉障碍​', '感觉障碍​_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('感觉异常，如灼热感', (SELECT id FROM symptoms WHERE name = '感觉障碍​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('蚁行感', (SELECT id FROM symptoms WHERE name = '感觉障碍​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('过电感等。', (SELECT id FROM symptoms WHERE name = '感觉障碍​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节弹响', '关节弹响_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节弹响', '关节弹响_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节活动时出现“咔嗒”声或弹响，可伴疼痛或卡顿感。', (SELECT id FROM symptoms WHERE name = '关节弹响'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('皮肤变色', '皮肤变色_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('皮肤变色', '皮肤变色_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部皮肤发红', (SELECT id FROM symptoms WHERE name = '皮肤变色'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发紫', (SELECT id FROM symptoms WHERE name = '皮肤变色'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('苍白或出现异常斑点。', (SELECT id FROM symptoms WHERE name = '皮肤变色'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部发凉', '手部发凉_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部发凉', '手部发凉_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部温度明显低于其他部位，可伴苍白或发紫。', (SELECT id FROM symptoms WHERE name = '手部发凉'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手指畸形', '手指畸形_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手指畸形', '手指畸形_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手指关节变形', (SELECT id FROM symptoms WHERE name = '手指畸形'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('弯曲或肿胀，影响正常功能。', (SELECT id FROM symptoms WHERE name = '手指畸形'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('扳机指', '扳机指_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('扳机指', '扳机指_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手指弯曲后无法自行伸直，需要外力帮助，可伴疼痛。', (SELECT id FROM symptoms WHERE name = '扳机指'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腕管综合征', '腕管综合征_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腕管综合征', '腕管综合征_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手腕部疼痛', (SELECT id FROM symptoms WHERE name = '腕管综合征'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('麻木，向手指放射，夜间加重。', (SELECT id FROM symptoms WHERE name = '腕管综合征'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手指麻木', '手指麻木_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手指麻木', '手指麻木_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('单个或多个手指麻木', (SELECT id FROM symptoms WHERE name = '手指麻木'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('刺痛，可伴无力。', (SELECT id FROM symptoms WHERE name = '手指麻木'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部多汗', '手部多汗_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部多汗', '手部多汗_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部异常多汗，可伴潮湿', (SELECT id FROM symptoms WHERE name = '手部多汗'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发凉。', (SELECT id FROM symptoms WHERE name = '手部多汗'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部感染', '手部感染_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部感染', '手部感染_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部皮肤红肿', (SELECT id FROM symptoms WHERE name = '手部感染'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('疼痛', (SELECT id FROM symptoms WHERE name = '手部感染'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('化脓，可伴发热。', (SELECT id FROM symptoms WHERE name = '手部感染'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部肿瘤', '手部肿瘤_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部肿瘤', '手部肿瘤_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部出现肿块', (SELECT id FROM symptoms WHERE name = '手部肿瘤'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('硬结，生长缓慢或迅速。', (SELECT id FROM symptoms WHERE name = '手部肿瘤'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部冻伤', '手部冻伤_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部冻伤', '手部冻伤_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部皮肤苍白', (SELECT id FROM symptoms WHERE name = '手部冻伤'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('麻木', (SELECT id FROM symptoms WHERE name = '手部冻伤'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('疼痛，严重时出现水疱或坏死。', (SELECT id FROM symptoms WHERE name = '手部冻伤'), 'active');

-- 头部位症状

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('头痛', '头痛_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('恶心', (SELECT id FROM symptoms WHERE name = '头痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('呕吐', (SELECT id FROM symptoms WHERE name = '头痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('畏光', (SELECT id FROM symptoms WHERE name = '头痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('畏声', (SELECT id FROM symptoms WHERE name = '头痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('头晕', (SELECT id FROM symptoms WHERE name = '头痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('颈肩僵硬', (SELECT id FROM symptoms WHERE name = '头痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('剧烈头痛（非外伤）', '剧烈头痛（非外伤）_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('喷射性呕吐', (SELECT id FROM symptoms WHERE name = '剧烈头痛（非外伤）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('颈部僵硬', (SELECT id FROM symptoms WHERE name = '剧烈头痛（非外伤）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('意识模糊', (SELECT id FROM symptoms WHERE name = '剧烈头痛（非外伤）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肢体麻木', (SELECT id FROM symptoms WHERE name = '剧烈头痛（非外伤）'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('外伤后剧烈头痛伴呕吐、神志不清', '外伤后剧烈头痛伴呕吐、神志不清_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('头皮血肿', (SELECT id FROM symptoms WHERE name = '外伤后剧烈头痛伴呕吐、神志不清'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('嗜睡', (SELECT id FROM symptoms WHERE name = '外伤后剧烈头痛伴呕吐、神志不清'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('抽搐', (SELECT id FROM symptoms WHERE name = '外伤后剧烈头痛伴呕吐、神志不清'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('瞳孔不等大', (SELECT id FROM symptoms WHERE name = '外伤后剧烈头痛伴呕吐、神志不清'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('头晕', '头晕_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('视物旋转', (SELECT id FROM symptoms WHERE name = '头晕'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('耳鸣', (SELECT id FROM symptoms WHERE name = '头晕'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('听力下降', (SELECT id FROM symptoms WHERE name = '头晕'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('恶心', (SELECT id FROM symptoms WHERE name = '头晕'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('走路不稳', (SELECT id FROM symptoms WHERE name = '头晕'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('出冷汗', (SELECT id FROM symptoms WHERE name = '头晕'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('发热', '发热_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('畏寒', (SELECT id FROM symptoms WHERE name = '发热'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('寒战', (SELECT id FROM symptoms WHERE name = '发热'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('头痛', (SELECT id FROM symptoms WHERE name = '发热'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肌肉酸痛', (SELECT id FROM symptoms WHERE name = '发热'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('咳嗽', (SELECT id FROM symptoms WHERE name = '发热'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('咽痛', (SELECT id FROM symptoms WHERE name = '发热'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('乏力', (SELECT id FROM symptoms WHERE name = '发热'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('失眠', '失眠_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('多梦', (SELECT id FROM symptoms WHERE name = '失眠'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('易醒', (SELECT id FROM symptoms WHERE name = '失眠'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('醒后难入睡', (SELECT id FROM symptoms WHERE name = '失眠'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('白天困倦', (SELECT id FROM symptoms WHERE name = '失眠'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('焦虑', (SELECT id FROM symptoms WHERE name = '失眠'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('心慌', (SELECT id FROM symptoms WHERE name = '失眠'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('疲劳 / 无力', '疲劳_/_无力_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('极度疲倦', (SELECT id FROM symptoms WHERE name = '疲劳 / 无力'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('虚弱', (SELECT id FROM symptoms WHERE name = '疲劳 / 无力'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('活动后加重', (SELECT id FROM symptoms WHERE name = '疲劳 / 无力'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('面色苍白', (SELECT id FROM symptoms WHERE name = '疲劳 / 无力'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('消瘦', (SELECT id FROM symptoms WHERE name = '疲劳 / 无力'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('惊厥', '惊厥_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('意识丧失', (SELECT id FROM symptoms WHERE name = '惊厥'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('牙关紧闭', (SELECT id FROM symptoms WHERE name = '惊厥'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('口吐白沫', (SELECT id FROM symptoms WHERE name = '惊厥'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('四肢强直阵挛', (SELECT id FROM symptoms WHERE name = '惊厥'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('大小便失禁', (SELECT id FROM symptoms WHERE name = '惊厥'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('木僵 / 精神活动迟钝', '木僵_/_精神活动迟钝_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('不语', (SELECT id FROM symptoms WHERE name = '木僵 / 精神活动迟钝'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('不动', (SELECT id FROM symptoms WHERE name = '木僵 / 精神活动迟钝'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('拒食', (SELECT id FROM symptoms WHERE name = '木僵 / 精神活动迟钝'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('违拗', (SELECT id FROM symptoms WHERE name = '木僵 / 精神活动迟钝'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('蜡样屈曲', (SELECT id FROM symptoms WHERE name = '木僵 / 精神活动迟钝'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('呆滞', (SELECT id FROM symptoms WHERE name = '木僵 / 精神活动迟钝'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('神志不清', '神志不清_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胡言乱语', (SELECT id FROM symptoms WHERE name = '神志不清'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('抽搐', (SELECT id FROM symptoms WHERE name = '神志不清'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('高热', (SELECT id FROM symptoms WHERE name = '神志不清'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('瞳孔散大', (SELECT id FROM symptoms WHERE name = '神志不清'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('大小便失禁', (SELECT id FROM symptoms WHERE name = '神志不清'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('呕吐', (SELECT id FROM symptoms WHERE name = '神志不清'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('呕吐', '呕吐_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('恶心', (SELECT id FROM symptoms WHERE name = '呕吐'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹痛', (SELECT id FROM symptoms WHERE name = '呕吐'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹泻。警惕：喷射性呕吐', (SELECT id FROM symptoms WHERE name = '呕吐'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('剧烈头痛', (SELECT id FROM symptoms WHERE name = '呕吐'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('视力问题（模糊、重影）', '视力问题（模糊、重影）_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('眼痛', (SELECT id FROM symptoms WHERE name = '视力问题（模糊、重影）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('闪光感', (SELECT id FROM symptoms WHERE name = '视力问题（模糊、重影）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('视野缺损', (SELECT id FROM symptoms WHERE name = '视力问题（模糊、重影）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('飞蚊症', (SELECT id FROM symptoms WHERE name = '视力问题（模糊、重影）'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('记忆力减退 / 反应慢', '记忆力减退_/_反应慢_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('丢三落四', (SELECT id FROM symptoms WHERE name = '记忆力减退 / 反应慢'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('学习困难', (SELECT id FROM symptoms WHERE name = '记忆力减退 / 反应慢'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('性格改变', (SELECT id FROM symptoms WHERE name = '记忆力减退 / 反应慢'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('生活能力下降', (SELECT id FROM symptoms WHERE name = '记忆力减退 / 反应慢'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('性格改变（变怪、行为异常）', '性格改变（变怪、行为异常）_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('情感淡漠', (SELECT id FROM symptoms WHERE name = '性格改变（变怪、行为异常）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('易怒', (SELECT id FROM symptoms WHERE name = '性格改变（变怪、行为异常）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('自私', (SELECT id FROM symptoms WHERE name = '性格改变（变怪、行为异常）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('猜疑', (SELECT id FROM symptoms WHERE name = '性格改变（变怪、行为异常）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('退缩', (SELECT id FROM symptoms WHERE name = '性格改变（变怪、行为异常）'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('怕光怕吵 / 畏光畏声', '怕光怕吵_/_畏光畏声_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('搏动性头痛', (SELECT id FROM symptoms WHERE name = '怕光怕吵 / 畏光畏声'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('恶心', (SELECT id FROM symptoms WHERE name = '怕光怕吵 / 畏光畏声'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('烦躁', (SELECT id FROM symptoms WHERE name = '怕光怕吵 / 畏光畏声'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('麻木（局部或全身）', '麻木（局部或全身）_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('针刺感', (SELECT id FROM symptoms WHERE name = '麻木（局部或全身）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('蚁走感', (SELECT id FROM symptoms WHERE name = '麻木（局部或全身）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肢体无力', (SELECT id FROM symptoms WHERE name = '麻木（局部或全身）'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('疼痛', (SELECT id FROM symptoms WHERE name = '麻木（局部或全身）'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('牙痛', '牙痛_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('牙龈红肿', (SELECT id FROM symptoms WHERE name = '牙痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('遇冷热加重', (SELECT id FROM symptoms WHERE name = '牙痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('夜间加剧', (SELECT id FROM symptoms WHERE name = '牙痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('面部放射性疼痛', '面部放射性疼痛_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('电击样剧痛（洗脸', (SELECT id FROM symptoms WHERE name = '面部放射性疼痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('吃饭', (SELECT id FROM symptoms WHERE name = '面部放射性疼痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('说话可诱发），每次数秒至2分钟', (SELECT id FROM symptoms WHERE name = '面部放射性疼痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('面部麻木', '面部麻木_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('单侧面部感觉减退', (SELECT id FROM symptoms WHERE name = '面部麻木'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('刺痛或消失', (SELECT id FROM symptoms WHERE name = '面部麻木'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('面部肿胀', '面部肿胀_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('面部局部或整体肿胀', (SELECT id FROM symptoms WHERE name = '面部肿胀'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发红', (SELECT id FROM symptoms WHERE name = '面部肿胀'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('疼痛', (SELECT id FROM symptoms WHERE name = '面部肿胀'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('眼部疼痛', '眼部疼痛_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('眼球疼痛', (SELECT id FROM symptoms WHERE name = '眼部疼痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('眼眶疼痛', (SELECT id FROM symptoms WHERE name = '眼部疼痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('视力下降', (SELECT id FROM symptoms WHERE name = '眼部疼痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('耳鸣', '耳鸣_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('耳内嗡嗡声', (SELECT id FROM symptoms WHERE name = '耳鸣'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('蝉鸣声或其他异常声音', (SELECT id FROM symptoms WHERE name = '耳鸣'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('鼻塞', '鼻塞_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('鼻腔堵塞', (SELECT id FROM symptoms WHERE name = '鼻塞'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('流鼻涕', (SELECT id FROM symptoms WHERE name = '鼻塞'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('打喷嚏', (SELECT id FROM symptoms WHERE name = '鼻塞'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('咽痛', '咽痛_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('咽部疼痛', (SELECT id FROM symptoms WHERE name = '咽痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('干燥', (SELECT id FROM symptoms WHERE name = '咽痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('异物感', (SELECT id FROM symptoms WHERE name = '咽痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('口臭', '口臭_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('口腔异味', (SELECT id FROM symptoms WHERE name = '口臭'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('口干', (SELECT id FROM symptoms WHERE name = '口臭'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('舌苔厚', (SELECT id FROM symptoms WHERE name = '口臭'), 'active');

-- 腿部位症状

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('疼痛​', '疼痛​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('疼痛​', '疼痛​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('局部红肿', (SELECT id FROM symptoms WHERE name = '疼痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发热', (SELECT id FROM symptoms WHERE name = '疼痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('活动时加剧', (SELECT id FROM symptoms WHERE name = '疼痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('夜间痛', (SELECT id FROM symptoms WHERE name = '疼痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('放射性疼痛。', (SELECT id FROM symptoms WHERE name = '疼痛​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('麻木​', '麻木​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('麻木​', '麻木​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('针刺感', (SELECT id FROM symptoms WHERE name = '麻木​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('蚁行感', (SELECT id FROM symptoms WHERE name = '麻木​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发凉', (SELECT id FROM symptoms WHERE name = '麻木​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('无力', (SELECT id FROM symptoms WHERE name = '麻木​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('感觉减退。', (SELECT id FROM symptoms WHERE name = '麻木​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肿胀​', '肿胀​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肿胀​', '肿胀​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('皮肤紧绷', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发亮', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发红', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('皮温升高', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('按压凹陷。', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('无力​', '无力​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('无力​', '无力​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('走路不稳', (SELECT id FROM symptoms WHERE name = '无力​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('易跌倒', (SELECT id FROM symptoms WHERE name = '无力​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('上下楼梯困难', (SELECT id FROM symptoms WHERE name = '无力​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肌肉颤动。', (SELECT id FROM symptoms WHERE name = '无力​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节肿痛​', '关节肿痛​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节肿痛​', '关节肿痛​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节红', (SELECT id FROM symptoms WHERE name = '关节肿痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肿', (SELECT id FROM symptoms WHERE name = '关节肿痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('热', (SELECT id FROM symptoms WHERE name = '关节肿痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('痛，活动受限，晨僵。', (SELECT id FROM symptoms WHERE name = '关节肿痛​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节强直​', '关节强直​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节强直​', '关节强直​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节僵硬固定在某一位置，无法活动，可伴畸形。', (SELECT id FROM symptoms WHERE name = '关节强直​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('屈伸不利​', '屈伸不利​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('屈伸不利​', '屈伸不利​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节活动范围减小，伴有疼痛或僵硬感。', (SELECT id FROM symptoms WHERE name = '屈伸不利​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌痛​', '肌痛​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌痛​', '肌痛​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肌肉广泛酸痛', (SELECT id FROM symptoms WHERE name = '肌痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('压痛', (SELECT id FROM symptoms WHERE name = '肌痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('乏力，可能伴低热。', (SELECT id FROM symptoms WHERE name = '肌痛​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('压痛​', '压痛​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('压痛​', '压痛​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('按压特定点出现剧痛，局部可能肿胀。', (SELECT id FROM symptoms WHERE name = '压痛​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('创伤​', '创伤​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('创伤​', '创伤​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('伤口', (SELECT id FROM symptoms WHERE name = '创伤​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('出血', (SELECT id FROM symptoms WHERE name = '创伤​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('瘀青', (SELECT id FROM symptoms WHERE name = '创伤​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('畸形', (SELECT id FROM symptoms WHERE name = '创伤​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('活动障碍。', (SELECT id FROM symptoms WHERE name = '创伤​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('抽筋​', '抽筋​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('抽筋​', '抽筋​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肌肉突发痉挛', (SELECT id FROM symptoms WHERE name = '抽筋​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('剧痛', (SELECT id FROM symptoms WHERE name = '抽筋​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发硬，持续数秒至数分钟。', (SELECT id FROM symptoms WHERE name = '抽筋​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌肉萎缩​', '肌肉萎缩​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌肉萎缩​', '肌肉萎缩​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肌肉体积明显缩小，皮肤松弛，肌力下降。', (SELECT id FROM symptoms WHERE name = '肌肉萎缩​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('感觉障碍​', '感觉障碍​_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('感觉障碍​', '感觉障碍​_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('灼热感', (SELECT id FROM symptoms WHERE name = '感觉障碍​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('过电感', (SELECT id FROM symptoms WHERE name = '感觉障碍​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('冰冷感', (SELECT id FROM symptoms WHERE name = '感觉障碍​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('袜套样感觉缺失。', (SELECT id FROM symptoms WHERE name = '感觉障碍​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('间歇性跛行', '间歇性跛行_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('间歇性跛行', '间歇性跛行_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('行走一段距离后出现腿痛', (SELECT id FROM symptoms WHERE name = '间歇性跛行'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('无力，休息后缓解', (SELECT id FROM symptoms WHERE name = '间歇性跛行'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('静脉曲张', '静脉曲张_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('静脉曲张', '静脉曲张_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部静脉扩张', (SELECT id FROM symptoms WHERE name = '静脉曲张'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('迂曲，可伴肿胀', (SELECT id FROM symptoms WHERE name = '静脉曲张'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('疼痛', (SELECT id FROM symptoms WHERE name = '静脉曲张'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('皮肤色素沉着', (SELECT id FROM symptoms WHERE name = '静脉曲张'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部发凉', '腿部发凉_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部发凉', '腿部发凉_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部温度明显低于其他部位，可伴苍白或发紫', (SELECT id FROM symptoms WHERE name = '腿部发凉'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部发热', '腿部发热_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部发热', '腿部发热_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部皮肤温度升高，可伴红肿', (SELECT id FROM symptoms WHERE name = '腿部发热'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('疼痛', (SELECT id FROM symptoms WHERE name = '腿部发热'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部皮疹', '腿部皮疹_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部皮疹', '腿部皮疹_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部皮肤出现红斑', (SELECT id FROM symptoms WHERE name = '腿部皮疹'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('丘疹', (SELECT id FROM symptoms WHERE name = '腿部皮疹'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('水疱等，可伴瘙痒', (SELECT id FROM symptoms WHERE name = '腿部皮疹'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('疼痛', (SELECT id FROM symptoms WHERE name = '腿部皮疹'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部溃疡', '腿部溃疡_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部溃疡', '腿部溃疡_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部皮肤出现溃疡，不易愈合，可伴感染', (SELECT id FROM symptoms WHERE name = '腿部溃疡'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('渗液', (SELECT id FROM symptoms WHERE name = '腿部溃疡'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部肌肉痉挛', '腿部肌肉痉挛_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部肌肉痉挛', '腿部肌肉痉挛_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部肌肉突发强直性收缩，疼痛剧烈，持续数秒至数分钟', (SELECT id FROM symptoms WHERE name = '腿部肌肉痉挛'), 'active');

-- 胸部位症状

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸痛​', '胸痛​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸闷', (SELECT id FROM symptoms WHERE name = '胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('压迫感', (SELECT id FROM symptoms WHERE name = '胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('刺痛', (SELECT id FROM symptoms WHERE name = '胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('钝痛', (SELECT id FROM symptoms WHERE name = '胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('放射性疼痛（至左肩', (SELECT id FROM symptoms WHERE name = '胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('后背', (SELECT id FROM symptoms WHERE name = '胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手臂', (SELECT id FROM symptoms WHERE name = '胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('下颌），可伴心慌', (SELECT id FROM symptoms WHERE name = '胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('气短。', (SELECT id FROM symptoms WHERE name = '胸痛​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('突发胸痛胸闷​', '突发胸痛胸闷​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('突发剧烈胸痛', (SELECT id FROM symptoms WHERE name = '突发胸痛胸闷​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸闷', (SELECT id FROM symptoms WHERE name = '突发胸痛胸闷​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('呼吸困难', (SELECT id FROM symptoms WHERE name = '突发胸痛胸闷​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('大汗淋漓', (SELECT id FROM symptoms WHERE name = '突发胸痛胸闷​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('濒死感', (SELECT id FROM symptoms WHERE name = '突发胸痛胸闷​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('恶心', (SELECT id FROM symptoms WHERE name = '突发胸痛胸闷​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('晕厥。', (SELECT id FROM symptoms WHERE name = '突发胸痛胸闷​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸痛伴呼吸受限​', '胸痛伴呼吸受限​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸痛，深呼吸', (SELECT id FROM symptoms WHERE name = '胸痛伴呼吸受限​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('咳嗽时加剧，感觉“气吸不进来”，或有窒息感。', (SELECT id FROM symptoms WHERE name = '胸痛伴呼吸受限​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸闷伴呼吸受阻​', '胸闷伴呼吸受阻​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('持续性胸闷，感觉空气不足，呼吸费力，但疼痛不明显。', (SELECT id FROM symptoms WHERE name = '胸闷伴呼吸受阻​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('运动后胸痛​', '运动后胸痛​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('运动', (SELECT id FROM symptoms WHERE name = '运动后胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('快走', (SELECT id FROM symptoms WHERE name = '运动后胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('上楼', (SELECT id FROM symptoms WHERE name = '运动后胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('情绪激动时诱发胸痛，休息数分钟可缓解。', (SELECT id FROM symptoms WHERE name = '运动后胸痛​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('撕裂性胸痛​', '撕裂性胸痛​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸部', (SELECT id FROM symptoms WHERE name = '撕裂性胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('背部突发剧烈的', (SELECT id FROM symptoms WHERE name = '撕裂性胸痛​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('撕裂样或刀割样剧痛，疼痛位置可移动。', (SELECT id FROM symptoms WHERE name = '撕裂性胸痛​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('心悸​', '心悸​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('感觉心跳过快', (SELECT id FROM symptoms WHERE name = '心悸​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('过慢', (SELECT id FROM symptoms WHERE name = '心悸​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('沉重或不规律（心慌），可伴头晕', (SELECT id FROM symptoms WHERE name = '心悸​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸闷', (SELECT id FROM symptoms WHERE name = '心悸​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('乏力。', (SELECT id FROM symptoms WHERE name = '心悸​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('气短​', '气短​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('轻微活动或静息时即感呼吸急促', (SELECT id FROM symptoms WHERE name = '气短​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('气不够用，常需加深加快呼吸。', (SELECT id FROM symptoms WHERE name = '气短​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('咳嗽​', '咳嗽​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('干咳或咳痰（白痰', (SELECT id FROM symptoms WHERE name = '咳嗽​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('黄痰），可伴咽痒', (SELECT id FROM symptoms WHERE name = '咳嗽​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸痛', (SELECT id FROM symptoms WHERE name = '咳嗽​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发热。', (SELECT id FROM symptoms WHERE name = '咳嗽​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('咯血​', '咯血​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('痰中带血丝或咳出鲜血，可伴咳嗽', (SELECT id FROM symptoms WHERE name = '咯血​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸痛', (SELECT id FROM symptoms WHERE name = '咯血​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发热', (SELECT id FROM symptoms WHERE name = '咯血​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('盗汗。', (SELECT id FROM symptoms WHERE name = '咯血​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸闷/打嗝，反流​', '胸闷/打嗝，反流​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸闷', (SELECT id FROM symptoms WHERE name = '胸闷/打嗝，反流​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('烧心', (SELECT id FROM symptoms WHERE name = '胸闷/打嗝，反流​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('反酸', (SELECT id FROM symptoms WHERE name = '胸闷/打嗝，反流​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('嗳气（打嗝），饭后或平躺时加重。', (SELECT id FROM symptoms WHERE name = '胸闷/打嗝，反流​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('吞咽困难​', '吞咽困难​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('吞咽食物或饮水时有梗阻感', (SELECT id FROM symptoms WHERE name = '吞咽困难​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('疼痛', (SELECT id FROM symptoms WHERE name = '吞咽困难​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('停滞感，需多次吞咽。', (SELECT id FROM symptoms WHERE name = '吞咽困难​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('出血​', '出血​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('不明原因的皮肤瘀斑', (SELECT id FROM symptoms WHERE name = '出血​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('牙龈出血', (SELECT id FROM symptoms WHERE name = '出血​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('鼻出血，或伴有发热', (SELECT id FROM symptoms WHERE name = '出血​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('乏力。', (SELECT id FROM symptoms WHERE name = '出血​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('怕热、爱出汗​', '怕热、爱出汗​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('异常怕热，安静时也大量出汗，可伴心慌', (SELECT id FROM symptoms WHERE name = '怕热、爱出汗​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手抖', (SELECT id FROM symptoms WHERE name = '怕热、爱出汗​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('体重减轻', (SELECT id FROM symptoms WHERE name = '怕热、爱出汗​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('情绪急躁。', (SELECT id FROM symptoms WHERE name = '怕热、爱出汗​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('声音嘶哑​', '声音嘶哑​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('声音变得沙哑', (SELECT id FROM symptoms WHERE name = '声音嘶哑​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('低沉，持续时间长，可伴咽痛', (SELECT id FROM symptoms WHERE name = '声音嘶哑​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('咳嗽', (SELECT id FROM symptoms WHERE name = '声音嘶哑​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('饮水呛咳。', (SELECT id FROM symptoms WHERE name = '声音嘶哑​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肿胀​', '肿胀​_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('脖子前方喉结下部弥漫性或结节性肿大，可伴心慌', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('多食', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('消瘦或畏寒', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('乏力。', (SELECT id FROM symptoms WHERE name = '肿胀​'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸部肿块', '胸部肿块_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸部出现肿块', (SELECT id FROM symptoms WHERE name = '胸部肿块'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('硬结，可伴疼痛', (SELECT id FROM symptoms WHERE name = '胸部肿块'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('乳头溢液', (SELECT id FROM symptoms WHERE name = '胸部肿块'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('乳房疼痛', '乳房疼痛_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('乳房胀痛', (SELECT id FROM symptoms WHERE name = '乳房疼痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('刺痛，可随月经周期变化', (SELECT id FROM symptoms WHERE name = '乳房疼痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('乳头溢液', '乳头溢液_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('乳头自发或挤压后流出液体，可为血性', (SELECT id FROM symptoms WHERE name = '乳头溢液'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('脓性或清水样', (SELECT id FROM symptoms WHERE name = '乳头溢液'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸闷伴焦虑', '胸闷伴焦虑_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸闷', (SELECT id FROM symptoms WHERE name = '胸闷伴焦虑'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('气短', (SELECT id FROM symptoms WHERE name = '胸闷伴焦虑'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('心悸，可伴紧张', (SELECT id FROM symptoms WHERE name = '胸闷伴焦虑'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('恐惧', (SELECT id FROM symptoms WHERE name = '胸闷伴焦虑'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('失眠', (SELECT id FROM symptoms WHERE name = '胸闷伴焦虑'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸部皮肤异常', '胸部皮肤异常_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸部皮肤出现皮疹', (SELECT id FROM symptoms WHERE name = '胸部皮肤异常'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('红肿', (SELECT id FROM symptoms WHERE name = '胸部皮肤异常'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('溃疡或橘皮样改变', (SELECT id FROM symptoms WHERE name = '胸部皮肤异常'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('纵隔肿瘤', '纵隔肿瘤_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸痛', (SELECT id FROM symptoms WHERE name = '纵隔肿瘤'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('咳嗽', (SELECT id FROM symptoms WHERE name = '纵隔肿瘤'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('呼吸困难', (SELECT id FROM symptoms WHERE name = '纵隔肿瘤'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('吞咽困难', (SELECT id FROM symptoms WHERE name = '纵隔肿瘤'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸腔积液', '胸腔积液_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸闷', (SELECT id FROM symptoms WHERE name = '胸腔积液'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('气短', (SELECT id FROM symptoms WHERE name = '胸腔积液'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('呼吸困难，可伴胸痛', (SELECT id FROM symptoms WHERE name = '胸腔积液'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发热', (SELECT id FROM symptoms WHERE name = '胸腔积液'), 'active');

-- 腹部位症状

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹痛', '腹痛_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部疼痛，可为绞痛', (SELECT id FROM symptoms WHERE name = '腹痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('钝痛', (SELECT id FROM symptoms WHERE name = '腹痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('刺痛，可伴恶心', (SELECT id FROM symptoms WHERE name = '腹痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('呕吐', (SELECT id FROM symptoms WHERE name = '腹痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹泻', (SELECT id FROM symptoms WHERE name = '腹痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹胀', '腹胀_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部胀满', (SELECT id FROM symptoms WHERE name = '腹胀'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('不适，可伴嗳气', (SELECT id FROM symptoms WHERE name = '腹胀'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('排气增多', (SELECT id FROM symptoms WHERE name = '腹胀'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('恶心', '恶心_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('上腹部不适，想呕吐，可伴头晕', (SELECT id FROM symptoms WHERE name = '恶心'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('出汗', (SELECT id FROM symptoms WHERE name = '恶心'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('呕吐', '呕吐_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胃内容物经口腔排出，可伴恶心', (SELECT id FROM symptoms WHERE name = '呕吐'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹痛', (SELECT id FROM symptoms WHERE name = '呕吐'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹泻', '腹泻_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('大便次数增多，大便稀薄，可伴腹痛', (SELECT id FROM symptoms WHERE name = '腹泻'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('发热', (SELECT id FROM symptoms WHERE name = '腹泻'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('便秘', '便秘_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('大便次数减少，大便干结，排便困难', (SELECT id FROM symptoms WHERE name = '便秘'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('便血', '便血_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('大便中带血，可为鲜红色', (SELECT id FROM symptoms WHERE name = '便血'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('暗红色或黑色', (SELECT id FROM symptoms WHERE name = '便血'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部肿块', '腹部肿块_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部可触及肿块，可伴疼痛', (SELECT id FROM symptoms WHERE name = '腹部肿块'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹胀', (SELECT id FROM symptoms WHERE name = '腹部肿块'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('黄疸', '黄疸_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('皮肤', (SELECT id FROM symptoms WHERE name = '黄疸'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('巩膜发黄，可伴尿色加深', (SELECT id FROM symptoms WHERE name = '黄疸'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('大便颜色变浅', (SELECT id FROM symptoms WHERE name = '黄疸'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹水', '腹水_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部膨隆，移动性浊音阳性，可伴腹胀', (SELECT id FROM symptoms WHERE name = '腹水'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('呼吸困难', (SELECT id FROM symptoms WHERE name = '腹水'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肠鸣音异常', '肠鸣音异常_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肠鸣音亢进', (SELECT id FROM symptoms WHERE name = '肠鸣音异常'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('减弱或消失', (SELECT id FROM symptoms WHERE name = '肠鸣音异常'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部压痛', '腹部压痛_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('按压腹部时出现疼痛，可伴反跳痛', (SELECT id FROM symptoms WHERE name = '腹部压痛'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肌紧张', (SELECT id FROM symptoms WHERE name = '腹部压痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部发热', '腹部发热_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部皮肤温度升高，可伴红肿', (SELECT id FROM symptoms WHERE name = '腹部发热'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('疼痛', (SELECT id FROM symptoms WHERE name = '腹部发热'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部皮肤异常', '腹部皮肤异常_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部皮肤出现皮疹', (SELECT id FROM symptoms WHERE name = '腹部皮肤异常'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('色素沉着', (SELECT id FROM symptoms WHERE name = '腹部皮肤异常'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('静脉曲张', (SELECT id FROM symptoms WHERE name = '腹部皮肤异常'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹股沟疝', '腹股沟疝_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹股沟区出现肿块，站立或用力时突出，平卧时可回纳', (SELECT id FROM symptoms WHERE name = '腹股沟疝'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('脐疝', '脐疝_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('脐部出现肿块，站立或用力时突出，平卧时可回纳', (SELECT id FROM symptoms WHERE name = '脐疝'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部外伤', '腹部外伤_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部受到外力撞击，可伴腹痛', (SELECT id FROM symptoms WHERE name = '腹部外伤'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('出血', (SELECT id FROM symptoms WHERE name = '腹部外伤'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('休克', (SELECT id FROM symptoms WHERE name = '腹部外伤'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部手术后并发症', '腹部手术后并发症_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部手术后出现发热', (SELECT id FROM symptoms WHERE name = '腹部手术后并发症'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹痛', (SELECT id FROM symptoms WHERE name = '腹部手术后并发症'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹胀', (SELECT id FROM symptoms WHERE name = '腹部手术后并发症'), 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('切口红肿', (SELECT id FROM symptoms WHERE name = '腹部手术后并发症'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部痉挛', '腹部痉挛_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部肌肉突发强直性收缩，疼痛剧烈，持续数秒至数分钟', (SELECT id FROM symptoms WHERE name = '腹部痉挛'), 'active');

