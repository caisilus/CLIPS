(defrule r1
	(fact_entity (id f46) (name "Твой класс Варвар"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
)
(defrule r2
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
)
(defrule r3
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
)
(defrule r4
	(fact_entity (id f49) (name "Твой класс Некромант"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
)
(defrule r5
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
)
(defrule r6
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
)
(defrule r7
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
)
(defrule r8
	(fact_entity (id f53) (name "Твой класс Маг"))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков")))
)
(defrule r9
	(fact_entity (id f46) (name "Твой класс Варвар"))
	=>
	(assert (fact_entity (id f54) (name "Основы гнева крови")))
)
(defrule r10
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f54) (name "Основы гнева крови"))
	=>
	(assert (fact_entity (id f55) (name "Развитый гнев крови")))
)
(defrule r11
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f55) (name "Развитый гнев крови"))
	=>
	(assert (fact_entity (id f56) (name "Искусный гнев крови")))
)
(defrule r12
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f56) (name "Искусный гнев крови"))
	=>
	(assert (fact_entity (id f57) (name "Абсолютный гнев крови")))
)
(defrule r13
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f54) (name "Основы гнева крови"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f58) (name "Сила против Магии")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r14
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f54) (name "Основы гнева крови"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f59) (name "Подмога")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r15
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f54) (name "Основы гнева крови"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f60) (name "Память нашей крови")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r16
	(fact_entity (id f55) (name "Развитый гнев крови"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f58) (name "Сила против Магии")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r17
	(fact_entity (id f55) (name "Развитый гнев крови"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f59) (name "Подмога")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r18
	(fact_entity (id f55) (name "Развитый гнев крови"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f60) (name "Память нашей крови")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r19
	(fact_entity (id f56) (name "Искусный гнев крови"))
	=>
	(assert (fact_entity (id f58) (name "Сила против Магии")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r20
	(fact_entity (id f56) (name "Искусный гнев крови"))
	=>
	(assert (fact_entity (id f59) (name "Подмога")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r21
	(fact_entity (id f56) (name "Искусный гнев крови"))
	=>
	(assert (fact_entity (id f60) (name "Память нашей крови")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
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
)
(defrule r23
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	=>
	(assert (fact_entity (id f174) (name "Основы открытия врат")))
)
(defrule r24
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f174) (name "Основы открытия врат"))
	=>
	(assert (fact_entity (id f175) (name "Развитое открытие врат")))
)
(defrule r25
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f175) (name "Развитое открытие врат"))
	=>
	(assert (fact_entity (id f176) (name "Искусное открытие врат")))
)
(defrule r26
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f176) (name "Искусное открытие врат"))
	=>
	(assert (fact_entity (id f177) (name "Абсолютное открытие врат")))
)
(defrule r27
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f174) (name "Основы открытия врат"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f178) (name "Пожиратель душ")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r28
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f174) (name "Основы открытия врат"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f179) (name "Знак проклятого")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r29
	(fact_entity (id f47) (name "Твой класс П. Демонов"))
	(fact_entity (id f174) (name "Основы открытия врат"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f180) (name "Адский огонь")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r30
	(fact_entity (id f175) (name "Развитое открытие врат"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f178) (name "Пожиратель душ")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r31
	(fact_entity (id f175) (name "Развитое открытие врат"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f179) (name "Знак проклятого")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r32
	(fact_entity (id f175) (name "Развитое открытие врат"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f180) (name "Адский огонь")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r33
	(fact_entity (id f176) (name "Искусное открытие врат"))
	=>
	(assert (fact_entity (id f178) (name "Пожиратель душ")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r34
	(fact_entity (id f176) (name "Искусное открытие врат"))
	=>
	(assert (fact_entity (id f179) (name "Знак проклятого")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r35
	(fact_entity (id f176) (name "Искусное открытие врат"))
	=>
	(assert (fact_entity (id f180) (name "Адский огонь")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r36
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	=>
	(assert (fact_entity (id f248) (name "Основы контрудара")))
)
(defrule r37
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f248) (name "Основы контрудара"))
	=>
	(assert (fact_entity (id f249) (name "Развитый контрудар")))
)
(defrule r38
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f249) (name "Развитый контрудар"))
	=>
	(assert (fact_entity (id f250) (name "Искусный контрудар")))
)
(defrule r39
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f250) (name "Искусный контрудар"))
	=>
	(assert (fact_entity (id f251) (name "Совершенный контрудар")))
)
(defrule r40
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f248) (name "Основы контрудара"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f252) (name "Надзор")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r41
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f248) (name "Основы контрудара"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f253) (name "Опытный военачальник")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r42
	(fact_entity (id f48) (name "Твой класс Рыцарь"))
	(fact_entity (id f248) (name "Основы контрудара"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f254) (name "Молитва")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r43
	(fact_entity (id f249) (name "Развитый контрудар"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f252) (name "Надзор")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r44
	(fact_entity (id f249) (name "Развитый контрудар"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f253) (name "Опытный военачальник")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r45
	(fact_entity (id f249) (name "Развитый контрудар"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f254) (name "Молитва")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r46
	(fact_entity (id f250) (name "Искусный контрудар"))
	=>
	(assert (fact_entity (id f252) (name "Надзор")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r47
	(fact_entity (id f250) (name "Искусный контрудар"))
	=>
	(assert (fact_entity (id f253) (name "Опытный военачальник")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r48
	(fact_entity (id f250) (name "Искусный контрудар"))
	=>
	(assert (fact_entity (id f254) (name "Молитва")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r49
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	=>
	(assert (fact_entity (id f273) (name "Мститель (новичок)")))
)
(defrule r50
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f273) (name "Мститель (новичок)"))
	=>
	(assert (fact_entity (id f274) (name "Обученный мститель")))
)
(defrule r51
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f274) (name "Обученный мститель"))
	=>
	(assert (fact_entity (id f275) (name "Искусный мститель")))
)
(defrule r52
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f275) (name "Искусный мститель"))
	=>
	(assert (fact_entity (id f276) (name "Безжалостный мститель")))
)
(defrule r53
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f273) (name "Мститель (новичок)"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f277) (name "Смертельный выстрел")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r54
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f273) (name "Мститель (новичок)"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f278) (name "Заколдованная стрела")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r55
	(fact_entity (id f50) (name "Твой класс Рейнджер"))
	(fact_entity (id f273) (name "Мститель (новичок)"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f279) (name "Ливень из стрел")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r56
	(fact_entity (id f274) (name "Обученный мститель"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f277) (name "Смертельный выстрел")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r57
	(fact_entity (id f274) (name "Обученный мститель"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f278) (name "Заколдованная стрела")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r58
	(fact_entity (id f274) (name "Обученный мститель"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f279) (name "Ливень из стрел")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r59
	(fact_entity (id f275) (name "Искусный мститель"))
	=>
	(assert (fact_entity (id f277) (name "Смертельный выстрел")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r60
	(fact_entity (id f275) (name "Искусный мститель"))
	=>
	(assert (fact_entity (id f278) (name "Заколдованная стрела")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r61
	(fact_entity (id f275) (name "Искусный мститель"))
	=>
	(assert (fact_entity (id f279) (name "Ливень из стрел")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r62
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	=>
	(assert (fact_entity (id f286) (name "Основы знания рун")))
)
(defrule r63
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f286) (name "Основы знания рун"))
	=>
	(assert (fact_entity (id f287) (name "Развитое знание рун")))
)
(defrule r64
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f287) (name "Развитое знание рун"))
	=>
	(assert (fact_entity (id f288) (name "Совершенное знание рун")))
)
(defrule r65
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f288) (name "Совершенное знание рун"))
	=>
	(assert (fact_entity (id f289) (name "Абсолютное знание рун")))
)
(defrule r66
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f286) (name "Основы знания рун"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f290) (name "Обновленная руна")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r67
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f286) (name "Основы знания рун"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f291) (name "Завершенная руна")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r68
	(fact_entity (id f51) (name "Твой класс Рунный жрец"))
	(fact_entity (id f286) (name "Основы знания рун"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f292) (name "Величайшая руна")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r69
	(fact_entity (id f287) (name "Развитое знание рун"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f290) (name "Обновленная руна")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r70
	(fact_entity (id f287) (name "Развитое знание рун"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f291) (name "Завершенная руна")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r71
	(fact_entity (id f287) (name "Развитое знание рун"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f292) (name "Величайшая руна")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r72
	(fact_entity (id f288) (name "Совершенное знание рун"))
	=>
	(assert (fact_entity (id f290) (name "Обновленная руна")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r73
	(fact_entity (id f288) (name "Совершенное знание рун"))
	=>
	(assert (fact_entity (id f291) (name "Завершенная руна")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r74
	(fact_entity (id f288) (name "Совершенное знание рун"))
	=>
	(assert (fact_entity (id f292) (name "Величайшая руна")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r75
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	=>
	(assert (fact_entity (id f301) (name "Основы неодолимой магии")))
)
(defrule r76
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f301) (name "Основы неодолимой магии"))
	=>
	(assert (fact_entity (id f302) (name "Сильная неодолимая магия")))
)
(defrule r77
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f302) (name "Сильная неодолимая магия"))
	=>
	(assert (fact_entity (id f303) (name "Искусная неодолимая магия")))
)
(defrule r78
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f303) (name "Искусная неодолимая магия"))
	=>
	(assert (fact_entity (id f304) (name "Абсолютная неодолимая магия")))
)
(defrule r79
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f301) (name "Основы неодолимой магии"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f305) (name "Чувство стихий")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r80
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f301) (name "Основы неодолимой магии"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f306) (name "Волна Аркан")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r81
	(fact_entity (id f52) (name "Твой класс Чернокнижник"))
	(fact_entity (id f301) (name "Основы неодолимой магии"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f307) (name "Тёмный ритуал")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r82
	(fact_entity (id f302) (name "Сильная неодолимая магия"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f305) (name "Чувство стихий")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r83
	(fact_entity (id f302) (name "Сильная неодолимая магия"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f306) (name "Волна Аркан")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r84
	(fact_entity (id f302) (name "Сильная неодолимая магия"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f307) (name "Тёмный ритуал")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r85
	(fact_entity (id f303) (name "Искусная неодолимая магия"))
	=>
	(assert (fact_entity (id f305) (name "Чувство стихий")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r86
	(fact_entity (id f303) (name "Искусная неодолимая магия"))
	=>
	(assert (fact_entity (id f306) (name "Волна Аркан")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r87
	(fact_entity (id f303) (name "Искусная неодолимая магия"))
	=>
	(assert (fact_entity (id f307) (name "Тёмный ритуал")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r88
	(fact_entity (id f53) (name "Твой класс Маг"))
	=>
	(assert (fact_entity (id f309) (name "Ученик мастера артефактов")))
)
(defrule r89
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f309) (name "Ученик мастера артефактов"))
	=>
	(assert (fact_entity (id f310) (name "Мастер артефактов")))
)
(defrule r90
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f310) (name "Мастер артефактов"))
	=>
	(assert (fact_entity (id f311) (name "Искусный мастер артефактов")))
)
(defrule r91
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f311) (name "Искусный мастер артефактов"))
	=>
	(assert (fact_entity (id f312) (name "Величайший мастер артефактов")))
)
(defrule r92
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f309) (name "Ученик мастера артефактов"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f313) (name "Знак волшебства")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r93
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f309) (name "Ученик мастера артефактов"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f314) (name "Волшебное зеркало")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r94
	(fact_entity (id f53) (name "Твой класс Маг"))
	(fact_entity (id f309) (name "Ученик мастера артефактов"))
	(fact_entity (id ~f0) (name _))
	=>
	(assert (fact_entity (id f315) (name "Поглощение артефакта")))
	(assert (fact_entity (id f0) (name "Взят один классовый навык")))
)
(defrule r95
	(fact_entity (id f310) (name "Мастер артефактов"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f313) (name "Знак волшебства")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r96
	(fact_entity (id f310) (name "Мастер артефактов"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f314) (name "Волшебное зеркало")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r97
	(fact_entity (id f310) (name "Мастер артефактов"))
	(fact_entity (id ~f1) (name _))
	=>
	(assert (fact_entity (id f315) (name "Поглощение артефакта")))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка")))
)
(defrule r98
	(fact_entity (id f311) (name "Искусный мастер артефактов"))
	=>
	(assert (fact_entity (id f313) (name "Знак волшебства")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r99
	(fact_entity (id f311) (name "Искусный мастер артефактов"))
	=>
	(assert (fact_entity (id f314) (name "Волшебное зеркало")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
)
(defrule r100
	(fact_entity (id f311) (name "Искусный мастер артефактов"))
	=>
	(assert (fact_entity (id f315) (name "Поглощение артефакта")))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка")))
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
)
(defrule r103
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
)
(defrule r104
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
)
(defrule r105
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
)
(defrule r106
	(fact_entity (id f103) (name "Основы нападения"))
	=>
	(assert (fact_entity (id f104) (name "Продвинутое нападение")))
)
(defrule r107
	(fact_entity (id f104) (name "Продвинутое нападение"))
	=>
	(assert (fact_entity (id f105) (name "Экспертное нападение")))
)
(defrule r108
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f104) (name "Продвинутое нападение"))
	(fact_entity (id f106) (name "Стрельба"))
	(fact_entity (id ~f20) (name _))
	=>
	(assert (fact_entity (id f109) (name "Огненные стрелы")))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки")))
)
(defrule r109
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id f106) (name "Стрельба"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f109) (name "Огненные стрелы")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
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
)
(defrule r114
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id f110) (name "Оглушающий удар"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f112) (name "Дьявольский удар")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
)
(defrule r115
	(fact_entity (id f103) (name "Основы нападения"))
	(fact_entity (id ~f19) (name _))
	=>
	(assert (fact_entity (id f106) (name "Стрельба")))
	(assert (fact_entity (id f19) (name "Взят один навык Атаки")))
)
(defrule r116
	(fact_entity (id f103) (name "Основы нападения"))
	(fact_entity (id ~f19) (name _))
	=>
	(assert (fact_entity (id f107) (name "Боевое безумие")))
	(assert (fact_entity (id f19) (name "Взят один навык Атаки")))
)
(defrule r117
	(fact_entity (id f103) (name "Основы нападения"))
	(fact_entity (id ~f19) (name _))
	=>
	(assert (fact_entity (id f108) (name "Тактика")))
	(assert (fact_entity (id f19) (name "Взят один навык Атаки")))
)
(defrule r118
	(fact_entity (id f104) (name "Продвинутое нападение"))
	(fact_entity (id ~f20) (name _))
	=>
	(assert (fact_entity (id f106) (name "Стрельба")))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки")))
)
(defrule r119
	(fact_entity (id f104) (name "Продвинутое нападение"))
	(fact_entity (id ~f20) (name _))
	=>
	(assert (fact_entity (id f107) (name "Боевое безумие")))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки")))
)
(defrule r120
	(fact_entity (id f104) (name "Продвинутое нападение"))
	(fact_entity (id ~f20) (name _))
	=>
	(assert (fact_entity (id f108) (name "Тактика")))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки")))
)
(defrule r121
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f106) (name "Стрельба")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
)
(defrule r122
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f107) (name "Боевое безумие")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
)
(defrule r123
	(fact_entity (id f105) (name "Экспертное нападение"))
	(fact_entity (id ~f21) (name _))
	=>
	(assert (fact_entity (id f108) (name "Тактика")))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки")))
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
)
(defrule r126
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
)
(defrule r127
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
)
(defrule r128
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
)
(defrule r129
	(fact_entity (id f113) (name "Основы защиты"))
	=>
	(assert (fact_entity (id f114) (name "Продвинутая защита")))
)
(defrule r130
	(fact_entity (id f114) (name "Продвинутая защита"))
	=>
	(assert (fact_entity (id f115) (name "Экспертная защита")))
)
(defrule r131
	(fact_entity (id f113) (name "Основы защиты"))
	(fact_entity (id ~f22) (name _))
	=>
	(assert (fact_entity (id f116) (name "Уклонение")))
	(assert (fact_entity (id f22) (name "Взят один навык Защиты")))
)
(defrule r132
	(fact_entity (id f113) (name "Основы защиты"))
	(fact_entity (id ~f22) (name _))
	=>
	(assert (fact_entity (id f117) (name "Отражение")))
	(assert (fact_entity (id f22) (name "Взят один навык Защиты")))
)
(defrule r133
	(fact_entity (id f113) (name "Основы защиты"))
	(fact_entity (id ~f22) (name _))
	=>
	(assert (fact_entity (id f118) (name "Стойкость")))
	(assert (fact_entity (id f22) (name "Взят один навык Защиты")))
)
(defrule r134
	(fact_entity (id f114) (name "Продвинутая защита"))
	(fact_entity (id ~f23) (name _))
	=>
	(assert (fact_entity (id f116) (name "Уклонение")))
	(assert (fact_entity (id f23) (name "Взято два навыка Защиты")))
)
(defrule r135
	(fact_entity (id f114) (name "Продвинутая защита"))
	(fact_entity (id ~f23) (name _))
	=>
	(assert (fact_entity (id f117) (name "Отражение")))
	(assert (fact_entity (id f23) (name "Взято два навыка Защиты")))
)
(defrule r136
	(fact_entity (id f114) (name "Продвинутая защита"))
	(fact_entity (id ~f23) (name _))
	=>
	(assert (fact_entity (id f118) (name "Стойкость")))
	(assert (fact_entity (id f23) (name "Взято два навыка Защиты")))
)
(defrule r137
	(fact_entity (id f115) (name "Экспертная защита"))
	(fact_entity (id ~f24) (name _))
	=>
	(assert (fact_entity (id f116) (name "Уклонение")))
	(assert (fact_entity (id f24) (name "Взято три навыка Защиты")))
)
(defrule r138
	(fact_entity (id f115) (name "Экспертная защита"))
	(fact_entity (id ~f24) (name _))
	=>
	(assert (fact_entity (id f117) (name "Отражение")))
	(assert (fact_entity (id f24) (name "Взято три навыка Защиты")))
)
(defrule r139
	(fact_entity (id f115) (name "Экспертная защита"))
	(fact_entity (id ~f24) (name _))
	=>
	(assert (fact_entity (id f118) (name "Стойкость")))
	(assert (fact_entity (id f24) (name "Взято три навыка Защиты")))
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
)
(defrule r142
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
)
(defrule r143
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
)
(defrule r144
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
)
(defrule r145
	(fact_entity (id f124) (name "Основы удачи"))
	=>
	(assert (fact_entity (id f125) (name "Продвинутая удача")))
)
(defrule r146
	(fact_entity (id f125) (name "Продвинутая удача"))
	=>
	(assert (fact_entity (id f126) (name "Экспертная удача")))
)
(defrule r147
	(fact_entity (id f124) (name "Основы удачи"))
	(fact_entity (id ~f25) (name _))
	=>
	(assert (fact_entity (id f127) (name "Магическое сопротивление")))
	(assert (fact_entity (id f25) (name "Взят один навык Удачи")))
)
(defrule r148
	(fact_entity (id f124) (name "Основы удачи"))
	(fact_entity (id ~f25) (name _))
	=>
	(assert (fact_entity (id f128) (name "Удача в пути")))
	(assert (fact_entity (id f25) (name "Взят один навык Удачи")))
)
(defrule r149
	(fact_entity (id f124) (name "Основы удачи"))
	(fact_entity (id ~f25) (name _))
	=>
	(assert (fact_entity (id f129) (name "Солдатская удача")))
	(assert (fact_entity (id f25) (name "Взят один навык Удачи")))
)
(defrule r150
	(fact_entity (id f125) (name "Продвинутая удача"))
	(fact_entity (id ~f26) (name _))
	=>
	(assert (fact_entity (id f127) (name "Магическое сопротивление")))
	(assert (fact_entity (id f26) (name "Взято два навыка Удачи")))
)
(defrule r151
	(fact_entity (id f125) (name "Продвинутая удача"))
	(fact_entity (id ~f26) (name _))
	=>
	(assert (fact_entity (id f128) (name "Удача в пути")))
	(assert (fact_entity (id f26) (name "Взято два навыка Удачи")))
)
(defrule r152
	(fact_entity (id f125) (name "Продвинутая удача"))
	(fact_entity (id ~f26) (name _))
	=>
	(assert (fact_entity (id f129) (name "Солдатская удача")))
	(assert (fact_entity (id f26) (name "Взято два навыка Удачи")))
)
(defrule r153
	(fact_entity (id f126) (name "Экспертная удача"))
	(fact_entity (id ~f27) (name _))
	=>
	(assert (fact_entity (id f127) (name "Магическое сопротивление")))
	(assert (fact_entity (id f27) (name "Взято три навыка Удачи")))
)
(defrule r154
	(fact_entity (id f126) (name "Экспертная удача"))
	(fact_entity (id ~f27) (name _))
	=>
	(assert (fact_entity (id f128) (name "Удача в пути")))
	(assert (fact_entity (id f27) (name "Взято три навыка Удачи")))
)
(defrule r155
	(fact_entity (id f126) (name "Экспертная удача"))
	(fact_entity (id ~f27) (name _))
	=>
	(assert (fact_entity (id f129) (name "Солдатская удача")))
	(assert (fact_entity (id f27) (name "Взято три навыка Удачи")))
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
)
(defrule r158
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
)
(defrule r159
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
)
(defrule r160
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
)
(defrule r161
	(fact_entity (id f134) (name "Основы лидерства"))
	=>
	(assert (fact_entity (id f135) (name "Продвинутое лидерство")))
)
(defrule r162
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	=>
	(assert (fact_entity (id f136) (name "Экспертное лидерство")))
)
(defrule r163
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	(fact_entity (id f139) (name "Сбор войск"))
	(fact_entity (id ~f29) (name _))
	=>
	(assert (fact_entity (id f142) (name "Аура скорости")))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства")))
)
(defrule r164
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id f139) (name "Сбор войск"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f142) (name "Аура скорости")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
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
)
(defrule r167
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	(fact_entity (id f137) (name "Дипломатия"))
	(fact_entity (id ~f29) (name _))
	=>
	(assert (fact_entity (id f140) (name "Сопереживание")))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства")))
)
(defrule r168
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id f137) (name "Дипломатия"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f140) (name "Сопереживание")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
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
)
(defrule r170
	(fact_entity (id f134) (name "Основы лидерства"))
	(fact_entity (id ~f28) (name _))
	=>
	(assert (fact_entity (id f137) (name "Дипломатия")))
	(assert (fact_entity (id f28) (name "Взят один навык Лидерства")))
)
(defrule r171
	(fact_entity (id f134) (name "Основы лидерства"))
	(fact_entity (id ~f28) (name _))
	=>
	(assert (fact_entity (id f138) (name "Управление казной")))
	(assert (fact_entity (id f28) (name "Взят один навык Лидерства")))
)
(defrule r172
	(fact_entity (id f134) (name "Основы лидерства"))
	(fact_entity (id ~f28) (name _))
	=>
	(assert (fact_entity (id f139) (name "Сбор войск")))
	(assert (fact_entity (id f28) (name "Взят один навык Лидерства")))
)
(defrule r173
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	(fact_entity (id ~f29) (name _))
	=>
	(assert (fact_entity (id f137) (name "Дипломатия")))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства")))
)
(defrule r174
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	(fact_entity (id ~f29) (name _))
	=>
	(assert (fact_entity (id f138) (name "Управление казной")))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства")))
)
(defrule r175
	(fact_entity (id f135) (name "Продвинутое лидерство"))
	(fact_entity (id ~f29) (name _))
	=>
	(assert (fact_entity (id f139) (name "Сбор войск")))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства")))
)
(defrule r176
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f137) (name "Дипломатия")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
)
(defrule r177
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f138) (name "Управление казной")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
)
(defrule r178
	(fact_entity (id f136) (name "Экспертное лидерство"))
	(fact_entity (id ~f30) (name _))
	=>
	(assert (fact_entity (id f139) (name "Сбор войск")))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства")))
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
)
(defrule r181
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
)
(defrule r182
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
)
(defrule r183
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
)
(defrule r184
	(fact_entity (id f144) (name "Основы логистики"))
	=>
	(assert (fact_entity (id f145) (name "Развитая логистика")))
)
(defrule r185
	(fact_entity (id f145) (name "Развитая логистика"))
	=>
	(assert (fact_entity (id f146) (name "Искусная логистика")))
)
(defrule r186
	(fact_entity (id f144) (name "Основы логистики"))
	(fact_entity (id ~f31) (name _))
	=>
	(assert (fact_entity (id f147) (name "Навигация")))
	(assert (fact_entity (id f31) (name "Взят один навык Логистики")))
)
(defrule r187
	(fact_entity (id f144) (name "Основы логистики"))
	(fact_entity (id ~f31) (name _))
	=>
	(assert (fact_entity (id f148) (name "Нахождение пути")))
	(assert (fact_entity (id f31) (name "Взят один навык Логистики")))
)
(defrule r188
	(fact_entity (id f144) (name "Основы логистики"))
	(fact_entity (id ~f31) (name _))
	=>
	(assert (fact_entity (id f149) (name "Разведка")))
	(assert (fact_entity (id f31) (name "Взят один навык Логистики")))
)
(defrule r189
	(fact_entity (id f145) (name "Развитая логистика"))
	(fact_entity (id ~f32) (name _))
	=>
	(assert (fact_entity (id f147) (name "Навигация")))
	(assert (fact_entity (id f32) (name "Взято два навыка Логистики")))
)
(defrule r190
	(fact_entity (id f145) (name "Развитая логистика"))
	(fact_entity (id ~f32) (name _))
	=>
	(assert (fact_entity (id f148) (name "Нахождение пути")))
	(assert (fact_entity (id f32) (name "Взято два навыка Логистики")))
)
(defrule r191
	(fact_entity (id f145) (name "Развитая логистика"))
	(fact_entity (id ~f32) (name _))
	=>
	(assert (fact_entity (id f149) (name "Разведка")))
	(assert (fact_entity (id f32) (name "Взято два навыка Логистики")))
)
(defrule r192
	(fact_entity (id f146) (name "Искусная логистика"))
	(fact_entity (id ~f33) (name _))
	=>
	(assert (fact_entity (id f147) (name "Навигация")))
	(assert (fact_entity (id f33) (name "Взято три навыка Логистики")))
)
(defrule r193
	(fact_entity (id f146) (name "Искусная логистика"))
	(fact_entity (id ~f33) (name _))
	=>
	(assert (fact_entity (id f148) (name "Нахождение пути")))
	(assert (fact_entity (id f33) (name "Взято три навыка Логистики")))
)
(defrule r194
	(fact_entity (id f146) (name "Искусная логистика"))
	(fact_entity (id ~f33) (name _))
	=>
	(assert (fact_entity (id f149) (name "Разведка")))
	(assert (fact_entity (id f33) (name "Взято три навыка Логистики")))
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
)
(defrule r197
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
)
(defrule r198
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
)
(defrule r199
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
)
(defrule r200
	(fact_entity (id f164) (name "Основы управления машинами"))
	=>
	(assert (fact_entity (id f165) (name "Продвинутое управление машинами")))
)
(defrule r201
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	=>
	(assert (fact_entity (id f166) (name "Экспертное управление машинами")))
)
(defrule r202
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id f167) (name "Баллиста"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f170) (name "Скорострельная баллиста")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
)
(defrule r203
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id f167) (name "Баллиста"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f170) (name "Скорострельная баллиста")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
)
(defrule r204
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id f168) (name "Катапульта"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f171) (name "Помощь гоблинов")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
)
(defrule r205
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id f168) (name "Катапульта"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f171) (name "Помощь гоблинов")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
)
(defrule r206
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id f169) (name "Палатка первой помощи"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f172) (name "Чумная палатка")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
)
(defrule r207
	(fact_entity (id f46) (name "Твой класс Варвар"))
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id f169) (name "Палатка первой помощи"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f172) (name "Чумная палатка")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
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
)
(defrule r209
	(fact_entity (id f164) (name "Основы управления машинами"))
	(fact_entity (id ~f37) (name _))
	=>
	(assert (fact_entity (id f167) (name "Баллиста")))
	(assert (fact_entity (id f37) (name "Взят один навык Управления машинами")))
)
(defrule r210
	(fact_entity (id f164) (name "Основы управления машинами"))
	(fact_entity (id ~f37) (name _))
	=>
	(assert (fact_entity (id f168) (name "Катапульта")))
	(assert (fact_entity (id f37) (name "Взят один навык Управления машинами")))
)
(defrule r211
	(fact_entity (id f164) (name "Основы управления машинами"))
	(fact_entity (id ~f37) (name _))
	=>
	(assert (fact_entity (id f169) (name "Палатка первой помощи")))
	(assert (fact_entity (id f37) (name "Взят один навык Управления машинами")))
)
(defrule r212
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f167) (name "Баллиста")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
)
(defrule r213
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f168) (name "Катапульта")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
)
(defrule r214
	(fact_entity (id f165) (name "Продвинутое управление машинами"))
	(fact_entity (id ~f38) (name _))
	=>
	(assert (fact_entity (id f169) (name "Палатка первой помощи")))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами")))
)
(defrule r215
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f167) (name "Баллиста")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
)
(defrule r216
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f168) (name "Катапульта")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
)
(defrule r217
	(fact_entity (id f166) (name "Экспертное управление машинами"))
	(fact_entity (id ~f39) (name _))
	=>
	(assert (fact_entity (id f169) (name "Палатка первой помощи")))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами")))
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
)
(defrule r220
	(fact_entity (id f42) (name "Взято две ветки навыков"))
	(fact_entity (id ~f43) (name _))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f155) (name "Основы образования")))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков")))
)
(defrule r221
	(fact_entity (id f43) (name "Взято три ветки навыков"))
	(fact_entity (id ~f44) (name _))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f155) (name "Основы образования")))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков")))
)
(defrule r222
	(fact_entity (id f44) (name "Взято четрые ветки навыков"))
	(fact_entity (id ~f45) (name _))
	=>
	(assert (fact_entity (id f155) (name "Основы образования")))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков")))
)
(defrule r223
	(fact_entity (id f155) (name "Основы образования"))
	=>
	(assert (fact_entity (id f156) (name "Продвинутое образование")))
)
(defrule r224
	(fact_entity (id f156) (name "Продвинутое образование"))
	=>
	(assert (fact_entity (id f157) (name "Экспертное образование")))
)
(defrule r225
	(fact_entity (id f155) (name "Основы образования"))
	(fact_entity (id ~f34) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f242) (name "Разгадка тайного")))
	(assert (fact_entity (id f34) (name "Взят один навык Образования")))
)
(defrule r226
	(fact_entity (id f155) (name "Основы образования"))
	(fact_entity (id ~f34) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f243) (name "Ученый")))
	(assert (fact_entity (id f34) (name "Взят один навык Образования")))
)
(defrule r227
	(fact_entity (id f155) (name "Основы образования"))
	(fact_entity (id ~f34) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f161) (name "Притяжение магии")))
)
(defrule r228
	(fact_entity (id f156) (name "Продвинутое образование"))
	(fact_entity (id ~f35) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f242) (name "Разгадка тайного")))
	(assert (fact_entity (id f35) (name "Взято два навыка Образования")))
)
(defrule r229
	(fact_entity (id f156) (name "Продвинутое образование"))
	(fact_entity (id ~f35) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f243) (name "Ученый")))
	(assert (fact_entity (id f35) (name "Взято два навыка Образования")))
)
(defrule r230
	(fact_entity (id f156) (name "Продвинутое образование"))
	(fact_entity (id ~f35) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f161) (name "Притяжение магии")))
	(assert (fact_entity (id f35) (name "Взято два навыка Образования")))
)
(defrule r231
	(fact_entity (id f157) (name "Экспертное образование"))
	(fact_entity (id ~f36) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f242) (name "Разгадка тайного")))
	(assert (fact_entity (id f36) (name "Взято три навыка Образования")))
)
(defrule r232
	(fact_entity (id f157) (name "Экспертное образование"))
	(fact_entity (id ~f36) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f243) (name "Ученый")))
	(assert (fact_entity (id f36) (name "Взято три навыка Образования")))
)
(defrule r233
	(fact_entity (id f157) (name "Экспертное образование"))
	(fact_entity (id ~f36) (name _))
	(fact_entity (id ~f46) (name _))
	=>
	(assert (fact_entity (id f161) (name "Притяжение магии")))
	(assert (fact_entity (id f36) (name "Взято три навыка Образования")))
)
