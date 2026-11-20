-- 症状和伴随症状数据

-- 手部位症状

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('疼痛', 'symptom_0_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('疼痛', 'symptom_0_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('左臂任何部位的酸痛胀痛刺痛等不适感', (SELECT id FROM symptoms WHERE name = '疼痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('麻木', 'symptom_1_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('麻木', 'symptom_1_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('左臂感觉减退发木或像有小电流通过的刺痛感', (SELECT id FROM symptoms WHERE name = '麻木'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肿胀', 'symptom_2_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肿胀', 'symptom_2_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('左臂局部或整体肿胀发红皮温升高', (SELECT id FROM symptoms WHERE name = '肿胀'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('无力', 'symptom_3_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('无力', 'symptom_3_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('左臂力量明显下降持物抬举困难', (SELECT id FROM symptoms WHERE name = '无力'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('震颤', 'symptom_4_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('震颤', 'symptom_4_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手臂不自主有节律地抖动', (SELECT id FROM symptoms WHERE name = '震颤'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节肿痛', 'symptom_5_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节肿痛', 'symptom_5_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肘腕肩等关节的红肿热痛', (SELECT id FROM symptoms WHERE name = '关节肿痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节强直', 'symptom_6_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节强直', 'symptom_6_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节僵硬活动不灵活', (SELECT id FROM symptoms WHERE name = '关节强直'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('屈伸不利', 'symptom_7_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('屈伸不利', 'symptom_7_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节活动范围受限无法完全弯曲或伸直', (SELECT id FROM symptoms WHERE name = '屈伸不利'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌痛', 'symptom_8_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌痛', 'symptom_8_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肌肉酸痛通常与活动或劳损相关', (SELECT id FROM symptoms WHERE name = '肌痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('压痛', 'symptom_9_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('压痛', 'symptom_9_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('按压特定部位时出现的疼痛', (SELECT id FROM symptoms WHERE name = '压痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('损伤', 'symptom_10_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('损伤', 'symptom_10_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('明确的外伤史如扭伤拉伤撞击', (SELECT id FROM symptoms WHERE name = '损伤'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('感觉障碍', 'symptom_11_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('感觉障碍', 'symptom_11_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('感觉异常如灼热感蚁行感过电感等', (SELECT id FROM symptoms WHERE name = '感觉障碍'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节弹响', 'symptom_13_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节弹响', 'symptom_13_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节活动时出现咔嗒声或弹响可伴疼痛或卡顿感', (SELECT id FROM symptoms WHERE name = '关节弹响'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('皮肤变色', 'symptom_14_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('皮肤变色', 'symptom_14_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部皮肤发红发紫苍白或出现异常斑点', (SELECT id FROM symptoms WHERE name = '皮肤变色'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部发凉', 'symptom_15_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部发凉', 'symptom_15_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部温度明显低于其他部位可伴苍白或发紫', (SELECT id FROM symptoms WHERE name = '手部发凉'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手指畸形', 'symptom_16_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手指畸形', 'symptom_16_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手指关节变形弯曲或肿胀影响正常功能', (SELECT id FROM symptoms WHERE name = '手指畸形'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('扳机指', 'symptom_17_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('扳机指', 'symptom_17_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手指弯曲后无法自行伸直需要外力帮助可伴疼痛', (SELECT id FROM symptoms WHERE name = '扳机指'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腕管综合征', 'symptom_18_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腕管综合征', 'symptom_18_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手腕部疼痛麻木向手指放射夜间加重', (SELECT id FROM symptoms WHERE name = '腕管综合征'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手指麻木', 'symptom_19_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手指麻木', 'symptom_19_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('单个或多个手指麻木刺痛可伴无力', (SELECT id FROM symptoms WHERE name = '手指麻木'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部多汗', 'symptom_20_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部多汗', 'symptom_20_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部异常多汗可伴潮湿发凉', (SELECT id FROM symptoms WHERE name = '手部多汗'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部感染', 'symptom_21_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部感染', 'symptom_21_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部皮肤红肿疼痛化脓可伴发热', (SELECT id FROM symptoms WHERE name = '手部感染'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部肿瘤', 'symptom_22_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部肿瘤', 'symptom_22_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部出现肿块硬结生长缓慢或迅速', (SELECT id FROM symptoms WHERE name = '手部肿瘤'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部冻伤', 'symptom_23_left-hand', (SELECT id FROM body_parts WHERE code = 'left-hand'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('手部冻伤', 'symptom_23_right-hand', (SELECT id FROM body_parts WHERE code = 'right-hand'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('手部皮肤苍白麻木疼痛严重时出现水疱或坏死', (SELECT id FROM symptoms WHERE name = '手部冻伤'), 'active');

-- 头部位症状

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('头痛', 'symptom_0_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('恶心呕吐畏光畏声头晕颈肩僵硬', (SELECT id FROM symptoms WHERE name = '头痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('剧烈头痛非外伤', 'symptom_1_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('喷射性呕吐颈部僵硬意识模糊肢体麻木', (SELECT id FROM symptoms WHERE name = '剧烈头痛非外伤'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('外伤后剧烈头痛伴呕吐神志不清', 'symptom_2_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('头皮血肿嗜睡抽搐瞳孔不等大', (SELECT id FROM symptoms WHERE name = '外伤后剧烈头痛伴呕吐神志不清'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('头晕', 'symptom_3_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('视物旋转耳鸣听力下降恶心走路不稳出冷汗', (SELECT id FROM symptoms WHERE name = '头晕'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('发热', 'symptom_4_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('畏寒寒战头痛肌肉酸痛咳嗽咽痛乏力', (SELECT id FROM symptoms WHERE name = '发热'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('失眠', 'symptom_6_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('多梦易醒醒后难入睡白天困倦焦虑心慌', (SELECT id FROM symptoms WHERE name = '失眠'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('疲劳 / 无力', '___head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('极度疲倦虚弱活动后加重面色苍白消瘦', (SELECT id FROM symptoms WHERE name = '疲劳 / 无力'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('惊厥', 'symptom_8_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('意识丧失牙关紧闭口吐白沫四肢强直阵挛大小便失禁', (SELECT id FROM symptoms WHERE name = '惊厥'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('木僵 / 精神活动迟钝', '___head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('不语不动拒食违拗蜡样屈曲呆滞', (SELECT id FROM symptoms WHERE name = '木僵 / 精神活动迟钝'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('神志不清', 'symptom_11_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胡言乱语抽搐高热瞳孔散大大小便失禁呕吐', (SELECT id FROM symptoms WHERE name = '神志不清'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('呕吐', 'symptom_12_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('恶心腹痛腹泻警惕喷射性呕吐剧烈头痛', (SELECT id FROM symptoms WHERE name = '呕吐'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('视力问题模糊重影', 'symptom_13_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('眼痛闪光感视野缺损飞蚊症', (SELECT id FROM symptoms WHERE name = '视力问题模糊重影'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('记忆力减退 / 反应慢', '___head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('丢三落四学习困难性格改变生活能力下降', (SELECT id FROM symptoms WHERE name = '记忆力减退 / 反应慢'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('性格改变变怪行为异常', 'symptom_15_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('情感淡漠易怒自私猜疑退缩', (SELECT id FROM symptoms WHERE name = '性格改变变怪行为异常'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('怕光怕吵 / 畏光畏声', '___head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('搏动性头痛恶心烦躁', (SELECT id FROM symptoms WHERE name = '怕光怕吵 / 畏光畏声'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('麻木局部或全身', 'symptom_18_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('针刺感蚁走感肢体无力疼痛', (SELECT id FROM symptoms WHERE name = '麻木局部或全身'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('牙痛', 'symptom_19_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('牙龈红肿遇冷热加重夜间加剧', (SELECT id FROM symptoms WHERE name = '牙痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('面部放射性疼痛', 'symptom_20_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('电击样剧痛洗脸吃饭说话可诱发每次数秒至2分钟', (SELECT id FROM symptoms WHERE name = '面部放射性疼痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('面部麻木', 'symptom_22_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('单侧面部感觉减退刺痛或消失', (SELECT id FROM symptoms WHERE name = '面部麻木'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('面部肿胀', 'symptom_23_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('面部局部或整体肿胀发红疼痛', (SELECT id FROM symptoms WHERE name = '面部肿胀'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('眼部疼痛', 'symptom_24_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('眼球疼痛眼眶疼痛视力下降', (SELECT id FROM symptoms WHERE name = '眼部疼痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('耳鸣', 'symptom_25_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('耳内嗡嗡声蝉鸣声或其他异常声音', (SELECT id FROM symptoms WHERE name = '耳鸣'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('鼻塞', 'symptom_26_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('鼻腔堵塞流鼻涕打喷嚏', (SELECT id FROM symptoms WHERE name = '鼻塞'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('咽痛', 'symptom_27_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('咽部疼痛干燥异物感', (SELECT id FROM symptoms WHERE name = '咽痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('口臭', 'symptom_28_head', (SELECT id FROM body_parts WHERE code = 'head'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('口腔异味口干舌苔厚', (SELECT id FROM symptoms WHERE name = '口臭'), 'active');

-- 腿部位症状

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('疼痛', 'symptom_0_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('疼痛', 'symptom_0_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('局部红肿发热活动时加剧夜间痛放射性疼痛', (SELECT id FROM symptoms WHERE name = '疼痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('麻木', 'symptom_1_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('麻木', 'symptom_1_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('针刺感蚁行感发凉无力感觉减退', (SELECT id FROM symptoms WHERE name = '麻木'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肿胀', 'symptom_2_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肿胀', 'symptom_2_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('皮肤紧绷发亮发红皮温升高按压凹陷', (SELECT id FROM symptoms WHERE name = '肿胀'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('无力', 'symptom_3_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('无力', 'symptom_3_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('走路不稳易跌倒上下楼梯困难肌肉颤动', (SELECT id FROM symptoms WHERE name = '无力'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节肿痛', 'symptom_4_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节肿痛', 'symptom_4_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节红肿热痛活动受限晨僵', (SELECT id FROM symptoms WHERE name = '关节肿痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节强直', 'symptom_5_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('关节强直', 'symptom_5_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节僵硬固定在某一位置无法活动可伴畸形', (SELECT id FROM symptoms WHERE name = '关节强直'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('屈伸不利', 'symptom_6_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('屈伸不利', 'symptom_6_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('关节活动范围减小伴有疼痛或僵硬感', (SELECT id FROM symptoms WHERE name = '屈伸不利'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌痛', 'symptom_7_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌痛', 'symptom_7_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肌肉广泛酸痛压痛乏力可能伴低热', (SELECT id FROM symptoms WHERE name = '肌痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('压痛', 'symptom_8_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('压痛', 'symptom_8_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('按压特定点出现剧痛局部可能肿胀', (SELECT id FROM symptoms WHERE name = '压痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('创伤', 'symptom_9_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('创伤', 'symptom_9_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('伤口出血瘀青畸形活动障碍', (SELECT id FROM symptoms WHERE name = '创伤'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('抽筋', 'symptom_10_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('抽筋', 'symptom_10_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肌肉突发痉挛剧痛发硬持续数秒至数分钟', (SELECT id FROM symptoms WHERE name = '抽筋'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌肉萎缩', 'symptom_11_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肌肉萎缩', 'symptom_11_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肌肉体积明显缩小皮肤松弛肌力下降', (SELECT id FROM symptoms WHERE name = '肌肉萎缩'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('感觉障碍', 'symptom_12_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('感觉障碍', 'symptom_12_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('灼热感过电感冰冷感袜套样感觉缺失', (SELECT id FROM symptoms WHERE name = '感觉障碍'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('间歇性跛行', 'symptom_14_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('间歇性跛行', 'symptom_14_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('行走一段距离后出现腿痛无力休息后缓解', (SELECT id FROM symptoms WHERE name = '间歇性跛行'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('静脉曲张', 'symptom_15_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('静脉曲张', 'symptom_15_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部静脉扩张迂曲可伴肿胀疼痛皮肤色素沉着', (SELECT id FROM symptoms WHERE name = '静脉曲张'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部发凉', 'symptom_16_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部发凉', 'symptom_16_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部温度明显低于其他部位可伴苍白或发紫', (SELECT id FROM symptoms WHERE name = '腿部发凉'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部发热', 'symptom_17_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部发热', 'symptom_17_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部皮肤温度升高可伴红肿疼痛', (SELECT id FROM symptoms WHERE name = '腿部发热'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部皮疹', 'symptom_18_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部皮疹', 'symptom_18_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部皮肤出现红斑丘疹水疱等可伴瘙痒疼痛', (SELECT id FROM symptoms WHERE name = '腿部皮疹'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部溃疡', 'symptom_19_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部溃疡', 'symptom_19_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部皮肤出现溃疡不易愈合可伴感染渗液', (SELECT id FROM symptoms WHERE name = '腿部溃疡'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部肌肉痉挛', 'symptom_20_left-leg', (SELECT id FROM body_parts WHERE code = 'left-leg'), 'moderate', 'active');
INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腿部肌肉痉挛', 'symptom_20_right-leg', (SELECT id FROM body_parts WHERE code = 'right-leg'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腿部肌肉突发强直性收缩疼痛剧烈持续数秒至数分钟', (SELECT id FROM symptoms WHERE name = '腿部肌肉痉挛'), 'active');

-- 胸部位症状

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸痛', 'symptom_0_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸闷压迫感刺痛钝痛放射性疼痛至左肩后背手臂下颌可伴心慌气短', (SELECT id FROM symptoms WHERE name = '胸痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('突发胸痛胸闷', 'symptom_1_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('突发剧烈胸痛胸闷呼吸困难大汗淋漓濒死感恶心晕厥', (SELECT id FROM symptoms WHERE name = '突发胸痛胸闷'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸痛伴呼吸受限', 'symptom_2_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸痛深呼吸咳嗽时加剧感觉气吸不进来或有窒息感', (SELECT id FROM symptoms WHERE name = '胸痛伴呼吸受限'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸闷伴呼吸受阻', 'symptom_3_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('持续性胸闷感觉空气不足呼吸费力但疼痛不明显', (SELECT id FROM symptoms WHERE name = '胸闷伴呼吸受阻'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('运动后胸痛', 'symptom_4_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('运动快走上楼情绪激动时诱发胸痛休息数分钟可缓解', (SELECT id FROM symptoms WHERE name = '运动后胸痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('撕裂性胸痛', 'symptom_5_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸部背部突发剧烈的撕裂样或刀割样剧痛疼痛位置可移动', (SELECT id FROM symptoms WHERE name = '撕裂性胸痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('心悸', 'symptom_6_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('感觉心跳过快过慢沉重或不规律心慌可伴头晕胸闷乏力', (SELECT id FROM symptoms WHERE name = '心悸'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('气短', 'symptom_7_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('轻微活动或静息时即感呼吸急促气不够用常需加深加快呼吸', (SELECT id FROM symptoms WHERE name = '气短'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('咳嗽', 'symptom_8_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('干咳或咳痰白痰黄痰可伴咽痒胸痛发热', (SELECT id FROM symptoms WHERE name = '咳嗽'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('咯血', 'symptom_9_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('痰中带血丝或咳出鲜血可伴咳嗽胸痛发热盗汗', (SELECT id FROM symptoms WHERE name = '咯血'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸闷/打嗝反流', 'symptom_10_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸闷烧心反酸嗳气打嗝饭后或平躺时加重', (SELECT id FROM symptoms WHERE name = '胸闷/打嗝反流'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('吞咽困难', 'symptom_11_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('吞咽食物或饮水时有梗阻感疼痛停滞感需多次吞咽', (SELECT id FROM symptoms WHERE name = '吞咽困难'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('出血', 'symptom_12_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('不明原因的皮肤瘀斑牙龈出血鼻出血或伴有发热乏力', (SELECT id FROM symptoms WHERE name = '出血'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('怕热爱出汗', 'symptom_13_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('异常怕热安静时也大量出汗可伴心慌手抖体重减轻情绪急躁', (SELECT id FROM symptoms WHERE name = '怕热爱出汗'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('声音嘶哑', 'symptom_14_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('声音变得沙哑低沉持续时间长可伴咽痛咳嗽饮水呛咳', (SELECT id FROM symptoms WHERE name = '声音嘶哑'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肿胀', 'symptom_15_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('脖子前方喉结下部弥漫性或结节性肿大可伴心慌多食消瘦或畏寒乏力', (SELECT id FROM symptoms WHERE name = '肿胀'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸部肿块', 'symptom_17_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸部出现肿块硬结可伴疼痛乳头溢液', (SELECT id FROM symptoms WHERE name = '胸部肿块'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('乳房疼痛', 'symptom_18_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('乳房胀痛刺痛可随月经周期变化', (SELECT id FROM symptoms WHERE name = '乳房疼痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('乳头溢液', 'symptom_19_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('乳头自发或挤压后流出液体可为血性脓性或清水样', (SELECT id FROM symptoms WHERE name = '乳头溢液'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸闷伴焦虑', 'symptom_20_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸闷气短心悸可伴紧张恐惧失眠', (SELECT id FROM symptoms WHERE name = '胸闷伴焦虑'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸部皮肤异常', 'symptom_21_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸部皮肤出现皮疹红肿溃疡或橘皮样改变', (SELECT id FROM symptoms WHERE name = '胸部皮肤异常'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('纵隔肿瘤', 'symptom_22_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸痛咳嗽呼吸困难吞咽困难', (SELECT id FROM symptoms WHERE name = '纵隔肿瘤'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('胸腔积液', 'symptom_23_chest', (SELECT id FROM body_parts WHERE code = 'chest'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胸闷气短呼吸困难可伴胸痛发热', (SELECT id FROM symptoms WHERE name = '胸腔积液'), 'active');

-- 腹部位症状

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹痛', 'symptom_0_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部疼痛可为绞痛钝痛刺痛可伴恶心呕吐腹泻', (SELECT id FROM symptoms WHERE name = '腹痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹胀', 'symptom_1_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部胀满不适可伴嗳气排气增多', (SELECT id FROM symptoms WHERE name = '腹胀'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('恶心', 'symptom_2_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('上腹部不适想呕吐可伴头晕出汗', (SELECT id FROM symptoms WHERE name = '恶心'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('呕吐', 'symptom_3_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('胃内容物经口腔排出可伴恶心腹痛', (SELECT id FROM symptoms WHERE name = '呕吐'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹泻', 'symptom_4_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('大便次数增多大便稀薄可伴腹痛发热', (SELECT id FROM symptoms WHERE name = '腹泻'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('便秘', 'symptom_5_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('大便次数减少大便干结排便困难', (SELECT id FROM symptoms WHERE name = '便秘'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('便血', 'symptom_6_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('大便中带血可为鲜红色暗红色或黑色', (SELECT id FROM symptoms WHERE name = '便血'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部肿块', 'symptom_7_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部可触及肿块可伴疼痛腹胀', (SELECT id FROM symptoms WHERE name = '腹部肿块'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('黄疸', 'symptom_8_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('皮肤巩膜发黄可伴尿色加深大便颜色变浅', (SELECT id FROM symptoms WHERE name = '黄疸'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹水', 'symptom_9_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部膨隆移动性浊音阳性可伴腹胀呼吸困难', (SELECT id FROM symptoms WHERE name = '腹水'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('肠鸣音异常', 'symptom_10_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('肠鸣音亢进减弱或消失', (SELECT id FROM symptoms WHERE name = '肠鸣音异常'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部压痛', 'symptom_11_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('按压腹部时出现疼痛可伴反跳痛肌紧张', (SELECT id FROM symptoms WHERE name = '腹部压痛'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部发热', 'symptom_12_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部皮肤温度升高可伴红肿疼痛', (SELECT id FROM symptoms WHERE name = '腹部发热'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部皮肤异常', 'symptom_13_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部皮肤出现皮疹色素沉着静脉曲张', (SELECT id FROM symptoms WHERE name = '腹部皮肤异常'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹股沟疝', 'symptom_14_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹股沟区出现肿块站立或用力时突出平卧时可回纳', (SELECT id FROM symptoms WHERE name = '腹股沟疝'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('脐疝', 'symptom_15_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('脐部出现肿块站立或用力时突出平卧时可回纳', (SELECT id FROM symptoms WHERE name = '脐疝'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部外伤', 'symptom_16_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部受到外力撞击可伴腹痛出血休克', (SELECT id FROM symptoms WHERE name = '腹部外伤'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部手术后并发症', 'symptom_17_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部手术后出现发热腹痛腹胀切口红肿', (SELECT id FROM symptoms WHERE name = '腹部手术后并发症'), 'active');

INSERT IGNORE INTO symptoms (name, code, body_part_id, severity, status) VALUES ('腹部痉挛', 'symptom_18_abdomen', (SELECT id FROM body_parts WHERE code = 'abdomen'), 'moderate', 'active');
INSERT IGNORE INTO companion_symptoms (name, symptom_id, status) VALUES ('腹部肌肉突发强直性收缩疼痛剧烈持续数秒至数分钟', (SELECT id FROM symptoms WHERE name = '腹部痉挛'), 'active');

