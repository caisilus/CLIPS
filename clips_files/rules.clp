(defrule r1
	(fact_entity (id f46) (name "Твой класс Варвар"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
	(assert (used_rule (rule_id r1)))
)
(defrule r2
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
	(assert (used_rule (rule_id r2)))
)
(defrule r3
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
	(assert (used_rule (rule_id r3)))
)
(defrule r4
	(fact_entity (id f49) (name "Твой класс Некромант"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
	(assert (used_rule (rule_id r4)))
)
(defrule r5
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
	(assert (used_rule (rule_id r5)))
)
(defrule r6
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
	(assert (used_rule (rule_id r6)))
)
(defrule r7
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
	(assert (used_rule (rule_id r7)))
)
(defrule r8
	(fact_entity (id f53) (name "Твой класс Маг"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
	(assert (used_rule (rule_id r8)))
)
(defrule r9
	(fact_entity (id f46) (name "Твой класс Варвар"))
	=>
	(assert (fact_entity (id f54) (name "Основы гнева крови")))
	(assert (used_rule (rule_id r9)))
)
(defrule r10
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f54) (name "Основы гнева крови"))
	=>
	(assert (fact_entity (id f55) (name "Развитый гнев крови")))
	(assert (used_rule (rule_id r10)))
)
(defrule r11
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f55) (name "Развитый гнев крови"))
	=>
	(assert (fact_entity (id f56) (name "Искусный гнев крови")))
	(assert (used_rule (rule_id r11)))
)
(defrule r12
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f56) (name "Искусный гнев крови"))
	=>
	(assert (fact_entity (id f57) (name "Абсолютный гнев крови")))
	(assert (used_rule (rule_id r12)))
)
(defrule r13
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f54) (name "Основы гнева крови"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f58) (name "Сила против Магии")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r13)))
)
(defrule r14
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f54) (name "Основы гнева крови"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f59) (name "Подмога")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r14)))
)
(defrule r15
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f54) (name "Основы гнева крови"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f60) (name "Память нашей крови")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r15)))
)
(defrule r16
	(fact_entity (id f55) (name "Развитый гнев крови"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f58) (name "Сила против Магии")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r16)))
)
(defrule r17
	(fact_entity (id f55) (name "Развитый гнев крови"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f59) (name "Подмога")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r17)))
)
(defrule r18
	(fact_entity (id f55) (name "Развитый гнев крови"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f60) (name "Память нашей крови")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r18)))
)
(defrule r19
	(fact_entity (id f56) (name "Искусный гнев крови"))
	=>
	(assert (fact_entity (id f58) (name "Сила против Магии")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r19)))
)
(defrule r20
	(fact_entity (id f56) (name "Искусный гнев крови"))
	=>
	(assert (fact_entity (id f59) (name "Подмога")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r20)))
)
(defrule r21
	(fact_entity (id f56) (name "Искусный гнев крови"))
	=>
	(assert (fact_entity (id f60) (name "Память нашей крови")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r21)))
)
(defrule r22
	(fact_entity (id f58) (name "Сила против Магии"))
	(fact_entity (id f59) (name "Подмога"))
	(fact_entity (id f60) (name "Память нашей крови"))
	(fact_entity (id f173) (name "Серный дождь"))
	(fact_entity (id f143) (name "Воодушевление"))
	(fact_entity (id f112) (name "Дьявольский удар"))
	=>
	(assert (fact_entity (id f61) (name "Чистая ярость")))
	(assert (used_rule (rule_id r22)))
)
(defrule r23
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	=>
	(assert (fact_entity (id f174) (name "Основы открытия врат")))
	(assert (used_rule (rule_id r23)))
)
(defrule r24
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f174) (name "Основы открытия врат"))
	=>
	(assert (fact_entity (id f175) (name "Развитое открытие врат")))
	(assert (used_rule (rule_id r24)))
)
(defrule r25
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f175) (name "Развитое открытие врат"))
	=>
	(assert (fact_entity (id f176) (name "Искусное открытие врат")))
	(assert (used_rule (rule_id r25)))
)
(defrule r26
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f176) (name "Искусное открытие врат"))
	=>
	(assert (fact_entity (id f177) (name "Абсолютное открытие врат")))
	(assert (used_rule (rule_id r26)))
)
(defrule r27
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f174) (name "Основы открытия врат"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f178) (name "Пожиратель душ")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r27)))
)
(defrule r28
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f174) (name "Основы открытия врат"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f179) (name "Знак проклятого")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r28)))
)
(defrule r29
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f174) (name "Основы открытия врат"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f180) (name "Адский огонь")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r29)))
)
(defrule r30
	(fact_entity (id f175) (name "Развитое открытие врат"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f178) (name "Пожиратель душ")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r30)))
)
(defrule r31
	(fact_entity (id f175) (name "Развитое открытие врат"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f179) (name "Знак проклятого")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r31)))
)
(defrule r32
	(fact_entity (id f175) (name "Развитое открытие врат"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f180) (name "Адский огонь")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r32)))
)
(defrule r33
	(fact_entity (id f176) (name "Искусное открытие врат"))
	=>
	(assert (fact_entity (id f178) (name "Пожиратель душ")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r33)))
)
(defrule r34
	(fact_entity (id f176) (name "Искусное открытие врат"))
	=>
	(assert (fact_entity (id f179) (name "Знак проклятого")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r34)))
)
(defrule r35
	(fact_entity (id f176) (name "Искусное открытие врат"))
	=>
	(assert (fact_entity (id f180) (name "Адский огонь")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r35)))
)
(defrule r36
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	=>
	(assert (fact_entity (id f248) (name "Основы контрудара")))
	(assert (used_rule (rule_id r36)))
)
(defrule r37
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f248) (name "Основы контрудара"))
	=>
	(assert (fact_entity (id f249) (name "Развитый контрудар")))
	(assert (used_rule (rule_id r37)))
)
(defrule r38
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f249) (name "Развитый контрудар"))
	=>
	(assert (fact_entity (id f250) (name "Искусный контрудар")))
	(assert (used_rule (rule_id r38)))
)
(defrule r39
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f250) (name "Искусный контрудар"))
	=>
	(assert (fact_entity (id f251) (name "Совершенный контрудар")))
	(assert (used_rule (rule_id r39)))
)
(defrule r40
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f248) (name "Основы контрудара"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f252) (name "Надзор")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r40)))
)
(defrule r41
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f248) (name "Основы контрудара"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f253) (name "Опытный военачальник")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r41)))
)
(defrule r42
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f248) (name "Основы контрудара"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f254) (name "Молитва")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r42)))
)
(defrule r43
	(fact_entity (id f249) (name "Развитый контрудар"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f252) (name "Надзор")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r43)))
)
(defrule r44
	(fact_entity (id f249) (name "Развитый контрудар"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f253) (name "Опытный военачальник")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r44)))
)
(defrule r45
	(fact_entity (id f249) (name "Развитый контрудар"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f254) (name "Молитва")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r45)))
)
(defrule r46
	(fact_entity (id f250) (name "Искусный контрудар"))
	=>
	(assert (fact_entity (id f252) (name "Надзор")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r46)))
)
(defrule r47
	(fact_entity (id f250) (name "Искусный контрудар"))
	=>
	(assert (fact_entity (id f253) (name "Опытный военачальник")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r47)))
)
(defrule r48
	(fact_entity (id f250) (name "Искусный контрудар"))
	=>
	(assert (fact_entity (id f254) (name "Молитва")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r48)))
)
(defrule r49
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	=>
	(assert (fact_entity (id f273) (name "Мститель (новичок)")))
	(assert (used_rule (rule_id r49)))
)
(defrule r50
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f273) (name "Мститель (новичок)"))
	=>
	(assert (fact_entity (id f274) (name "Обученный мститель")))
	(assert (used_rule (rule_id r50)))
)
(defrule r51
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f274) (name "Обученный мститель"))
	=>
	(assert (fact_entity (id f275) (name "Искусный мститель")))
	(assert (used_rule (rule_id r51)))
)
(defrule r52
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f275) (name "Искусный мститель"))
	=>
	(assert (fact_entity (id f276) (name "Безжалостный мститель")))
	(assert (used_rule (rule_id r52)))
)
(defrule r53
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f273) (name "Мститель (новичок)"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f277) (name "Смертельный выстрел")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r53)))
)
(defrule r54
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f273) (name "Мститель (новичок)"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f278) (name "Заколдованная стрела")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r54)))
)
(defrule r55
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f273) (name "Мститель (новичок)"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f279) (name "Ливень из стрел")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r55)))
)
(defrule r56
	(fact_entity (id f274) (name "Обученный мститель"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f277) (name "Смертельный выстрел")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r56)))
)
(defrule r57
	(fact_entity (id f274) (name "Обученный мститель"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f278) (name "Заколдованная стрела")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r57)))
)
(defrule r58
	(fact_entity (id f274) (name "Обученный мститель"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f279) (name "Ливень из стрел")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r58)))
)
(defrule r59
	(fact_entity (id f275) (name "Искусный мститель"))
	=>
	(assert (fact_entity (id f277) (name "Смертельный выстрел")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r59)))
)
(defrule r60
	(fact_entity (id f275) (name "Искусный мститель"))
	=>
	(assert (fact_entity (id f278) (name "Заколдованная стрела")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r60)))
)
(defrule r61
	(fact_entity (id f275) (name "Искусный мститель"))
	=>
	(assert (fact_entity (id f279) (name "Ливень из стрел")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r61)))
)
(defrule r62
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	=>
	(assert (fact_entity (id f286) (name "Основы знания рун")))
	(assert (used_rule (rule_id r62)))
)
(defrule r63
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f286) (name "Основы знания рун"))
	=>
	(assert (fact_entity (id f287) (name "Развитое знание рун")))
	(assert (used_rule (rule_id r63)))
)
(defrule r64
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f287) (name "Развитое знание рун"))
	=>
	(assert (fact_entity (id f288) (name "Совершенное знание рун")))
	(assert (used_rule (rule_id r64)))
)
(defrule r65
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f288) (name "Совершенное знание рун"))
	=>
	(assert (fact_entity (id f289) (name "Абсолютное знание рун")))
	(assert (used_rule (rule_id r65)))
)
(defrule r66
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f286) (name "Основы знания рун"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f290) (name "Обновленная руна")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r66)))
)
(defrule r67
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f286) (name "Основы знания рун"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f291) (name "Завершенная руна")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r67)))
)
(defrule r68
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f286) (name "Основы знания рун"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f292) (name "Величайшая руна")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r68)))
)
(defrule r69
	(fact_entity (id f287) (name "Развитое знание рун"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f290) (name "Обновленная руна")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r69)))
)
(defrule r70
	(fact_entity (id f287) (name "Развитое знание рун"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f291) (name "Завершенная руна")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r70)))
)
(defrule r71
	(fact_entity (id f287) (name "Развитое знание рун"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f292) (name "Величайшая руна")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r71)))
)
(defrule r72
	(fact_entity (id f288) (name "Совершенное знание рун"))
	=>
	(assert (fact_entity (id f290) (name "Обновленная руна")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r72)))
)
(defrule r73
	(fact_entity (id f288) (name "Совершенное знание рун"))
	=>
	(assert (fact_entity (id f291) (name "Завершенная руна")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r73)))
)
(defrule r74
	(fact_entity (id f288) (name "Совершенное знание рун"))
	=>
	(assert (fact_entity (id f292) (name "Величайшая руна")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r74)))
)
(defrule r75
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	=>
	(assert (fact_entity (id f301) (name "Основы неодолимой магии")))
	(assert (used_rule (rule_id r75)))
)
(defrule r76
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f301) (name "Основы неодолимой магии"))
	=>
	(assert (fact_entity (id f302) (name "Сильная неодолимая магия")))
	(assert (used_rule (rule_id r76)))
)
(defrule r77
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f302) (name "Сильная неодолимая магия"))
	=>
	(assert (fact_entity (id f303) (name "Искусная неодолимая магия")))
	(assert (used_rule (rule_id r77)))
)
(defrule r78
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f303) (name "Искусная неодолимая магия"))
	=>
	(assert (fact_entity (id f304) (name "Абсолютная неодолимая магия")))
	(assert (used_rule (rule_id r78)))
)
(defrule r79
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f301) (name "Основы неодолимой магии"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f305) (name "Чувство стихий")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r79)))
)
(defrule r80
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f301) (name "Основы неодолимой магии"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f306) (name "Волна Аркан")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r80)))
)
(defrule r81
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f301) (name "Основы неодолимой магии"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f307) (name "Тёмный ритуал")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r81)))
)
(defrule r82
	(fact_entity (id f302) (name "Сильная неодолимая магия"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f305) (name "Чувство стихий")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r82)))
)
(defrule r83
	(fact_entity (id f302) (name "Сильная неодолимая магия"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f306) (name "Волна Аркан")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r83)))
)
(defrule r84
	(fact_entity (id f302) (name "Сильная неодолимая магия"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f307) (name "Тёмный ритуал")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r84)))
)
(defrule r85
	(fact_entity (id f303) (name "Искусная неодолимая магия"))
	=>
	(assert (fact_entity (id f305) (name "Чувство стихий")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r85)))
)
(defrule r86
	(fact_entity (id f303) (name "Искусная неодолимая магия"))
	=>
	(assert (fact_entity (id f306) (name "Волна Аркан")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r86)))
)
(defrule r87
	(fact_entity (id f303) (name "Искусная неодолимая магия"))
	=>
	(assert (fact_entity (id f307) (name "Тёмный ритуал")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r87)))
)
(defrule r88
	(fact_entity (id f53) (name "Твой класс Маг"))
	=>
	(assert (fact_entity (id f309) (name "Ученик мастера артефактов")))
	(assert (used_rule (rule_id r88)))
)
(defrule r89
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f309) (name "Ученик мастера артефактов"))
	=>
	(assert (fact_entity (id f310) (name "Мастер артефактов")))
	(assert (used_rule (rule_id r89)))
)
(defrule r90
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f310) (name "Мастер артефактов"))
	=>
	(assert (fact_entity (id f311) (name "Искусный мастер артефактов")))
	(assert (used_rule (rule_id r90)))
)
(defrule r91
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f311) (name "Искусный мастер артефактов"))
	=>
	(assert (fact_entity (id f312) (name "Величайший мастер артефактов")))
	(assert (used_rule (rule_id r91)))
)
(defrule r92
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f309) (name "Ученик мастера артефактов"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f313) (name "Знак волшебства")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r92)))
)
(defrule r93
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f309) (name "Ученик мастера артефактов"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f314) (name "Волшебное зеркало")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r93)))
)
(defrule r94
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f309) (name "Ученик мастера артефактов"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f315) (name "Поглощение артефакта")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
	(assert (used_rule (rule_id r94)))
)
(defrule r95
	(fact_entity (id f310) (name "Мастер артефактов"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f313) (name "Знак волшебства")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r95)))
)
(defrule r96
	(fact_entity (id f310) (name "Мастер артефактов"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f314) (name "Волшебное зеркало")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r96)))
)
(defrule r97
	(fact_entity (id f310) (name "Мастер артефактов"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f315) (name "Поглощение артефакта")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
	(assert (used_rule (rule_id r97)))
)
(defrule r98
	(fact_entity (id f311) (name "Искусный мастер артефактов"))
	=>
	(assert (fact_entity (id f313) (name "Знак волшебства")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r98)))
)
(defrule r99
	(fact_entity (id f311) (name "Искусный мастер артефактов"))
	=>
	(assert (fact_entity (id f314) (name "Волшебное зеркало")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r99)))
)
(defrule r100
	(fact_entity (id f311) (name "Искусный мастер артефактов"))
	=>
	(assert (fact_entity (id f315) (name "Поглощение артефакта")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
	(assert (used_rule (rule_id r100)))
)
(defrule r101
	(fact_entity (id f40) (name "Взято ноль веток навыков"))
	(fact_entity (id ~f41) (name _))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения")))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков")))
	(assert (used_rule (rule_id r101)))
)
(defrule r102
	(fact_entity (id f41) (name "Взята одна ветока навыков"))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения")))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков")))
	(assert (used_rule (rule_id r102)))
)
(defrule r103
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
	(assert (used_rule (rule_id r103)))
)
(defrule r104
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
	(assert (used_rule (rule_id r104)))
)
(defrule r105
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
	(assert (used_rule (rule_id r105)))
)
(defrule r106
	(fact_entity (id f103) (name "Основы нападения"))
	=>
	(assert (fact_entity (id f104) (name "Продвинутое нападение")))
	(assert (used_rule (rule_id r106)))
)
(defrule r107
	(fact_entity (id f104) (name "Продвинутое нападение"))
	=>
	(assert (fact_entity (id f105) (name "Экспертное нападение")))
	(assert (used_rule (rule_id r107)))
)
(defrule r108
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f104) (name "Продвинутое нападение"))
	(fact_entity (id f106) (name "Стрельба"))
	(fact_entity (id ~f20) (name _))
	=>
	(assert (fact_entity (id f109) (name "Огненные стрелы")))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки")))
	(assert (used_rule (rule_id r108)))
)
(defrule r109
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id f106) (name "Стрельба"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f109) (name "Огненные стрелы")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
	(assert (used_rule (rule_id r109)))
)
(defrule r110
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f104) (name "Продвинутое нападение"))
	(fact_entity (id f107) (name "Боевое безумие"))
	(fact_entity (id f59) (name "Подмога"))
	(fact_entity (id ~f20) (name _))
	=>
	(assert (fact_entity (id f110) (name "Оглушающий удар")))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки")))
	(assert (used_rule (rule_id r110)))
)
(defrule r111
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id f107) (name "Боевое безумие"))
	(fact_entity (id f59) (name "Подмога"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f110) (name "Оглушающий удар")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
	(assert (used_rule (rule_id r111)))
)
(defrule r112
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f104) (name "Продвинутое нападение"))
	(fact_entity (id f107) (name "Боевое безумие"))
	(fact_entity (id f141) (name "Упоение битвой"))
	(fact_entity (id ~f20) (name _))
	=>
	(assert (fact_entity (id f111) (name "Воздаяние")))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки")))
	(assert (used_rule (rule_id r112)))
)
(defrule r113
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id f107) (name "Боевое безумие"))
	(fact_entity (id f141) (name "Упоение битвой"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f111) (name "Воздаяние")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
	(assert (used_rule (rule_id r113)))
)
(defrule r114
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id f110) (name "Оглушающий удар"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f112) (name "Дьявольский удар")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
	(assert (used_rule (rule_id r114)))
)
(defrule r115
	(fact_entity (id f103) (name "Основы нападения"))
	(fact_entity (id ~f19) (name _))
	=>
	(assert (fact_entity (id f106) (name "Стрельба")))
	(assert (fact_entity (id f19) (name "Взят один навык Атаки")))
	(assert (used_rule (rule_id r115)))
)
(defrule r116
	(fact_entity (id f103) (name "Основы нападения"))
	(fact_entity (id ~f19) (name _))
	=>
	(assert (fact_entity (id f107) (name "Боевое безумие")))
	(assert (fact_entity (id f19) (name "Взят один навык Атаки")))
	(assert (used_rule (rule_id r116)))
)
(defrule r117
	(fact_entity (id f103) (name "Основы нападения"))
	(fact_entity (id ~f19) (name _))
	=>
	(assert (fact_entity (id f108) (name "Тактика")))
	(assert (fact_entity (id f19) (name "Взят один навык Атаки")))
	(assert (used_rule (rule_id r117)))
)
(defrule r118
	(fact_entity (id f104) (name "Продвинутое нападение"))
	(fact_entity (id ~f20) (name _))
	=>
	(assert (fact_entity (id f106) (name "Стрельба")))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки")))
	(assert (used_rule (rule_id r118)))
)
(defrule r119
	(fact_entity (id f104) (name "Продвинутое нападение"))
	(fact_entity (id ~f20) (name _))
	=>
	(assert (fact_entity (id f107) (name "Боевое безумие")))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки")))
	(assert (used_rule (rule_id r119)))
)
(defrule r120
	(fact_entity (id f104) (name "Продвинутое нападение"))
	(fact_entity (id ~f20) (name _))
	=>
	(assert (fact_entity (id f108) (name "Тактика")))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки")))
	(assert (used_rule (rule_id r120)))
)
(defrule r121
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f106) (name "Стрельба")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
	(assert (used_rule (rule_id r121)))
)
(defrule r122
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f107) (name "Боевое безумие")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
	(assert (used_rule (rule_id r122)))
)
(defrule r123
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f108) (name "Тактика")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
	(assert (used_rule (rule_id r123)))
)
(defrule r124
	(fact_entity (id f40) (name "Взято ноль веток навыков"))
	(fact_entity (id ~f41) (name _))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты")))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков")))
	(assert (used_rule (rule_id r124)))
)
(defrule r125
	(fact_entity (id f41) (name "Взята одна ветока навыков"))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты")))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков")))
	(assert (used_rule (rule_id r125)))
)
(defrule r126
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
	(assert (used_rule (rule_id r126)))
)
(defrule r127
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
	(assert (used_rule (rule_id r127)))
)
(defrule r128
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
	(assert (used_rule (rule_id r128)))
)
(defrule r129
	(fact_entity (id f113) (name "Основы защиты"))
	=>
	(assert (fact_entity (id f114) (name "Продвинутая защита")))
	(assert (used_rule (rule_id r129)))
)
(defrule r130
	(fact_entity (id f114) (name "Продвинутая защита"))
	=>
	(assert (fact_entity (id f115) (name "Экспертная защита")))
	(assert (used_rule (rule_id r130)))
)
(defrule r131
	(fact_entity (id f113) (name "Основы защиты"))
	(fact_entity (id ~f22) (name _))
	=>
	(assert (fact_entity (id f116) (name "Уклонение")))
	(assert (fact_entity (id f22) (name "Взят один навык Защиты")))
	(assert (used_rule (rule_id r131)))
)
(defrule r132
	(fact_entity (id f113) (name "Основы защиты"))
	(fact_entity (id ~f22) (name _))
	=>
	(assert (fact_entity (id f117) (name "Отражение")))
	(assert (fact_entity (id f22) (name "Взят один навык Защиты")))
	(assert (used_rule (rule_id r132)))
)
(defrule r133
	(fact_entity (id f113) (name "Основы защиты"))
	(fact_entity (id ~f22) (name _))
	=>
	(assert (fact_entity (id f118) (name "Стойкость")))
	(assert (fact_entity (id f22) (name "Взят один навык Защиты")))
	(assert (used_rule (rule_id r133)))
)
(defrule r134
	(fact_entity (id f114) (name "Продвинутая защита"))
	(fact_entity (id ~f23) (name _))
	=>
	(assert (fact_entity (id f116) (name "Уклонение")))
	(assert (fact_entity (id f23) (name "Взято два навыка Защиты")))
	(assert (used_rule (rule_id r134)))
)
(defrule r135
	(fact_entity (id f114) (name "Продвинутая защита"))
	(fact_entity (id ~f23) (name _))
	=>
	(assert (fact_entity (id f117) (name "Отражение")))
	(assert (fact_entity (id f23) (name "Взято два навыка Защиты")))
	(assert (used_rule (rule_id r135)))
)
(defrule r136
	(fact_entity (id f114) (name "Продвинутая защита"))
	(fact_entity (id ~f23) (name _))
	=>
	(assert (fact_entity (id f118) (name "Стойкость")))
	(assert (fact_entity (id f23) (name "Взято два навыка Защиты")))
	(assert (used_rule (rule_id r136)))
)
(defrule r137
	(fact_entity (id f115) (name "Экспертная защита"))
	(fact_entity (id ~f24) (name _))
	=>
	(assert (fact_entity (id f116) (name "Уклонение")))
	(assert (fact_entity (id f24) (name "Взято три навыка Защиты")))
	(assert (used_rule (rule_id r137)))
)
(defrule r138
	(fact_entity (id f115) (name "Экспертная защита"))
	(fact_entity (id ~f24) (name _))
	=>
	(assert (fact_entity (id f117) (name "Отражение")))
	(assert (fact_entity (id f24) (name "Взято три навыка Защиты")))
	(assert (used_rule (rule_id r138)))
)
(defrule r139
	(fact_entity (id f115) (name "Экспертная защита"))
	(fact_entity (id ~f24) (name _))
	=>
	(assert (fact_entity (id f118) (name "Стойкость")))
	(assert (fact_entity (id f24) (name "Взято три навыка Защиты")))
	(assert (used_rule (rule_id r139)))
)
(defrule r140
	(fact_entity (id f40) (name "Взято ноль веток навыков"))
	(fact_entity (id ~f41) (name _))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи")))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков")))
	(assert (used_rule (rule_id r140)))
)
(defrule r141
	(fact_entity (id f41) (name "Взята одна ветока навыков"))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи")))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков")))
	(assert (used_rule (rule_id r141)))
)
(defrule r142
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
	(assert (used_rule (rule_id r142)))
)
(defrule r143
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
	(assert (used_rule (rule_id r143)))
)
(defrule r144
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
	(assert (used_rule (rule_id r144)))
)
(defrule r145
	(fact_entity (id f124) (name "Основы удачи"))
	=>
	(assert (fact_entity (id f125) (name "Продвинутая удача")))
	(assert (used_rule (rule_id r145)))
)
(defrule r146
	(fact_entity (id f125) (name "Продвинутая удача"))
	=>
	(assert (fact_entity (id f126) (name "Экспертная удача")))
	(assert (used_rule (rule_id r146)))
)
(defrule r147
	(fact_entity (id f124) (name "Основы удачи"))
	(fact_entity (id ~f25) (name _))
	=>
	(assert (fact_entity (id f127) (name "Магическое сопротивление")))
	(assert (fact_entity (id f25) (name "Взят один навык Удачи")))
	(assert (used_rule (rule_id r147)))
)
(defrule r148
	(fact_entity (id f124) (name "Основы удачи"))
	(fact_entity (id ~f25) (name _))
	=>
	(assert (fact_entity (id f128) (name "Удача в пути")))
	(assert (fact_entity (id f25) (name "Взят один навык Удачи")))
	(assert (used_rule (rule_id r148)))
)
(defrule r149
	(fact_entity (id f124) (name "Основы удачи"))
	(fact_entity (id ~f25) (name _))
	=>
	(assert (fact_entity (id f129) (name "Солдатская удача")))
	(assert (fact_entity (id f25) (name "Взят один навык Удачи")))
	(assert (used_rule (rule_id r149)))
)
(defrule r150
	(fact_entity (id f125) (name "Продвинутая удача"))
	(fact_entity (id ~f26) (name _))
	=>
	(assert (fact_entity (id f127) (name "Магическое сопротивление")))
	(assert (fact_entity (id f26) (name "Взято два навыка Удачи")))
	(assert (used_rule (rule_id r150)))
)
(defrule r151
	(fact_entity (id f125) (name "Продвинутая удача"))
	(fact_entity (id ~f26) (name _))
	=>
	(assert (fact_entity (id f128) (name "Удача в пути")))
	(assert (fact_entity (id f26) (name "Взято два навыка Удачи")))
	(assert (used_rule (rule_id r151)))
)
(defrule r152
	(fact_entity (id f125) (name "Продвинутая удача"))
	(fact_entity (id ~f26) (name _))
	=>
	(assert (fact_entity (id f129) (name "Солдатская удача")))
	(assert (fact_entity (id f26) (name "Взято два навыка Удачи")))
	(assert (used_rule (rule_id r152)))
)
(defrule r153
	(fact_entity (id f126) (name "Экспертная удача"))
	(fact_entity (id ~f27) (name _))
	=>
	(assert (fact_entity (id f127) (name "Магическое сопротивление")))
	(assert (fact_entity (id f27) (name "Взято три навыка Удачи")))
	(assert (used_rule (rule_id r153)))
)
(defrule r154
	(fact_entity (id f126) (name "Экспертная удача"))
	(fact_entity (id ~f27) (name _))
	=>
	(assert (fact_entity (id f128) (name "Удача в пути")))
	(assert (fact_entity (id f27) (name "Взято три навыка Удачи")))
	(assert (used_rule (rule_id r154)))
)
(defrule r155
	(fact_entity (id f126) (name "Экспертная удача"))
	(fact_entity (id ~f27) (name _))
	=>
	(assert (fact_entity (id f129) (name "Солдатская удача")))
	(assert (fact_entity (id f27) (name "Взято три навыка Удачи")))
	(assert (used_rule (rule_id r155)))
)
(defrule r156
	(fact_entity (id f40) (name "Взято ноль веток навыков"))
	(fact_entity (id ~f41) (name _))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства")))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков")))
	(assert (used_rule (rule_id r156)))
)
(defrule r157
	(fact_entity (id f41) (name "Взята одна ветока навыков"))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства")))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков")))
	(assert (used_rule (rule_id r157)))
)
(defrule r158
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
	(assert (used_rule (rule_id r158)))
)
(defrule r159
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
	(assert (used_rule (rule_id r159)))
)
(defrule r160
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
	(assert (used_rule (rule_id r160)))
)
(defrule r161
	(fact_entity (id f134) (name "Основы лидерства"))
	=>
	(assert (fact_entity (id f135) (name "Продвинутое лидерство")))
	(assert (used_rule (rule_id r161)))
)
(defrule r162
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	=>
	(assert (fact_entity (id f136) (name "Экспертное лидерство")))
	(assert (used_rule (rule_id r162)))
)
(defrule r163
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	(fact_entity (id f139) (name "Сбор войск"))
	(fact_entity (id ~f29) (name _))
	=>
	(assert (fact_entity (id f142) (name "Аура скорости")))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства")))
	(assert (used_rule (rule_id r163)))
)
(defrule r164
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id f139) (name "Сбор войск"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f142) (name "Аура скорости")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
	(assert (used_rule (rule_id r164)))
)
(defrule r165
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	(fact_entity (id f139) (name "Сбор войск"))
	(fact_entity (id f60) (name "Память нашей крови"))
	(fact_entity (id ~f29) (name _))
	=>
	(assert (fact_entity (id f141) (name "Упоение битвой")))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства")))
	(assert (used_rule (rule_id r165)))
)
(defrule r166
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id f139) (name "Сбор войск"))
	(fact_entity (id f60) (name "Память нашей крови"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f141) (name "Упоение битвой")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
	(assert (used_rule (rule_id r166)))
)
(defrule r167
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	(fact_entity (id f137) (name "Дипломатия"))
	(fact_entity (id ~f29) (name _))
	=>
	(assert (fact_entity (id f140) (name "Сопереживание")))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства")))
	(assert (used_rule (rule_id r167)))
)
(defrule r168
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id f137) (name "Дипломатия"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f140) (name "Сопереживание")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
	(assert (used_rule (rule_id r168)))
)
(defrule r169
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id f141) (name "Упоение битвой"))
	(fact_entity (id f110) (name "Оглушающий удар"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f143) (name "Воодушевление")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
	(assert (used_rule (rule_id r169)))
)
(defrule r170
	(fact_entity (id f134) (name "Основы лидерства"))
	(fact_entity (id ~f28) (name _))
	=>
	(assert (fact_entity (id f137) (name "Дипломатия")))
	(assert (fact_entity (id f28) (name "Взят один навык Лидерства")))
	(assert (used_rule (rule_id r170)))
)
(defrule r171
	(fact_entity (id f134) (name "Основы лидерства"))
	(fact_entity (id ~f28) (name _))
	=>
	(assert (fact_entity (id f138) (name "Управление казной")))
	(assert (fact_entity (id f28) (name "Взят один навык Лидерства")))
	(assert (used_rule (rule_id r171)))
)
(defrule r172
	(fact_entity (id f134) (name "Основы лидерства"))
	(fact_entity (id ~f28) (name _))
	=>
	(assert (fact_entity (id f139) (name "Сбор войск")))
	(assert (fact_entity (id f28) (name "Взят один навык Лидерства")))
	(assert (used_rule (rule_id r172)))
)
(defrule r173
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	(fact_entity (id ~f29) (name _))
	=>
	(assert (fact_entity (id f137) (name "Дипломатия")))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства")))
	(assert (used_rule (rule_id r173)))
)
(defrule r174
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	(fact_entity (id ~f29) (name _))
	=>
	(assert (fact_entity (id f138) (name "Управление казной")))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства")))
	(assert (used_rule (rule_id r174)))
)
(defrule r175
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	(fact_entity (id ~f29) (name _))
	=>
	(assert (fact_entity (id f139) (name "Сбор войск")))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства")))
	(assert (used_rule (rule_id r175)))
)
(defrule r176
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f137) (name "Дипломатия")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
	(assert (used_rule (rule_id r176)))
)
(defrule r177
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f138) (name "Управление казной")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
	(assert (used_rule (rule_id r177)))
)
(defrule r178
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f139) (name "Сбор войск")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
	(assert (used_rule (rule_id r178)))
)
(defrule r179
	(fact_entity (id f40) (name "Взято ноль веток навыков"))
	(fact_entity (id ~f41) (name _))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики")))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков")))
	(assert (used_rule (rule_id r179)))
)
(defrule r180
	(fact_entity (id f41) (name "Взята одна ветока навыков"))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики")))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков")))
	(assert (used_rule (rule_id r180)))
)
(defrule r181
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
	(assert (used_rule (rule_id r181)))
)
(defrule r182
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
	(assert (used_rule (rule_id r182)))
)
(defrule r183
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
	(assert (used_rule (rule_id r183)))
)
(defrule r184
	(fact_entity (id f144) (name "Основы логистики"))
	=>
	(assert (fact_entity (id f145) (name "Развитая логистика")))
	(assert (used_rule (rule_id r184)))
)
(defrule r185
	(fact_entity (id f145) (name "Развитая логистика"))
	=>
	(assert (fact_entity (id f146) (name "Искусная логистика")))
	(assert (used_rule (rule_id r185)))
)
(defrule r186
	(fact_entity (id f144) (name "Основы логистики"))
	(fact_entity (id ~f31) (name _))
	=>
	(assert (fact_entity (id f147) (name "Навигация")))
	(assert (fact_entity (id f31) (name "Взят один навык Логистики")))
	(assert (used_rule (rule_id r186)))
)
(defrule r187
	(fact_entity (id f144) (name "Основы логистики"))
	(fact_entity (id ~f31) (name _))
	=>
	(assert (fact_entity (id f148) (name "Нахождение пути")))
	(assert (fact_entity (id f31) (name "Взят один навык Логистики")))
	(assert (used_rule (rule_id r187)))
)
(defrule r188
	(fact_entity (id f144) (name "Основы логистики"))
	(fact_entity (id ~f31) (name _))
	=>
	(assert (fact_entity (id f149) (name "Разведка")))
	(assert (fact_entity (id f31) (name "Взят один навык Логистики")))
	(assert (used_rule (rule_id r188)))
)
(defrule r189
	(fact_entity (id f145) (name "Развитая логистика"))
	(fact_entity (id ~f32) (name _))
	=>
	(assert (fact_entity (id f147) (name "Навигация")))
	(assert (fact_entity (id f32) (name "Взято два навыка Логистики")))
	(assert (used_rule (rule_id r189)))
)
(defrule r190
	(fact_entity (id f145) (name "Развитая логистика"))
	(fact_entity (id ~f32) (name _))
	=>
	(assert (fact_entity (id f148) (name "Нахождение пути")))
	(assert (fact_entity (id f32) (name "Взято два навыка Логистики")))
	(assert (used_rule (rule_id r190)))
)
(defrule r191
	(fact_entity (id f145) (name "Развитая логистика"))
	(fact_entity (id ~f32) (name _))
	=>
	(assert (fact_entity (id f149) (name "Разведка")))
	(assert (fact_entity (id f32) (name "Взято два навыка Логистики")))
	(assert (used_rule (rule_id r191)))
)
(defrule r192
	(fact_entity (id f146) (name "Искусная логистика"))
	(fact_entity (id ~f33) (name _))
	=>
	(assert (fact_entity (id f147) (name "Навигация")))
	(assert (fact_entity (id f33) (name "Взято три навыка Логистики")))
	(assert (used_rule (rule_id r192)))
)
(defrule r193
	(fact_entity (id f146) (name "Искусная логистика"))
	(fact_entity (id ~f33) (name _))
	=>
	(assert (fact_entity (id f148) (name "Нахождение пути")))
	(assert (fact_entity (id f33) (name "Взято три навыка Логистики")))
	(assert (used_rule (rule_id r193)))
)
(defrule r194
	(fact_entity (id f146) (name "Искусная логистика"))
	(fact_entity (id ~f33) (name _))
	=>
	(assert (fact_entity (id f149) (name "Разведка")))
	(assert (fact_entity (id f33) (name "Взято три навыка Логистики")))
	(assert (used_rule (rule_id r194)))
)
(defrule r195
	(fact_entity (id f40) (name "Взято ноль веток навыков"))
	(fact_entity (id ~f41) (name _))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами")))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков")))
	(assert (used_rule (rule_id r195)))
)
(defrule r196
	(fact_entity (id f41) (name "Взята одна ветока навыков"))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами")))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков")))
	(assert (used_rule (rule_id r196)))
)
(defrule r197
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
	(assert (used_rule (rule_id r197)))
)
(defrule r198
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
	(assert (used_rule (rule_id r198)))
)
(defrule r199
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
	(assert (used_rule (rule_id r199)))
)
(defrule r200
	(fact_entity (id f164) (name "Основы управления машинами"))
	=>
	(assert (fact_entity (id f165) (name "Продвинутое управление машинами")))
	(assert (used_rule (rule_id r200)))
)
(defrule r201
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	=>
	(assert (fact_entity (id f166) (name "Экспертное управление машинами")))
	(assert (used_rule (rule_id r201)))
)
(defrule r202
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id f167) (name "Баллиста"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f170) (name "Скорострельная баллиста")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
	(assert (used_rule (rule_id r202)))
)
(defrule r203
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id f167) (name "Баллиста"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f170) (name "Скорострельная баллиста")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
	(assert (used_rule (rule_id r203)))
)
(defrule r204
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id f168) (name "Катапульта"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f171) (name "Помощь гоблинов")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
	(assert (used_rule (rule_id r204)))
)
(defrule r205
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id f168) (name "Катапульта"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f171) (name "Помощь гоблинов")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
	(assert (used_rule (rule_id r205)))
)
(defrule r206
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id f169) (name "Палатка первой помощи"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f172) (name "Чумная палатка")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
	(assert (used_rule (rule_id r206)))
)
(defrule r207
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id f169) (name "Палатка первой помощи"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f172) (name "Чумная палатка")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
	(assert (used_rule (rule_id r207)))
)
(defrule r208
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id f171) (name "Помощь гоблинов"))
	(fact_entity (id f58) (name "Сила против Магии"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f173) (name "Серный дождь")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
	(assert (used_rule (rule_id r208)))
)
(defrule r209
	(fact_entity (id f164) (name "Основы управления машинами"))
	(fact_entity (id ~f37) (name _))
	=>
	(assert (fact_entity (id f167) (name "Баллиста")))
	(assert (fact_entity (id f37) (name "Взят один навык Управления машинами")))
	(assert (used_rule (rule_id r209)))
)
(defrule r210
	(fact_entity (id f164) (name "Основы управления машинами"))
	(fact_entity (id ~f37) (name _))
	=>
	(assert (fact_entity (id f168) (name "Катапульта")))
	(assert (fact_entity (id f37) (name "Взят один навык Управления машинами")))
	(assert (used_rule (rule_id r210)))
)
(defrule r211
	(fact_entity (id f164) (name "Основы управления машинами"))
	(fact_entity (id ~f37) (name _))
	=>
	(assert (fact_entity (id f169) (name "Палатка первой помощи")))
	(assert (fact_entity (id f37) (name "Взят один навык Управления машинами")))
	(assert (used_rule (rule_id r211)))
)
(defrule r212
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f167) (name "Баллиста")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
	(assert (used_rule (rule_id r212)))
)
(defrule r213
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f168) (name "Катапульта")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
	(assert (used_rule (rule_id r213)))
)
(defrule r214
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f169) (name "Палатка первой помощи")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
	(assert (used_rule (rule_id r214)))
)
(defrule r215
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f167) (name "Баллиста")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
	(assert (used_rule (rule_id r215)))
)
(defrule r216
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f168) (name "Катапульта")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
	(assert (used_rule (rule_id r216)))
)
(defrule r217
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f169) (name "Палатка первой помощи")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
	(assert (used_rule (rule_id r217)))
)
(defrule r218
	(fact_entity (id f40) (name "Взято ноль веток навыков"))
	(fact_entity (id ~f41) (name _))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f155) (name "Основы образования")))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков")))
	(assert (used_rule (rule_id r218)))
)
(defrule r219
	(fact_entity (id f41) (name "Взята одна ветока навыков"))
	(fact_entity (id ~f42) (name _))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f155) (name "Основы образования")))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков")))
	(assert (used_rule (rule_id r219)))
)
(defrule r220
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f155) (name "Основы образования")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
	(assert (used_rule (rule_id r220)))
)
(defrule r221
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f155) (name "Основы образования")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
	(assert (used_rule (rule_id r221)))
)
(defrule r222
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f155) (name "Основы образования")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
	(assert (used_rule (rule_id r222)))
)
(defrule r223
	(fact_entity (id f155) (name "Основы образования"))
	=>
	(assert (fact_entity (id f156) (name "Продвинутое образование")))
	(assert (used_rule (rule_id r223)))
)
(defrule r224
	(fact_entity (id f156) (name "Продвинутое образование"))
	=>
	(assert (fact_entity (id f157) (name "Экспертное образование")))
	(assert (used_rule (rule_id r224)))
)
(defrule r225
	(fact_entity (id f155) (name "Основы образования"))
	(fact_entity (id ~f34) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f242) (name "Разгадка тайного")))
	(assert (fact_entity (id f34) (name "Взят один навык Образования")))
	(assert (used_rule (rule_id r225)))
)
(defrule r226
	(fact_entity (id f155) (name "Основы образования"))
	(fact_entity (id ~f34) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f243) (name "Ученый")))
	(assert (fact_entity (id f34) (name "Взят один навык Образования")))
	(assert (used_rule (rule_id r226)))
)
(defrule r227
	(fact_entity (id f155) (name "Основы образования"))
	(fact_entity (id ~f34) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f161) (name "Притяжение магии")))
	(assert (used_rule (rule_id r227)))
)
(defrule r228
	(fact_entity (id f156) (name "Продвинутое образование"))
	(fact_entity (id ~f35) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f242) (name "Разгадка тайного")))
	(assert (fact_entity (id f35) (name "Взято два навыка Образования")))
	(assert (used_rule (rule_id r228)))
)
(defrule r229
	(fact_entity (id f156) (name "Продвинутое образование"))
	(fact_entity (id ~f35) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f243) (name "Ученый")))
	(assert (fact_entity (id f35) (name "Взято два навыка Образования")))
	(assert (used_rule (rule_id r229)))
)
(defrule r230
	(fact_entity (id f156) (name "Продвинутое образование"))
	(fact_entity (id ~f35) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f161) (name "Притяжение магии")))
	(assert (fact_entity (id f35) (name "Взято два навыка Образования")))
	(assert (used_rule (rule_id r230)))
)
(defrule r231
	(fact_entity (id f157) (name "Экспертное образование"))
	(fact_entity (id ~f36) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f242) (name "Разгадка тайного")))
	(assert (fact_entity (id f36) (name "Взято три навыка Образования")))
	(assert (used_rule (rule_id r231)))
)
(defrule r232
	(fact_entity (id f157) (name "Экспертное образование"))
	(fact_entity (id ~f36) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f243) (name "Ученый")))
	(assert (fact_entity (id f36) (name "Взято три навыка Образования")))
	(assert (used_rule (rule_id r232)))
)
(defrule r233
	(fact_entity (id f157) (name "Экспертное образование"))
	(fact_entity (id ~f36) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f161) (name "Притяжение магии")))
	(assert (fact_entity (id f36) (name "Взято три навыка Образования")))
	(assert (used_rule (rule_id r233)))
)
