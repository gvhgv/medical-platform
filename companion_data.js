// 伴随症状数据
const companionData = {
  'abdomen-胸痛': [
    { id: 'abdomen-胸痛---', name: '胸闷', description: '伴随胸痛的胸闷' },
    { id: 'abdomen-胸痛----', name: '压迫感', description: '伴随胸痛的压迫感' },
    { id: 'abdomen-胸痛----------', name: '放射性疼痛（至左肩', description: '伴随胸痛的放射性疼痛（至左肩' },
    { id: 'abdomen-胸痛---', name: '背部', description: '伴随胸痛的背部' },
    { id: 'abdomen-胸痛-------', name: '下颌）；心慌', description: '伴随胸痛的下颌）；心慌' },
    { id: 'abdomen-胸痛----', name: '气短。', description: '伴随胸痛的气短。' }
  ],
  'abdomen-突发胸痛胸闷': [
    { id: 'abdomen-突发胸痛胸闷-------', name: '突发剧烈胸痛', description: '伴随突发胸痛胸闷的突发剧烈胸痛' },
    { id: 'abdomen-突发胸痛胸闷---', name: '胸闷', description: '伴随突发胸痛胸闷的胸闷' },
    { id: 'abdomen-突发胸痛胸闷-----', name: '呼吸困难', description: '伴随突发胸痛胸闷的呼吸困难' },
    { id: 'abdomen-突发胸痛胸闷-----', name: '大汗淋漓', description: '伴随突发胸痛胸闷的大汗淋漓' },
    { id: 'abdomen-突发胸痛胸闷----', name: '濒死感', description: '伴随突发胸痛胸闷的濒死感' },
    { id: 'abdomen-突发胸痛胸闷----', name: '晕厥。', description: '伴随突发胸痛胸闷的晕厥。' }
  ],
  'abdomen-胸痛伴呼吸受限': [
    { id: 'abdomen-胸痛伴呼吸受限---', name: '胸痛', description: '伴随胸痛伴呼吸受限的胸痛' },
    { id: 'abdomen-胸痛伴呼吸受限-----', name: '呼吸不畅', description: '伴随胸痛伴呼吸受限的呼吸不畅' },
    { id: 'abdomen-胸痛伴呼吸受限-------', name: '深呼吸时加重', description: '伴随胸痛伴呼吸受限的深呼吸时加重' },
    { id: 'abdomen-胸痛伴呼吸受限----', name: '咳嗽。', description: '伴随胸痛伴呼吸受限的咳嗽。' }
  ],
  'abdomen-运动后胸痛': [
    { id: 'abdomen-运动后胸痛---', name: '运动', description: '伴随运动后胸痛的运动' },
    { id: 'abdomen-运动后胸痛--------------------------', name: '劳累或情绪激动后出现胸痛，休息可缓解；伴呼吸困难。', description: '伴随运动后胸痛的劳累或情绪激动后出现胸痛，休息可缓解；伴呼吸困难。' }
  ],
  'abdomen-撕裂性胸痛': [
    { id: 'abdomen-撕裂性胸痛------', name: '胸部（前胸', description: '伴随撕裂性胸痛的胸部（前胸' },
    { id: 'abdomen-撕裂性胸痛--------------------------------', name: '后背）突发撕裂样剧痛，疼痛位置可移动；伴有血压异常升高或降低。', description: '伴随撕裂性胸痛的后背）突发撕裂样剧痛，疼痛位置可移动；伴有血压异常升高或降低。' }
  ],
  'abdomen-心悸': [
    { id: 'abdomen-心悸-------', name: '自觉心跳过快', description: '伴随心悸的自觉心跳过快' },
    { id: 'abdomen-心悸----------------', name: '过慢或不规则（心慌）；可伴头晕', description: '伴随心悸的过慢或不规则（心慌）；可伴头晕' },
    { id: 'abdomen-心悸---', name: '胸闷', description: '伴随心悸的胸闷' },
    { id: 'abdomen-心悸----', name: '乏力。', description: '伴随心悸的乏力。' }
  ],
  'abdomen-气短': [
    { id: 'abdomen-气短-----', name: '呼吸急促', description: '伴随气短的呼吸急促' },
    { id: 'abdomen-气短--------', name: '感觉空气不够用', description: '伴随气短的感觉空气不够用' },
    { id: 'abdomen-气短-------------', name: '需用力呼吸；活动后加重。', description: '伴随气短的需用力呼吸；活动后加重。' }
  ],
  'abdomen-咳嗽': [
    { id: 'abdomen-咳嗽-----------', name: '干咳或咳痰，可伴咽痒', description: '伴随咳嗽的干咳或咳痰，可伴咽痒' },
    { id: 'abdomen-咳嗽---', name: '胸痛', description: '伴随咳嗽的胸痛' },
    { id: 'abdomen-咳嗽----', name: '发热。', description: '伴随咳嗽的发热。' }
  ],
  'abdomen-咯血': [
    { id: 'abdomen-咯血----------------', name: '痰中带血丝或咳出鲜血，可伴咳嗽', description: '伴随咯血的痰中带血丝或咳出鲜血，可伴咳嗽' },
    { id: 'abdomen-咯血---', name: '胸痛', description: '伴随咯血的胸痛' },
    { id: 'abdomen-咯血----', name: '发热。', description: '伴随咯血的发热。' }
  ],
  'abdomen-烧心': [
    { id: 'abdomen-烧心----------', name: '胸骨后烧灼感，饭后', description: '伴随烧心的胸骨后烧灼感，饭后' },
    { id: 'abdomen-烧心---------', name: '平躺时加重；反酸', description: '伴随烧心的平躺时加重；反酸' },
    { id: 'abdomen-烧心--------', name: '口中有酸苦味。', description: '伴随烧心的口中有酸苦味。' }
  ],
  'abdomen-吞咽困难': [
    { id: 'abdomen-吞咽困难-------------', name: '吞咽食物或饮水时有梗阻感', description: '伴随吞咽困难的吞咽食物或饮水时有梗阻感' },
    { id: 'abdomen-吞咽困难-----------', name: '疼痛，食物下行缓慢。', description: '伴随吞咽困难的疼痛，食物下行缓慢。' }
  ],
  'abdomen-出汗': [
    { id: 'abdomen-出汗---', name: '怕热', description: '伴随出汗的怕热' },
    { id: 'abdomen-出汗-----------------', name: '异常多汗（全身或局部），可伴心慌', description: '伴随出汗的异常多汗（全身或局部），可伴心慌' },
    { id: 'abdomen-出汗---', name: '手抖', description: '伴随出汗的手抖' },
    { id: 'abdomen-出汗------', name: '体重减轻。', description: '伴随出汗的体重减轻。' }
  ],
  'abdomen-声音嘶哑': [
    { id: 'abdomen-声音嘶哑-------', name: '声音变得沙哑', description: '伴随声音嘶哑的声音变得沙哑' },
    { id: 'abdomen-声音嘶哑--------', name: '低沉，可伴咽痛', description: '伴随声音嘶哑的低沉，可伴咽痛' },
    { id: 'abdomen-声音嘶哑---', name: '咳嗽', description: '伴随声音嘶哑的咳嗽' },
    { id: 'abdomen-声音嘶哑-------', name: '咽部异物感。', description: '伴随声音嘶哑的咽部异物感。' }
  ],
  'abdomen-肿胀': [
    { id: 'abdomen-肿胀-------------------------', name: '脖子前部（喉结下方）弥漫性或结节性肿大，可伴心慌', description: '伴随肿胀的脖子前部（喉结下方）弥漫性或结节性肿大，可伴心慌' },
    { id: 'abdomen-肿胀---', name: '多汗', description: '伴随肿胀的多汗' },
    { id: 'abdomen-肿胀-------', name: '怕热或怕冷。', description: '伴随肿胀的怕热或怕冷。' }
  ],
  'left-arm-疼痛': [
    { id: 'left-arm-疼痛----------', name: '左臂任何部位的酸痛', description: '伴随疼痛的左臂任何部位的酸痛' },
    { id: 'left-arm-疼痛---', name: '胀痛', description: '伴随疼痛的胀痛' },
    { id: 'left-arm-疼痛--------', name: '刺痛等不适感。', description: '伴随疼痛的刺痛等不适感。' }
  ],
  'right-arm-疼痛': [
    { id: 'right-arm-疼痛----------', name: '右臂任何部位的酸痛', description: '伴随疼痛的右臂任何部位的酸痛' },
    { id: 'right-arm-疼痛---', name: '胀痛', description: '伴随疼痛的胀痛' },
    { id: 'right-arm-疼痛--------', name: '刺痛等不适感。', description: '伴随疼痛的刺痛等不适感。' }
  ],
  'left-arm-麻木': [
    { id: 'left-arm-麻木-------', name: '左臂感觉减退', description: '伴随麻木的左臂感觉减退' },
    { id: 'left-arm-麻木------------------', name: '发木或像有“小电流”通过的刺痛感。', description: '伴随麻木的发木或像有“小电流”通过的刺痛感。' }
  ],
  'right-arm-麻木': [
    { id: 'right-arm-麻木-------', name: '右臂感觉减退', description: '伴随麻木的右臂感觉减退' },
    { id: 'right-arm-麻木------------------', name: '发木或像有“小电流”通过的刺痛感。', description: '伴随麻木的发木或像有“小电流”通过的刺痛感。' }
  ],
  'left-arm-肿胀': [
    { id: 'left-arm-肿胀----------', name: '左臂局部或整体肿胀', description: '伴随肿胀的左臂局部或整体肿胀' },
    { id: 'left-arm-肿胀---', name: '发红', description: '伴随肿胀的发红' },
    { id: 'left-arm-肿胀------', name: '皮温升高。', description: '伴随肿胀的皮温升高。' }
  ],
  'right-arm-肿胀': [
    { id: 'right-arm-肿胀----------', name: '右臂局部或整体肿胀', description: '伴随肿胀的右臂局部或整体肿胀' },
    { id: 'right-arm-肿胀---', name: '发红', description: '伴随肿胀的发红' },
    { id: 'right-arm-肿胀------', name: '皮温升高。', description: '伴随肿胀的皮温升高。' }
  ],
  'left-arm-无力': [
    { id: 'left-arm-无力------------', name: '左臂力量明显下降，持物', description: '伴随无力的左臂力量明显下降，持物' },
    { id: 'left-arm-无力------', name: '抬举困难。', description: '伴随无力的抬举困难。' }
  ],
  'right-arm-无力': [
    { id: 'right-arm-无力------------', name: '右臂力量明显下降，持物', description: '伴随无力的右臂力量明显下降，持物' },
    { id: 'right-arm-无力------', name: '抬举困难。', description: '伴随无力的抬举困难。' }
  ],
  'left-arm-震颤': [
    { id: 'left-arm-震颤------', name: '手臂不自主', description: '伴随震颤的手臂不自主' },
    { id: 'left-arm-震颤--------', name: '有节律地抖动。', description: '伴随震颤的有节律地抖动。' }
  ],
  'right-arm-震颤': [
    { id: 'right-arm-震颤------', name: '手臂不自主', description: '伴随震颤的手臂不自主' },
    { id: 'right-arm-震颤--------', name: '有节律地抖动。', description: '伴随震颤的有节律地抖动。' }
  ],
  'left-arm-关节肿痛': [
    { id: 'left-arm-关节肿痛--', name: '肘', description: '伴随关节肿痛的肘' },
    { id: 'left-arm-关节肿痛--', name: '腕', description: '伴随关节肿痛的腕' },
    { id: 'left-arm-关节肿痛-------', name: '肩等关节的红', description: '伴随关节肿痛的肩等关节的红' },
    { id: 'left-arm-关节肿痛--', name: '肿', description: '伴随关节肿痛的肿' },
    { id: 'left-arm-关节肿痛--', name: '热', description: '伴随关节肿痛的热' },
    { id: 'left-arm-关节肿痛---', name: '痛。', description: '伴随关节肿痛的痛。' }
  ],
  'right-arm-关节肿痛': [
    { id: 'right-arm-关节肿痛--', name: '肘', description: '伴随关节肿痛的肘' },
    { id: 'right-arm-关节肿痛--', name: '腕', description: '伴随关节肿痛的腕' },
    { id: 'right-arm-关节肿痛-------', name: '肩等关节的红', description: '伴随关节肿痛的肩等关节的红' },
    { id: 'right-arm-关节肿痛--', name: '肿', description: '伴随关节肿痛的肿' },
    { id: 'right-arm-关节肿痛--', name: '热', description: '伴随关节肿痛的热' },
    { id: 'right-arm-关节肿痛---', name: '痛。', description: '伴随关节肿痛的痛。' }
  ],
  'left-arm-关节强直': [
    { id: 'left-arm-关节强直-----', name: '关节僵硬', description: '伴随关节强直的关节僵硬' },
    { id: 'left-arm-关节强直-------', name: '活动不灵活。', description: '伴随关节强直的活动不灵活。' }
  ],
  'right-arm-关节强直': [
    { id: 'right-arm-关节强直-----', name: '关节僵硬', description: '伴随关节强直的关节僵硬' },
    { id: 'right-arm-关节强直-------', name: '活动不灵活。', description: '伴随关节强直的活动不灵活。' }
  ],
  'left-arm-屈伸不利': [
    { id: 'left-arm-屈伸不利---------', name: '关节活动范围受限', description: '伴随屈伸不利的关节活动范围受限' },
    { id: 'left-arm-屈伸不利-----------', name: '无法完全弯曲或伸直。', description: '伴随屈伸不利的无法完全弯曲或伸直。' }
  ],
  'right-arm-屈伸不利': [
    { id: 'right-arm-屈伸不利---------', name: '关节活动范围受限', description: '伴随屈伸不利的关节活动范围受限' },
    { id: 'right-arm-屈伸不利-----------', name: '无法完全弯曲或伸直。', description: '伴随屈伸不利的无法完全弯曲或伸直。' }
  ],
  'left-arm-肌痛': [
    { id: 'left-arm-肌痛-----', name: '肌肉酸痛', description: '伴随肌痛的肌肉酸痛' },
    { id: 'left-arm-肌痛------------', name: '通常与活动或劳损相关。', description: '伴随肌痛的通常与活动或劳损相关。' }
  ],
  'right-arm-肌痛': [
    { id: 'right-arm-肌痛-----', name: '肌肉酸痛', description: '伴随肌痛的肌肉酸痛' },
    { id: 'right-arm-肌痛------------', name: '通常与活动或劳损相关。', description: '伴随肌痛的通常与活动或劳损相关。' }
  ],
  'left-arm-压痛': [
    { id: 'left-arm-压痛--------------', name: '按压特定部位时出现的疼痛。', description: '伴随压痛的按压特定部位时出现的疼痛。' }
  ],
  'right-arm-压痛': [
    { id: 'right-arm-压痛--------------', name: '按压特定部位时出现的疼痛。', description: '伴随压痛的按压特定部位时出现的疼痛。' }
  ],
  'left-arm-损伤': [
    { id: 'left-arm-损伤-----------', name: '明确的外伤史，如扭伤', description: '伴随损伤的明确的外伤史，如扭伤' },
    { id: 'left-arm-损伤---', name: '拉伤', description: '伴随损伤的拉伤' },
    { id: 'left-arm-损伤----', name: '撞击。', description: '伴随损伤的撞击。' }
  ],
  'right-arm-损伤': [
    { id: 'right-arm-损伤-----------', name: '明确的外伤史，如扭伤', description: '伴随损伤的明确的外伤史，如扭伤' },
    { id: 'right-arm-损伤---', name: '拉伤', description: '伴随损伤的拉伤' },
    { id: 'right-arm-损伤----', name: '撞击。', description: '伴随损伤的撞击。' }
  ],
  'left-arm-感觉障碍': [
    { id: 'left-arm-感觉障碍----------', name: '感觉异常，如灼热感', description: '伴随感觉障碍的感觉异常，如灼热感' },
    { id: 'left-arm-感觉障碍----', name: '蚁行感', description: '伴随感觉障碍的蚁行感' },
    { id: 'left-arm-感觉障碍------', name: '过电感等。', description: '伴随感觉障碍的过电感等。' }
  ],
  'right-arm-感觉障碍': [
    { id: 'right-arm-感觉障碍----------', name: '感觉异常，如灼热感', description: '伴随感觉障碍的感觉异常，如灼热感' },
    { id: 'right-arm-感觉障碍----', name: '蚁行感', description: '伴随感觉障碍的蚁行感' },
    { id: 'right-arm-感觉障碍------', name: '过电感等。', description: '伴随感觉障碍的过电感等。' }
  ],
  'left-arm-weakness': [
    { id: 'left-arm-weakness----------', name: '左臂力量明显下降', description: '伴随无力的左臂力量明显下降' },
    { id: 'left-arm-weakness------', name: '持物、抬举困难。', description: '伴随无力的持物、抬举困难。' }
  ],
  'right-arm-weakness': [
    { id: 'right-arm-weakness----------', name: '右臂力量明显下降', description: '伴随无力的右臂力量明显下降' },
    { id: 'right-arm-weakness------', name: '持物、抬举困难。', description: '伴随无力的持物、抬举困难。' }
  ],
  'left-arm-关节弹响': [
    { id: 'left-arm-关节弹响----------', name: '关节活动时出现"咔嗒"声或弹响', description: '伴随关节弹响的关节活动时出现"咔嗒"声或弹响' },
    { id: 'left-arm-关节弹响------', name: '可伴疼痛或卡顿感。', description: '伴随关节弹响的可伴疼痛或卡顿感。' }
  ],
  'right-arm-关节弹响': [
    { id: 'right-arm-关节弹响----------', name: '关节活动时出现"咔嗒"声或弹响', description: '伴随关节弹响的关节活动时出现"咔嗒"声或弹响' },
    { id: 'right-arm-关节弹响------', name: '可伴疼痛或卡顿感。', description: '伴随关节弹响的可伴疼痛或卡顿感。' }
  ],
  'left-arm-皮肤变色': [
    { id: 'left-arm-皮肤变色----------', name: '手部皮肤发红', description: '伴随皮肤变色的手部皮肤发红' },
    { id: 'left-arm-皮肤变色----', name: '发紫', description: '伴随皮肤变色的发紫' },
    { id: 'left-arm-皮肤变色----', name: '苍白', description: '伴随皮肤变色的苍白' },
    { id: 'left-arm-皮肤变色------', name: '或出现异常斑点。', description: '伴随皮肤变色的或出现异常斑点。' }
  ],
  'right-arm-皮肤变色': [
    { id: 'right-arm-皮肤变色----------', name: '手部皮肤发红', description: '伴随皮肤变色的手部皮肤发红' },
    { id: 'right-arm-皮肤变色----', name: '发紫', description: '伴随皮肤变色的发紫' },
    { id: 'right-arm-皮肤变色----', name: '苍白', description: '伴随皮肤变色的苍白' },
    { id: 'right-arm-皮肤变色------', name: '或出现异常斑点。', description: '伴随皮肤变色的或出现异常斑点。' }
  ],
  'left-arm-手部发凉': [
    { id: 'left-arm-手部发凉----------', name: '手部温度明显低于其他部位', description: '伴随手部发凉的手部温度明显低于其他部位' },
    { id: 'left-arm-手部发凉------', name: '可伴苍白或发紫。', description: '伴随手部发凉的可伴苍白或发紫。' }
  ],
  'right-arm-手部发凉': [
    { id: 'right-arm-手部发凉----------', name: '手部温度明显低于其他部位', description: '伴随手部发凉的手部温度明显低于其他部位' },
    { id: 'right-arm-手部发凉------', name: '可伴苍白或发紫。', description: '伴随手部发凉的可伴苍白或发紫。' }
  ],
  'left-arm-手指畸形': [
    { id: 'left-arm-手指畸形----------', name: '手指关节变形', description: '伴随手指畸形的手指关节变形' },
    { id: 'left-arm-手指畸形----', name: '弯曲', description: '伴随手指畸形的弯曲' },
    { id: 'left-arm-手指畸形----', name: '肿胀', description: '伴随手指畸形的肿胀' },
    { id: 'left-arm-手指畸形------', name: '影响正常功能。', description: '伴随手指畸形的影响正常功能。' }
  ],
  'right-arm-手指畸形': [
    { id: 'right-arm-手指畸形----------', name: '手指关节变形', description: '伴随手指畸形的手指关节变形' },
    { id: 'right-arm-手指畸形----', name: '弯曲', description: '伴随手指畸形的弯曲' },
    { id: 'right-arm-手指畸形----', name: '肿胀', description: '伴随手指畸形的肿胀' },
    { id: 'right-arm-手指畸形------', name: '影响正常功能。', description: '伴随手指畸形的影响正常功能。' }
  ],
  'left-arm-扳机指': [
    { id: 'left-arm-扳机指----------', name: '手指弯曲后无法自行伸直', description: '伴随扳机指的手指弯曲后无法自行伸直' },
    { id: 'left-arm-扳机指------', name: '需要外力帮助，可伴疼痛。', description: '伴随扳机指的需要外力帮助，可伴疼痛。' }
  ],
  'right-arm-扳机指': [
    { id: 'right-arm-扳机指----------', name: '手指弯曲后无法自行伸直', description: '伴随扳机指的手指弯曲后无法自行伸直' },
    { id: 'right-arm-扳机指------', name: '需要外力帮助，可伴疼痛。', description: '伴随扳机指的需要外力帮助，可伴疼痛。' }
  ],
  'left-arm-腕管综合征': [
    { id: 'left-arm-腕管综合征----------', name: '手腕部疼痛', description: '伴随腕管综合征的手腕部疼痛' },
    { id: 'left-arm-腕管综合征----', name: '麻木', description: '伴随腕管综合征的麻木' },
    { id: 'left-arm-腕管综合征------', name: '向手指放射，夜间加重。', description: '伴随腕管综合征的向手指放射，夜间加重。' }
  ],
  'right-arm-腕管综合征': [
    { id: 'right-arm-腕管综合征----------', name: '手腕部疼痛', description: '伴随腕管综合征的手腕部疼痛' },
    { id: 'right-arm-腕管综合征----', name: '麻木', description: '伴随腕管综合征的麻木' },
    { id: 'right-arm-腕管综合征------', name: '向手指放射，夜间加重。', description: '伴随腕管综合征的向手指放射，夜间加重。' }
  ],
  'left-arm-手指麻木': [
    { id: 'left-arm-手指麻木----------', name: '单个或多个手指麻木', description: '伴随手指麻木的单个或多个手指麻木' },
    { id: 'left-arm-手指麻木----', name: '刺痛', description: '伴随手指麻木的刺痛' },
    { id: 'left-arm-手指麻木------', name: '可伴无力。', description: '伴随手指麻木的可伴无力。' }
  ],
  'right-arm-手指麻木': [
    { id: 'right-arm-手指麻木----------', name: '单个或多个手指麻木', description: '伴随手指麻木的单个或多个手指麻木' },
    { id: 'right-arm-手指麻木----', name: '刺痛', description: '伴随手指麻木的刺痛' },
    { id: 'right-arm-手指麻木------', name: '可伴无力。', description: '伴随手指麻木的可伴无力。' }
  ],
  'left-arm-手部多汗': [
    { id: 'left-arm-手部多汗----------', name: '手部异常多汗', description: '伴随手部多汗的手部异常多汗' },
    { id: 'left-arm-手部多汗------', name: '可伴潮湿、发凉。', description: '伴随手部多汗的可伴潮湿、发凉。' }
  ],
  'right-arm-手部多汗': [
    { id: 'right-arm-手部多汗----------', name: '手部异常多汗', description: '伴随手部多汗的手部异常多汗' },
    { id: 'right-arm-手部多汗------', name: '可伴潮湿、发凉。', description: '伴随手部多汗的可伴潮湿、发凉。' }
  ],
  'left-arm-手部感染': [
    { id: 'left-arm-手部感染----------', name: '手部皮肤红肿', description: '伴随手部感染的手部皮肤红肿' },
    { id: 'left-arm-手部感染----', name: '疼痛', description: '伴随手部感染的疼痛' },
    { id: 'left-arm-手部感染----', name: '化脓', description: '伴随手部感染的化脓' },
    { id: 'left-arm-手部感染------', name: '可伴发热。', description: '伴随手部感染的可伴发热。' }
  ],
  'right-arm-手部感染': [
    { id: 'right-arm-手部感染----------', name: '手部皮肤红肿', description: '伴随手部感染的手部皮肤红肿' },
    { id: 'right-arm-手部感染----', name: '疼痛', description: '伴随手部感染的疼痛' },
    { id: 'right-arm-手部感染----', name: '化脓', description: '伴随手部感染的化脓' },
    { id: 'right-arm-手部感染------', name: '可伴发热。', description: '伴随手部感染的可伴发热。' }
  ],
  'left-arm-手部肿瘤': [
    { id: 'left-arm-手部肿瘤----------', name: '手部出现肿块', description: '伴随手部肿瘤的手部出现肿块' },
    { id: 'left-arm-手部肿瘤----', name: '硬结', description: '伴随手部肿瘤的硬结' },
    { id: 'left-arm-手部肿瘤------', name: '生长缓慢或迅速。', description: '伴随手部肿瘤的生长缓慢或迅速。' }
  ],
  'right-arm-手部肿瘤': [
    { id: 'right-arm-手部肿瘤----------', name: '手部出现肿块', description: '伴随手部肿瘤的手部出现肿块' },
    { id: 'right-arm-手部肿瘤----', name: '硬结', description: '伴随手部肿瘤的硬结' },
    { id: 'right-arm-手部肿瘤------', name: '生长缓慢或迅速。', description: '伴随手部肿瘤的生长缓慢或迅速。' }
  ],
  'left-arm-手部冻伤': [
    { id: 'left-arm-手部冻伤----------', name: '手部皮肤苍白', description: '伴随手部冻伤的手部皮肤苍白' },
    { id: 'left-arm-手部冻伤----', name: '麻木', description: '伴随手部冻伤的麻木' },
    { id: 'left-arm-手部冻伤----', name: '疼痛', description: '伴随手部冻伤的疼痛' },
    { id: 'left-arm-手部冻伤------', name: '严重时出现水疱或坏死。', description: '伴随手部冻伤的严重时出现水疱或坏死。' }
  ],
  'right-arm-手部冻伤': [
    { id: 'right-arm-手部冻伤----------', name: '手部皮肤苍白', description: '伴随手部冻伤的手部皮肤苍白' },
    { id: 'right-arm-手部冻伤----', name: '麻木', description: '伴随手部冻伤的麻木' },
    { id: 'right-arm-手部冻伤----', name: '疼痛', description: '伴随手部冻伤的疼痛' },
    { id: 'right-arm-手部冻伤------', name: '严重时出现水疱或坏死。', description: '伴随手部冻伤的严重时出现水疱或坏死。' }
  ],
  'head-头痛': [
    { id: 'head-头痛---', name: '恶心', description: '伴随头痛的恶心' },
    { id: 'head-头痛---', name: '呕吐', description: '伴随头痛的呕吐' },
    { id: 'head-头痛---', name: '畏光', description: '伴随头痛的畏光' },
    { id: 'head-头痛---', name: '畏声', description: '伴随头痛的畏声' },
    { id: 'head-头痛---', name: '头晕', description: '伴随头痛的头晕' },
    { id: 'head-头痛-----', name: '颈肩僵硬', description: '伴随头痛的颈肩僵硬' }
  ],
  'head-剧烈头痛-非外伤-': [
    { id: 'head-剧烈头痛-非外伤-------', name: '喷射性呕吐', description: '伴随剧烈头痛（非外伤）的喷射性呕吐' },
    { id: 'head-剧烈头痛-非外伤------', name: '颈部僵硬', description: '伴随剧烈头痛（非外伤）的颈部僵硬' },
    { id: 'head-剧烈头痛-非外伤------', name: '意识模糊', description: '伴随剧烈头痛（非外伤）的意识模糊' },
    { id: 'head-剧烈头痛-非外伤------', name: '肢体麻木', description: '伴随剧烈头痛（非外伤）的肢体麻木' }
  ],
  'head-外伤后剧烈头痛伴呕吐-神志不清': [
    { id: 'head-外伤后剧烈头痛伴呕吐-神志不清-----', name: '头皮血肿', description: '伴随外伤后剧烈头痛伴呕吐、神志不清的头皮血肿' },
    { id: 'head-外伤后剧烈头痛伴呕吐-神志不清---', name: '嗜睡', description: '伴随外伤后剧烈头痛伴呕吐、神志不清的嗜睡' },
    { id: 'head-外伤后剧烈头痛伴呕吐-神志不清---', name: '抽搐', description: '伴随外伤后剧烈头痛伴呕吐、神志不清的抽搐' },
    { id: 'head-外伤后剧烈头痛伴呕吐-神志不清------', name: '瞳孔不等大', description: '伴随外伤后剧烈头痛伴呕吐、神志不清的瞳孔不等大' }
  ],
  'head-头晕': [
    { id: 'head-头晕-----', name: '视物旋转', description: '伴随头晕的视物旋转' },
    { id: 'head-头晕---', name: '耳鸣', description: '伴随头晕的耳鸣' },
    { id: 'head-头晕-----', name: '听力下降', description: '伴随头晕的听力下降' },
    { id: 'head-头晕---', name: '恶心', description: '伴随头晕的恶心' },
    { id: 'head-头晕-----', name: '走路不稳', description: '伴随头晕的走路不稳' },
    { id: 'head-头晕----', name: '出冷汗', description: '伴随头晕的出冷汗' }
  ],
  'head-发热': [
    { id: 'head-发热---', name: '畏寒', description: '伴随发热的畏寒' },
    { id: 'head-发热---', name: '寒战', description: '伴随发热的寒战' },
    { id: 'head-发热---', name: '头痛', description: '伴随发热的头痛' },
    { id: 'head-发热-----', name: '肌肉酸痛', description: '伴随发热的肌肉酸痛' },
    { id: 'head-发热---', name: '咳嗽', description: '伴随发热的咳嗽' },
    { id: 'head-发热---', name: '咽痛', description: '伴随发热的咽痛' },
    { id: 'head-发热---', name: '乏力', description: '伴随发热的乏力' }
  ],
  'head-失眠': [
    { id: 'head-失眠---', name: '多梦', description: '伴随失眠的多梦' },
    { id: 'head-失眠---', name: '易醒', description: '伴随失眠的易醒' },
    { id: 'head-失眠------', name: '醒后难入睡', description: '伴随失眠的醒后难入睡' },
    { id: 'head-失眠-----', name: '白天困倦', description: '伴随失眠的白天困倦' },
    { id: 'head-失眠---', name: '焦虑', description: '伴随失眠的焦虑' },
    { id: 'head-失眠---', name: '心慌', description: '伴随失眠的心慌' }
  ],
  'head-疲劳---无力': [
    { id: 'head-疲劳---无力-----', name: '极度疲倦', description: '伴随疲劳 / 无力的极度疲倦' },
    { id: 'head-疲劳---无力---', name: '虚弱', description: '伴随疲劳 / 无力的虚弱' },
    { id: 'head-疲劳---无力------', name: '活动后加重', description: '伴随疲劳 / 无力的活动后加重' },
    { id: 'head-疲劳---无力-----', name: '面色苍白', description: '伴随疲劳 / 无力的面色苍白' },
    { id: 'head-疲劳---无力---', name: '消瘦', description: '伴随疲劳 / 无力的消瘦' }
  ],
  'head-惊厥': [
    { id: 'head-惊厥-----', name: '意识丧失', description: '伴随惊厥的意识丧失' },
    { id: 'head-惊厥-----', name: '牙关紧闭', description: '伴随惊厥的牙关紧闭' },
    { id: 'head-惊厥-----', name: '口吐白沫', description: '伴随惊厥的口吐白沫' },
    { id: 'head-惊厥-------', name: '四肢强直阵挛', description: '伴随惊厥的四肢强直阵挛' },
    { id: 'head-惊厥------', name: '大小便失禁', description: '伴随惊厥的大小便失禁' }
  ],
  'head-木僵---精神活动迟钝': [
    { id: 'head-木僵---精神活动迟钝---', name: '不语', description: '伴随木僵 / 精神活动迟钝的不语' },
    { id: 'head-木僵---精神活动迟钝---', name: '不动', description: '伴随木僵 / 精神活动迟钝的不动' },
    { id: 'head-木僵---精神活动迟钝---', name: '拒食', description: '伴随木僵 / 精神活动迟钝的拒食' },
    { id: 'head-木僵---精神活动迟钝---', name: '违拗', description: '伴随木僵 / 精神活动迟钝的违拗' },
    { id: 'head-木僵---精神活动迟钝-----', name: '蜡样屈曲', description: '伴随木僵 / 精神活动迟钝的蜡样屈曲' },
    { id: 'head-木僵---精神活动迟钝---', name: '呆滞', description: '伴随木僵 / 精神活动迟钝的呆滞' }
  ],
  'head-神志不清': [
    { id: 'head-神志不清-----', name: '胡言乱语', description: '伴随神志不清的胡言乱语' },
    { id: 'head-神志不清---', name: '抽搐', description: '伴随神志不清的抽搐' },
    { id: 'head-神志不清---', name: '高热', description: '伴随神志不清的高热' },
    { id: 'head-神志不清-----', name: '瞳孔散大', description: '伴随神志不清的瞳孔散大' },
    { id: 'head-神志不清------', name: '大小便失禁', description: '伴随神志不清的大小便失禁' },
    { id: 'head-神志不清---', name: '呕吐', description: '伴随神志不清的呕吐' }
  ],
  'head-呕吐': [
    { id: 'head-呕吐---', name: '恶心', description: '伴随呕吐的恶心' },
    { id: 'head-呕吐---', name: '腹痛', description: '伴随呕吐的腹痛' },
    { id: 'head-呕吐------------', name: '腹泻。警惕：喷射性呕吐', description: '伴随呕吐的腹泻。警惕：喷射性呕吐' },
    { id: 'head-呕吐-----', name: '剧烈头痛', description: '伴随呕吐的剧烈头痛' }
  ],
  'head-视力问题-模糊-重影-': [
    { id: 'head-视力问题-模糊-重影----', name: '眼痛', description: '伴随视力问题（模糊、重影）的眼痛' },
    { id: 'head-视力问题-模糊-重影-----', name: '闪光感', description: '伴随视力问题（模糊、重影）的闪光感' },
    { id: 'head-视力问题-模糊-重影------', name: '视野缺损', description: '伴随视力问题（模糊、重影）的视野缺损' },
    { id: 'head-视力问题-模糊-重影-----', name: '飞蚊症', description: '伴随视力问题（模糊、重影）的飞蚊症' }
  ],
  'head-记忆力减退---反应慢': [
    { id: 'head-记忆力减退---反应慢-----', name: '丢三落四', description: '伴随记忆力减退 / 反应慢的丢三落四' },
    { id: 'head-记忆力减退---反应慢-----', name: '学习困难', description: '伴随记忆力减退 / 反应慢的学习困难' },
    { id: 'head-记忆力减退---反应慢-----', name: '性格改变', description: '伴随记忆力减退 / 反应慢的性格改变' },
    { id: 'head-记忆力减退---反应慢-------', name: '生活能力下降', description: '伴随记忆力减退 / 反应慢的生活能力下降' }
  ],
  'head-性格改变-变怪-行为异常-': [
    { id: 'head-性格改变-变怪-行为异常------', name: '情感淡漠', description: '伴随性格改变（变怪、行为异常）的情感淡漠' },
    { id: 'head-性格改变-变怪-行为异常----', name: '易怒', description: '伴随性格改变（变怪、行为异常）的易怒' },
    { id: 'head-性格改变-变怪-行为异常----', name: '自私', description: '伴随性格改变（变怪、行为异常）的自私' },
    { id: 'head-性格改变-变怪-行为异常----', name: '猜疑', description: '伴随性格改变（变怪、行为异常）的猜疑' },
    { id: 'head-性格改变-变怪-行为异常----', name: '退缩', description: '伴随性格改变（变怪、行为异常）的退缩' }
  ],
  'head-怕光怕吵---畏光畏声': [
    { id: 'head-怕光怕吵---畏光畏声------', name: '搏动性头痛', description: '伴随怕光怕吵 / 畏光畏声的搏动性头痛' },
    { id: 'head-怕光怕吵---畏光畏声---', name: '恶心', description: '伴随怕光怕吵 / 畏光畏声的恶心' },
    { id: 'head-怕光怕吵---畏光畏声---', name: '烦躁', description: '伴随怕光怕吵 / 畏光畏声的烦躁' }
  ],
  'head-麻木-局部或全身-': [
    { id: 'head-麻木-局部或全身-----', name: '针刺感', description: '伴随麻木（局部或全身）的针刺感' },
    { id: 'head-麻木-局部或全身-----', name: '蚁走感', description: '伴随麻木（局部或全身）的蚁走感' },
    { id: 'head-麻木-局部或全身------', name: '肢体无力', description: '伴随麻木（局部或全身）的肢体无力' },
    { id: 'head-麻木-局部或全身----', name: '疼痛', description: '伴随麻木（局部或全身）的疼痛' }
  ],
  'head-牙痛': [
    { id: 'head-牙痛-----', name: '牙龈红肿', description: '伴随牙痛的牙龈红肿' },
    { id: 'head-牙痛------', name: '遇冷热加重', description: '伴随牙痛的遇冷热加重' },
    { id: 'head-牙痛-----', name: '夜间加剧', description: '伴随牙痛的夜间加剧' }
  ],
  'head-面部放射性疼痛': [
    { id: 'head-面部放射性疼痛---------', name: '电击样剧痛（洗脸', description: '伴随面部放射性疼痛的电击样剧痛（洗脸' },
    { id: 'head-面部放射性疼痛---', name: '吃饭', description: '伴随面部放射性疼痛的吃饭' },
    { id: 'head-面部放射性疼痛-------------2--', name: '说话可诱发），每次数秒至2分钟', description: '伴随面部放射性疼痛的说话可诱发），每次数秒至2分钟' }
  ],
  'left-leg-疼痛': [
    { id: 'left-leg-疼痛-----', name: '局部红肿', description: '伴随疼痛的局部红肿' },
    { id: 'left-leg-疼痛---', name: '发热', description: '伴随疼痛的发热' },
    { id: 'left-leg-疼痛------', name: '活动时加剧', description: '伴随疼痛的活动时加剧' },
    { id: 'left-leg-疼痛----', name: '夜间痛', description: '伴随疼痛的夜间痛' },
    { id: 'left-leg-疼痛-------', name: '放射性疼痛。', description: '伴随疼痛的放射性疼痛。' }
  ],
  'right-leg-疼痛': [
    { id: 'right-leg-疼痛-----', name: '局部红肿', description: '伴随疼痛的局部红肿' },
    { id: 'right-leg-疼痛---', name: '发热', description: '伴随疼痛的发热' },
    { id: 'right-leg-疼痛------', name: '活动时加剧', description: '伴随疼痛的活动时加剧' },
    { id: 'right-leg-疼痛----', name: '夜间痛', description: '伴随疼痛的夜间痛' },
    { id: 'right-leg-疼痛-------', name: '放射性疼痛。', description: '伴随疼痛的放射性疼痛。' }
  ],
  'left-leg-麻木': [
    { id: 'left-leg-麻木----', name: '针刺感', description: '伴随麻木的针刺感' },
    { id: 'left-leg-麻木----', name: '蚁行感', description: '伴随麻木的蚁行感' },
    { id: 'left-leg-麻木---', name: '发凉', description: '伴随麻木的发凉' },
    { id: 'left-leg-麻木---', name: '无力', description: '伴随麻木的无力' },
    { id: 'left-leg-麻木------', name: '感觉减退。', description: '伴随麻木的感觉减退。' }
  ],
  'right-leg-麻木': [
    { id: 'right-leg-麻木----', name: '针刺感', description: '伴随麻木的针刺感' },
    { id: 'right-leg-麻木----', name: '蚁行感', description: '伴随麻木的蚁行感' },
    { id: 'right-leg-麻木---', name: '发凉', description: '伴随麻木的发凉' },
    { id: 'right-leg-麻木---', name: '无力', description: '伴随麻木的无力' },
    { id: 'right-leg-麻木------', name: '感觉减退。', description: '伴随麻木的感觉减退。' }
  ],
  'left-leg-肿胀': [
    { id: 'left-leg-肿胀-----', name: '皮肤紧绷', description: '伴随肿胀的皮肤紧绷' },
    { id: 'left-leg-肿胀---', name: '发亮', description: '伴随肿胀的发亮' },
    { id: 'left-leg-肿胀---', name: '发红', description: '伴随肿胀的发红' },
    { id: 'left-leg-肿胀-----', name: '皮温升高', description: '伴随肿胀的皮温升高' },
    { id: 'left-leg-肿胀------', name: '按压凹陷。', description: '伴随肿胀的按压凹陷。' }
  ],
  'right-leg-肿胀': [
    { id: 'right-leg-肿胀-----', name: '皮肤紧绷', description: '伴随肿胀的皮肤紧绷' },
    { id: 'right-leg-肿胀---', name: '发亮', description: '伴随肿胀的发亮' },
    { id: 'right-leg-肿胀---', name: '发红', description: '伴随肿胀的发红' },
    { id: 'right-leg-肿胀-----', name: '皮温升高', description: '伴随肿胀的皮温升高' },
    { id: 'right-leg-肿胀------', name: '按压凹陷。', description: '伴随肿胀的按压凹陷。' }
  ],
  'left-leg-无力': [
    { id: 'left-leg-无力-----', name: '走路不稳', description: '伴随无力的走路不稳' },
    { id: 'left-leg-无力----', name: '易跌倒', description: '伴随无力的易跌倒' },
    { id: 'left-leg-无力-------', name: '上下楼梯困难', description: '伴随无力的上下楼梯困难' },
    { id: 'left-leg-无力------', name: '肌肉颤动。', description: '伴随无力的肌肉颤动。' }
  ],
  'right-leg-无力': [
    { id: 'right-leg-无力-----', name: '走路不稳', description: '伴随无力的走路不稳' },
    { id: 'right-leg-无力----', name: '易跌倒', description: '伴随无力的易跌倒' },
    { id: 'right-leg-无力-------', name: '上下楼梯困难', description: '伴随无力的上下楼梯困难' },
    { id: 'right-leg-无力------', name: '肌肉颤动。', description: '伴随无力的肌肉颤动。' }
  ],
  'left-leg-关节肿痛': [
    { id: 'left-leg-关节肿痛----', name: '关节红', description: '伴随关节肿痛的关节红' },
    { id: 'left-leg-关节肿痛--', name: '肿', description: '伴随关节肿痛的肿' },
    { id: 'left-leg-关节肿痛--', name: '热', description: '伴随关节肿痛的热' },
    { id: 'left-leg-关节肿痛-----------', name: '痛，活动受限，晨僵。', description: '伴随关节肿痛的痛，活动受限，晨僵。' }
  ],
  'right-leg-关节肿痛': [
    { id: 'right-leg-关节肿痛----', name: '关节红', description: '伴随关节肿痛的关节红' },
    { id: 'right-leg-关节肿痛--', name: '肿', description: '伴随关节肿痛的肿' },
    { id: 'right-leg-关节肿痛--', name: '热', description: '伴随关节肿痛的热' },
    { id: 'right-leg-关节肿痛-----------', name: '痛，活动受限，晨僵。', description: '伴随关节肿痛的痛，活动受限，晨僵。' }
  ],
  'left-leg-关节强直': [
    { id: 'left-leg-关节强直------------', name: '关节僵硬固定在某一位置', description: '伴随关节强直的关节僵硬固定在某一位置' },
    { id: 'left-leg-关节强直-----', name: '无法活动', description: '伴随关节强直的无法活动' },
    { id: 'left-leg-关节强直------', name: '可伴畸形。', description: '伴随关节强直的可伴畸形。' }
  ],
  'right-leg-关节强直': [
    { id: 'right-leg-关节强直------------', name: '关节僵硬固定在某一位置', description: '伴随关节强直的关节僵硬固定在某一位置' },
    { id: 'right-leg-关节强直-----', name: '无法活动', description: '伴随关节强直的无法活动' },
    { id: 'right-leg-关节强直------', name: '可伴畸形。', description: '伴随关节强直的可伴畸形。' }
  ],
  'left-leg-屈伸不利': [
    { id: 'left-leg-屈伸不利---------', name: '关节活动范围减小', description: '伴随屈伸不利的关节活动范围减小' },
    { id: 'left-leg-屈伸不利----------', name: '伴有疼痛或僵硬感。', description: '伴随屈伸不利的伴有疼痛或僵硬感。' }
  ],
  'right-leg-屈伸不利': [
    { id: 'right-leg-屈伸不利---------', name: '关节活动范围减小', description: '伴随屈伸不利的关节活动范围减小' },
    { id: 'right-leg-屈伸不利----------', name: '伴有疼痛或僵硬感。', description: '伴随屈伸不利的伴有疼痛或僵硬感。' }
  ],
  'left-leg-肌痛': [
    { id: 'left-leg-肌痛-------', name: '肌肉广泛酸痛', description: '伴随肌痛的肌肉广泛酸痛' },
    { id: 'left-leg-肌痛---', name: '压痛', description: '伴随肌痛的压痛' },
    { id: 'left-leg-肌痛----------', name: '乏力，可能伴低热。', description: '伴随肌痛的乏力，可能伴低热。' }
  ],
  'right-leg-肌痛': [
    { id: 'right-leg-肌痛-------', name: '肌肉广泛酸痛', description: '伴随肌痛的肌肉广泛酸痛' },
    { id: 'right-leg-肌痛---', name: '压痛', description: '伴随肌痛的压痛' },
    { id: 'right-leg-肌痛----------', name: '乏力，可能伴低热。', description: '伴随肌痛的乏力，可能伴低热。' }
  ],
  'left-leg-压痛': [
    { id: 'left-leg-压痛----------', name: '按压特定点出现剧痛', description: '伴随压痛的按压特定点出现剧痛' },
    { id: 'left-leg-压痛--------', name: '局部可能肿胀。', description: '伴随压痛的局部可能肿胀。' }
  ],
  'right-leg-压痛': [
    { id: 'right-leg-压痛----------', name: '按压特定点出现剧痛', description: '伴随压痛的按压特定点出现剧痛' },
    { id: 'right-leg-压痛--------', name: '局部可能肿胀。', description: '伴随压痛的局部可能肿胀。' }
  ],
  'left-leg-创伤': [
    { id: 'left-leg-创伤---', name: '伤口', description: '伴随创伤的伤口' },
    { id: 'left-leg-创伤---', name: '出血', description: '伴随创伤的出血' },
    { id: 'left-leg-创伤---', name: '瘀青', description: '伴随创伤的瘀青' },
    { id: 'left-leg-创伤---', name: '畸形', description: '伴随创伤的畸形' },
    { id: 'left-leg-创伤------', name: '活动障碍。', description: '伴随创伤的活动障碍。' }
  ],
  'right-leg-创伤': [
    { id: 'right-leg-创伤---', name: '伤口', description: '伴随创伤的伤口' },
    { id: 'right-leg-创伤---', name: '出血', description: '伴随创伤的出血' },
    { id: 'right-leg-创伤---', name: '瘀青', description: '伴随创伤的瘀青' },
    { id: 'right-leg-创伤---', name: '畸形', description: '伴随创伤的畸形' },
    { id: 'right-leg-创伤------', name: '活动障碍。', description: '伴随创伤的活动障碍。' }
  ],
  'left-leg-抽筋': [
    { id: 'left-leg-抽筋-------', name: '肌肉突发痉挛', description: '伴随抽筋的肌肉突发痉挛' },
    { id: 'left-leg-抽筋---', name: '剧痛', description: '伴随抽筋的剧痛' },
    { id: 'left-leg-抽筋-------------', name: '发硬，持续数秒至数分钟。', description: '伴随抽筋的发硬，持续数秒至数分钟。' }
  ],
  'right-leg-抽筋': [
    { id: 'right-leg-抽筋-------', name: '肌肉突发痉挛', description: '伴随抽筋的肌肉突发痉挛' },
    { id: 'right-leg-抽筋---', name: '剧痛', description: '伴随抽筋的剧痛' },
    { id: 'right-leg-抽筋-------------', name: '发硬，持续数秒至数分钟。', description: '伴随抽筋的发硬，持续数秒至数分钟。' }
  ],
  'left-leg-肌肉萎缩': [
    { id: 'left-leg-肌肉萎缩---------', name: '肌肉体积明显缩小', description: '伴随肌肉萎缩的肌肉体积明显缩小' },
    { id: 'left-leg-肌肉萎缩-----', name: '皮肤松弛', description: '伴随肌肉萎缩的皮肤松弛' },
    { id: 'left-leg-肌肉萎缩------', name: '肌力下降。', description: '伴随肌肉萎缩的肌力下降。' }
  ],
  'right-leg-肌肉萎缩': [
    { id: 'right-leg-肌肉萎缩---------', name: '肌肉体积明显缩小', description: '伴随肌肉萎缩的肌肉体积明显缩小' },
    { id: 'right-leg-肌肉萎缩-----', name: '皮肤松弛', description: '伴随肌肉萎缩的皮肤松弛' },
    { id: 'right-leg-肌肉萎缩------', name: '肌力下降。', description: '伴随肌肉萎缩的肌力下降。' }
  ],
  'left-leg-感觉障碍': [
    { id: 'left-leg-感觉障碍----', name: '灼热感', description: '伴随感觉障碍的灼热感' },
    { id: 'left-leg-感觉障碍----', name: '过电感', description: '伴随感觉障碍的过电感' },
    { id: 'left-leg-感觉障碍----', name: '冰冷感', description: '伴随感觉障碍的冰冷感' },
    { id: 'left-leg-感觉障碍---------', name: '袜套样感觉缺失。', description: '伴随感觉障碍的袜套样感觉缺失。' }
  ],
  'right-leg-感觉障碍': [
    { id: 'right-leg-感觉障碍----', name: '灼热感', description: '伴随感觉障碍的灼热感' },
    { id: 'right-leg-感觉障碍----', name: '过电感', description: '伴随感觉障碍的过电感' },
    { id: 'right-leg-感觉障碍----', name: '冰冷感', description: '伴随感觉障碍的冰冷感' },
    { id: 'right-leg-感觉障碍---------', name: '袜套样感觉缺失。', description: '伴随感觉障碍的袜套样感觉缺失。' }
  ],
  'chest-胸痛': [
    { id: 'chest-胸痛---', name: '胸闷', description: '伴随胸痛的胸闷' },
    { id: 'chest-胸痛----', name: '压迫感', description: '伴随胸痛的压迫感' },
    { id: 'chest-胸痛---', name: '刺痛', description: '伴随胸痛的刺痛' },
    { id: 'chest-胸痛---', name: '钝痛', description: '伴随胸痛的钝痛' },
    { id: 'chest-胸痛----------', name: '放射性疼痛（至左肩', description: '伴随胸痛的放射性疼痛（至左肩' },
    { id: 'chest-胸痛---', name: '后背', description: '伴随胸痛的后背' },
    { id: 'chest-胸痛---', name: '手臂', description: '伴随胸痛的手臂' },
    { id: 'chest-胸痛---------', name: '下颌），可伴心慌', description: '伴随胸痛的下颌），可伴心慌' },
    { id: 'chest-胸痛----', name: '气短。', description: '伴随胸痛的气短。' }
  ],
  'chest-突发胸痛胸闷': [
    { id: 'chest-突发胸痛胸闷-------', name: '突发剧烈胸痛', description: '伴随突发胸痛胸闷的突发剧烈胸痛' },
    { id: 'chest-突发胸痛胸闷---', name: '胸闷', description: '伴随突发胸痛胸闷的胸闷' },
    { id: 'chest-突发胸痛胸闷-----', name: '呼吸困难', description: '伴随突发胸痛胸闷的呼吸困难' },
    { id: 'chest-突发胸痛胸闷-----', name: '大汗淋漓', description: '伴随突发胸痛胸闷的大汗淋漓' },
    { id: 'chest-突发胸痛胸闷----', name: '濒死感', description: '伴随突发胸痛胸闷的濒死感' },
    { id: 'chest-突发胸痛胸闷---', name: '恶心', description: '伴随突发胸痛胸闷的恶心' },
    { id: 'chest-突发胸痛胸闷----', name: '晕厥。', description: '伴随突发胸痛胸闷的晕厥。' }
  ],
  'chest-胸痛伴呼吸受限': [
    { id: 'chest-胸痛伴呼吸受限-------', name: '胸痛，深呼吸', description: '伴随胸痛伴呼吸受限的胸痛，深呼吸' },
    { id: 'chest-胸痛伴呼吸受限-----------------------', name: '咳嗽时加剧，感觉“气吸不进来”，或有窒息感。', description: '伴随胸痛伴呼吸受限的咳嗽时加剧，感觉“气吸不进来”，或有窒息感。' }
  ],
  'chest-胸闷伴呼吸受阻': [
    { id: 'chest-胸闷伴呼吸受阻------', name: '持续性胸闷', description: '伴随胸闷伴呼吸受阻的持续性胸闷' },
    { id: 'chest-胸闷伴呼吸受阻-------', name: '感觉空气不足', description: '伴随胸闷伴呼吸受阻的感觉空气不足' },
    { id: 'chest-胸闷伴呼吸受阻-----', name: '呼吸费力', description: '伴随胸闷伴呼吸受阻的呼吸费力' },
    { id: 'chest-胸闷伴呼吸受阻--------', name: '但疼痛不明显。', description: '伴随胸闷伴呼吸受阻的但疼痛不明显。' }
  ],
  'chest-运动后胸痛': [
    { id: 'chest-运动后胸痛---', name: '运动', description: '伴随运动后胸痛的运动' },
    { id: 'chest-运动后胸痛---', name: '快走', description: '伴随运动后胸痛的快走' },
    { id: 'chest-运动后胸痛---', name: '上楼', description: '伴随运动后胸痛的上楼' },
    { id: 'chest-运动后胸痛--------------------', name: '情绪激动时诱发胸痛，休息数分钟可缓解。', description: '伴随运动后胸痛的情绪激动时诱发胸痛，休息数分钟可缓解。' }
  ],
  'chest-撕裂性胸痛': [
    { id: 'chest-撕裂性胸痛---', name: '胸部', description: '伴随撕裂性胸痛的胸部' },
    { id: 'chest-撕裂性胸痛--------', name: '背部突发剧烈的', description: '伴随撕裂性胸痛的背部突发剧烈的' },
    { id: 'chest-撕裂性胸痛-------------------', name: '撕裂样或刀割样剧痛，疼痛位置可移动。', description: '伴随撕裂性胸痛的撕裂样或刀割样剧痛，疼痛位置可移动。' }
  ],
  'chest-心悸': [
    { id: 'chest-心悸-------', name: '感觉心跳过快', description: '伴随心悸的感觉心跳过快' },
    { id: 'chest-心悸---', name: '过慢', description: '伴随心悸的过慢' },
    { id: 'chest-心悸----------------', name: '沉重或不规律（心慌），可伴头晕', description: '伴随心悸的沉重或不规律（心慌），可伴头晕' },
    { id: 'chest-心悸---', name: '胸闷', description: '伴随心悸的胸闷' },
    { id: 'chest-心悸----', name: '乏力。', description: '伴随心悸的乏力。' }
  ],
  'chest-气短': [
    { id: 'chest-气短---------------', name: '轻微活动或静息时即感呼吸急促', description: '伴随气短的轻微活动或静息时即感呼吸急促' },
    { id: 'chest-气短---------------', name: '气不够用，常需加深加快呼吸。', description: '伴随气短的气不够用，常需加深加快呼吸。' }
  ],
  'chest-咳嗽': [
    { id: 'chest-咳嗽---------', name: '干咳或咳痰（白痰', description: '伴随咳嗽的干咳或咳痰（白痰' },
    { id: 'chest-咳嗽---------', name: '黄痰），可伴咽痒', description: '伴随咳嗽的黄痰），可伴咽痒' },
    { id: 'chest-咳嗽---', name: '胸痛', description: '伴随咳嗽的胸痛' },
    { id: 'chest-咳嗽----', name: '发热。', description: '伴随咳嗽的发热。' }
  ],
  'chest-咯血': [
    { id: 'chest-咯血----------------', name: '痰中带血丝或咳出鲜血，可伴咳嗽', description: '伴随咯血的痰中带血丝或咳出鲜血，可伴咳嗽' },
    { id: 'chest-咯血---', name: '胸痛', description: '伴随咯血的胸痛' },
    { id: 'chest-咯血---', name: '发热', description: '伴随咯血的发热' },
    { id: 'chest-咯血----', name: '盗汗。', description: '伴随咯血的盗汗。' }
  ],
  'chest-胸闷-打嗝-反流': [
    { id: 'chest-胸闷-打嗝-反流---', name: '胸闷', description: '伴随胸闷/打嗝，反流的胸闷' },
    { id: 'chest-胸闷-打嗝-反流---', name: '烧心', description: '伴随胸闷/打嗝，反流的烧心' },
    { id: 'chest-胸闷-打嗝-反流---', name: '反酸', description: '伴随胸闷/打嗝，反流的反酸' },
    { id: 'chest-胸闷-打嗝-反流-----------------', name: '嗳气（打嗝），饭后或平躺时加重。', description: '伴随胸闷/打嗝，反流的嗳气（打嗝），饭后或平躺时加重。' }
  ],
  'chest-吞咽困难': [
    { id: 'chest-吞咽困难-------------', name: '吞咽食物或饮水时有梗阻感', description: '伴随吞咽困难的吞咽食物或饮水时有梗阻感' },
    { id: 'chest-吞咽困难---', name: '疼痛', description: '伴随吞咽困难的疼痛' },
    { id: 'chest-吞咽困难-----------', name: '停滞感，需多次吞咽。', description: '伴随吞咽困难的停滞感，需多次吞咽。' }
  ],
  'chest-出血': [
    { id: 'chest-出血----------', name: '不明原因的皮肤瘀斑', description: '伴随出血的不明原因的皮肤瘀斑' },
    { id: 'chest-出血-----', name: '牙龈出血', description: '伴随出血的牙龈出血' },
    { id: 'chest-出血----------', name: '鼻出血，或伴有发热', description: '伴随出血的鼻出血，或伴有发热' },
    { id: 'chest-出血----', name: '乏力。', description: '伴随出血的乏力。' }
  ],
  'chest-怕热-爱出汗': [
    { id: 'chest-怕热-爱出汗-------------------', name: '异常怕热，安静时也大量出汗，可伴心慌', description: '伴随怕热、爱出汗的异常怕热，安静时也大量出汗，可伴心慌' },
    { id: 'chest-怕热-爱出汗---', name: '手抖', description: '伴随怕热、爱出汗的手抖' },
    { id: 'chest-怕热-爱出汗-----', name: '体重减轻', description: '伴随怕热、爱出汗的体重减轻' },
    { id: 'chest-怕热-爱出汗------', name: '情绪急躁。', description: '伴随怕热、爱出汗的情绪急躁。' }
  ],
  'chest-声音嘶哑': [
    { id: 'chest-声音嘶哑-------', name: '声音变得沙哑', description: '伴随声音嘶哑的声音变得沙哑' },
    { id: 'chest-声音嘶哑--------------', name: '低沉，持续时间长，可伴咽痛', description: '伴随声音嘶哑的低沉，持续时间长，可伴咽痛' },
    { id: 'chest-声音嘶哑---', name: '咳嗽', description: '伴随声音嘶哑的咳嗽' },
    { id: 'chest-声音嘶哑------', name: '饮水呛咳。', description: '伴随声音嘶哑的饮水呛咳。' }
  ],
  'chest-肿胀': [
    { id: 'chest-肿胀-----------------------', name: '脖子前方喉结下部弥漫性或结节性肿大，可伴心慌', description: '伴随肿胀的脖子前方喉结下部弥漫性或结节性肿大，可伴心慌' },
    { id: 'chest-肿胀---', name: '多食', description: '伴随肿胀的多食' },
    { id: 'chest-肿胀------', name: '消瘦或畏寒', description: '伴随肿胀的消瘦或畏寒' },
    { id: 'chest-肿胀----', name: '乏力。', description: '伴随肿胀的乏力。' }
  ],
};