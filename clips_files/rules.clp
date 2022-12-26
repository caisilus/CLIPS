(defrule updateConf
	(declare (salience 110))
	?f1 <- (fact_entity (id ?id) (name ?name) (confidence ?c1))
	?f2 <- (fact_entity (id ?id) (name ?name) (confidence ?c2))
	(test (!= ?c1 ?c2))
=>
	(assert (fact_entity (id ?id) (name ?name) (confidence (- (+ ?c1 ?c2) (* ?c1 ?c2)))))
	(retract ?f1)
	(retract ?f2)
)
(defrule r1
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков") (confidence (* 0.5 (min ?f46Conf)))))
	(assert (used_rule (rule_id r1)))
)
(defrule r2
	(declare (salience 10))
	(fact_entity (id f47) (name "Твой класс П. Демонов") (confidence ?f47Conf))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков") (confidence (* 0.5 (min ?f47Conf)))))
	(assert (used_rule (rule_id r2)))
)
(defrule r3
	(declare (salience 10))
	(fact_entity (id f48) (name "Твой класс Рыцарь") (confidence ?f48Conf))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков") (confidence (* 0.5 (min ?f48Conf)))))
	(assert (used_rule (rule_id r3)))
)
(defrule r4
	(declare (salience 10))
	(fact_entity (id f49) (name "Твой класс Некромант") (confidence ?f49Conf))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков") (confidence (* 0.5 (min ?f49Conf)))))
	(assert (used_rule (rule_id r4)))
)
(defrule r5
	(declare (salience 10))
	(fact_entity (id f50) (name "Твой класс Рейнджер") (confidence ?f50Conf))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков") (confidence (* 0.5 (min ?f50Conf)))))
	(assert (used_rule (rule_id r5)))
)
(defrule r6
	(declare (salience 10))
	(fact_entity (id f51) (name "Твой класс Рунный жрец") (confidence ?f51Conf))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков") (confidence (* 0.5 (min ?f51Conf)))))
	(assert (used_rule (rule_id r6)))
)
(defrule r7
	(declare (salience 10))
	(fact_entity (id f52) (name "Твой класс Чернокнижник") (confidence ?f52Conf))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков") (confidence (* 0.5 (min ?f52Conf)))))
	(assert (used_rule (rule_id r7)))
)
(defrule r8
	(declare (salience 10))
	(fact_entity (id f53) (name "Твой класс Маг") (confidence ?f53Conf))
	=>
	(assert (fact_entity (id f40) (name "Взято ноль веток навыков") (confidence (* 0.5 (min ?f53Conf)))))
	(assert (used_rule (rule_id r8)))
)
(defrule r9
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	=>
	(assert (fact_entity (id f54) (name "Основы гнева крови") (confidence (* 0.5 (min ?f46Conf)))))
	(assert (used_rule (rule_id r9)))
)
(defrule r10
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f54) (name "Основы гнева крови") (confidence ?f54Conf))
	=>
	(assert (fact_entity (id f55) (name "Развитый гнев крови") (confidence (* 0.5 (min ?f46Conf ?f54Conf)))))
	(assert (used_rule (rule_id r10)))
)
(defrule r11
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f55) (name "Развитый гнев крови") (confidence ?f55Conf))
	=>
	(assert (fact_entity (id f56) (name "Искусный гнев крови") (confidence (* 0.5 (min ?f46Conf ?f55Conf)))))
	(assert (used_rule (rule_id r11)))
)
(defrule r12
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f56) (name "Искусный гнев крови") (confidence ?f56Conf))
	=>
	(assert (fact_entity (id f57) (name "Абсолютный гнев крови") (confidence (* 0.5 (min ?f46Conf ?f56Conf)))))
	(assert (used_rule (rule_id r12)))
)
(defrule r13
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f54) (name "Основы гнева крови") (confidence ?f54Conf))
	=>
	(assert (fact_entity (id f58) (name "Сила против Магии") (confidence (* 0.5 (min ?f46Conf ?f54Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f46Conf ?f54Conf)))))
	(assert (used_rule (rule_id r13)))
)
(defrule r14
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f54) (name "Основы гнева крови") (confidence ?f54Conf))
	=>
	(assert (fact_entity (id f59) (name "Подмога") (confidence (* 0.5 (min ?f46Conf ?f54Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f46Conf ?f54Conf)))))
	(assert (used_rule (rule_id r14)))
)
(defrule r15
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f54) (name "Основы гнева крови") (confidence ?f54Conf))
	=>
	(assert (fact_entity (id f60) (name "Память нашей крови") (confidence (* 0.5 (min ?f46Conf ?f54Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f46Conf ?f54Conf)))))
	(assert (used_rule (rule_id r15)))
)
(defrule r16
	(declare (salience 10))
	(fact_entity (id f55) (name "Развитый гнев крови") (confidence ?f55Conf))
	=>
	(assert (fact_entity (id f58) (name "Сила против Магии") (confidence (* 0.5 (min ?f55Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f55Conf)))))
	(assert (used_rule (rule_id r16)))
)
(defrule r17
	(declare (salience 10))
	(fact_entity (id f55) (name "Развитый гнев крови") (confidence ?f55Conf))
	=>
	(assert (fact_entity (id f59) (name "Подмога") (confidence (* 0.5 (min ?f55Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f55Conf)))))
	(assert (used_rule (rule_id r17)))
)
(defrule r18
	(declare (salience 10))
	(fact_entity (id f55) (name "Развитый гнев крови") (confidence ?f55Conf))
	=>
	(assert (fact_entity (id f60) (name "Память нашей крови") (confidence (* 0.5 (min ?f55Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f55Conf)))))
	(assert (used_rule (rule_id r18)))
)
(defrule r19
	(declare (salience 10))
	(fact_entity (id f56) (name "Искусный гнев крови") (confidence ?f56Conf))
	=>
	(assert (fact_entity (id f58) (name "Сила против Магии") (confidence (* 0.5 (min ?f56Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f56Conf)))))
	(assert (used_rule (rule_id r19)))
)
(defrule r20
	(declare (salience 10))
	(fact_entity (id f56) (name "Искусный гнев крови") (confidence ?f56Conf))
	=>
	(assert (fact_entity (id f59) (name "Подмога") (confidence (* 0.5 (min ?f56Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f56Conf)))))
	(assert (used_rule (rule_id r20)))
)
(defrule r21
	(declare (salience 10))
	(fact_entity (id f56) (name "Искусный гнев крови") (confidence ?f56Conf))
	=>
	(assert (fact_entity (id f60) (name "Память нашей крови") (confidence (* 0.5 (min ?f56Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f56Conf)))))
	(assert (used_rule (rule_id r21)))
)
(defrule r22
	(declare (salience 10))
	(fact_entity (id f58) (name "Сила против Магии") (confidence ?f58Conf))
	(fact_entity (id f59) (name "Подмога") (confidence ?f59Conf))
	(fact_entity (id f60) (name "Память нашей крови") (confidence ?f60Conf))
	(fact_entity (id f173) (name "Серный дождь") (confidence ?f173Conf))
	(fact_entity (id f143) (name "Воодушевление") (confidence ?f143Conf))
	(fact_entity (id f112) (name "Дьявольский удар") (confidence ?f112Conf))
	=>
	(assert (fact_entity (id f61) (name "Чистая ярость") (confidence (* 0.5 (min ?f58Conf ?f59Conf ?f60Conf ?f173Conf ?f143Conf ?f112Conf)))))
	(assert (used_rule (rule_id r22)))
)
(defrule r23
	(declare (salience 10))
	(fact_entity (id f47) (name "Твой класс П. Демонов") (confidence ?f47Conf))
	=>
	(assert (fact_entity (id f174) (name "Основы открытия врат") (confidence (* 0.5 (min ?f47Conf)))))
	(assert (used_rule (rule_id r23)))
)
(defrule r24
	(declare (salience 10))
	(fact_entity (id f47) (name "Твой класс П. Демонов") (confidence ?f47Conf))
	(fact_entity (id f174) (name "Основы открытия врат") (confidence ?f174Conf))
	=>
	(assert (fact_entity (id f175) (name "Развитое открытие врат") (confidence (* 0.5 (min ?f47Conf ?f174Conf)))))
	(assert (used_rule (rule_id r24)))
)
(defrule r25
	(declare (salience 10))
	(fact_entity (id f47) (name "Твой класс П. Демонов") (confidence ?f47Conf))
	(fact_entity (id f175) (name "Развитое открытие врат") (confidence ?f175Conf))
	=>
	(assert (fact_entity (id f176) (name "Искусное открытие врат") (confidence (* 0.5 (min ?f47Conf ?f175Conf)))))
	(assert (used_rule (rule_id r25)))
)
(defrule r26
	(declare (salience 10))
	(fact_entity (id f47) (name "Твой класс П. Демонов") (confidence ?f47Conf))
	(fact_entity (id f176) (name "Искусное открытие врат") (confidence ?f176Conf))
	=>
	(assert (fact_entity (id f177) (name "Абсолютное открытие врат") (confidence (* 0.5 (min ?f47Conf ?f176Conf)))))
	(assert (used_rule (rule_id r26)))
)
(defrule r27
	(declare (salience 10))
	(fact_entity (id f47) (name "Твой класс П. Демонов") (confidence ?f47Conf))
	(fact_entity (id f174) (name "Основы открытия врат") (confidence ?f174Conf))
	=>
	(assert (fact_entity (id f178) (name "Пожиратель душ") (confidence (* 0.5 (min ?f47Conf ?f174Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f47Conf ?f174Conf)))))
	(assert (used_rule (rule_id r27)))
)
(defrule r28
	(declare (salience 10))
	(fact_entity (id f47) (name "Твой класс П. Демонов") (confidence ?f47Conf))
	(fact_entity (id f174) (name "Основы открытия врат") (confidence ?f174Conf))
	=>
	(assert (fact_entity (id f179) (name "Знак проклятого") (confidence (* 0.5 (min ?f47Conf ?f174Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f47Conf ?f174Conf)))))
	(assert (used_rule (rule_id r28)))
)
(defrule r29
	(declare (salience 10))
	(fact_entity (id f47) (name "Твой класс П. Демонов") (confidence ?f47Conf))
	(fact_entity (id f174) (name "Основы открытия врат") (confidence ?f174Conf))
	=>
	(assert (fact_entity (id f180) (name "Адский огонь") (confidence (* 0.5 (min ?f47Conf ?f174Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f47Conf ?f174Conf)))))
	(assert (used_rule (rule_id r29)))
)
(defrule r30
	(declare (salience 10))
	(fact_entity (id f175) (name "Развитое открытие врат") (confidence ?f175Conf))
	=>
	(assert (fact_entity (id f178) (name "Пожиратель душ") (confidence (* 0.5 (min ?f175Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f175Conf)))))
	(assert (used_rule (rule_id r30)))
)
(defrule r31
	(declare (salience 10))
	(fact_entity (id f175) (name "Развитое открытие врат") (confidence ?f175Conf))
	=>
	(assert (fact_entity (id f179) (name "Знак проклятого") (confidence (* 0.5 (min ?f175Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f175Conf)))))
	(assert (used_rule (rule_id r31)))
)
(defrule r32
	(declare (salience 10))
	(fact_entity (id f175) (name "Развитое открытие врат") (confidence ?f175Conf))
	=>
	(assert (fact_entity (id f180) (name "Адский огонь") (confidence (* 0.5 (min ?f175Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f175Conf)))))
	(assert (used_rule (rule_id r32)))
)
(defrule r33
	(declare (salience 10))
	(fact_entity (id f176) (name "Искусное открытие врат") (confidence ?f176Conf))
	=>
	(assert (fact_entity (id f178) (name "Пожиратель душ") (confidence (* 0.5 (min ?f176Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f176Conf)))))
	(assert (used_rule (rule_id r33)))
)
(defrule r34
	(declare (salience 10))
	(fact_entity (id f176) (name "Искусное открытие врат") (confidence ?f176Conf))
	=>
	(assert (fact_entity (id f179) (name "Знак проклятого") (confidence (* 0.5 (min ?f176Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f176Conf)))))
	(assert (used_rule (rule_id r34)))
)
(defrule r35
	(declare (salience 10))
	(fact_entity (id f176) (name "Искусное открытие врат") (confidence ?f176Conf))
	=>
	(assert (fact_entity (id f180) (name "Адский огонь") (confidence (* 0.5 (min ?f176Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f176Conf)))))
	(assert (used_rule (rule_id r35)))
)
(defrule r36
	(declare (salience 10))
	(fact_entity (id f48) (name "Твой класс Рыцарь") (confidence ?f48Conf))
	=>
	(assert (fact_entity (id f248) (name "Основы контрудара") (confidence (* 0.5 (min ?f48Conf)))))
	(assert (used_rule (rule_id r36)))
)
(defrule r37
	(declare (salience 10))
	(fact_entity (id f48) (name "Твой класс Рыцарь") (confidence ?f48Conf))
	(fact_entity (id f248) (name "Основы контрудара") (confidence ?f248Conf))
	=>
	(assert (fact_entity (id f249) (name "Развитый контрудар") (confidence (* 0.5 (min ?f48Conf ?f248Conf)))))
	(assert (used_rule (rule_id r37)))
)
(defrule r38
	(declare (salience 10))
	(fact_entity (id f48) (name "Твой класс Рыцарь") (confidence ?f48Conf))
	(fact_entity (id f249) (name "Развитый контрудар") (confidence ?f249Conf))
	=>
	(assert (fact_entity (id f250) (name "Искусный контрудар") (confidence (* 0.5 (min ?f48Conf ?f249Conf)))))
	(assert (used_rule (rule_id r38)))
)
(defrule r39
	(declare (salience 10))
	(fact_entity (id f48) (name "Твой класс Рыцарь") (confidence ?f48Conf))
	(fact_entity (id f250) (name "Искусный контрудар") (confidence ?f250Conf))
	=>
	(assert (fact_entity (id f251) (name "Совершенный контрудар") (confidence (* 0.5 (min ?f48Conf ?f250Conf)))))
	(assert (used_rule (rule_id r39)))
)
(defrule r40
	(declare (salience 10))
	(fact_entity (id f48) (name "Твой класс Рыцарь") (confidence ?f48Conf))
	(fact_entity (id f248) (name "Основы контрудара") (confidence ?f248Conf))
	=>
	(assert (fact_entity (id f252) (name "Надзор") (confidence (* 0.5 (min ?f48Conf ?f248Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f48Conf ?f248Conf)))))
	(assert (used_rule (rule_id r40)))
)
(defrule r41
	(declare (salience 10))
	(fact_entity (id f48) (name "Твой класс Рыцарь") (confidence ?f48Conf))
	(fact_entity (id f248) (name "Основы контрудара") (confidence ?f248Conf))
	=>
	(assert (fact_entity (id f253) (name "Опытный военачальник") (confidence (* 0.5 (min ?f48Conf ?f248Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f48Conf ?f248Conf)))))
	(assert (used_rule (rule_id r41)))
)
(defrule r42
	(declare (salience 10))
	(fact_entity (id f48) (name "Твой класс Рыцарь") (confidence ?f48Conf))
	(fact_entity (id f248) (name "Основы контрудара") (confidence ?f248Conf))
	=>
	(assert (fact_entity (id f254) (name "Молитва") (confidence (* 0.5 (min ?f48Conf ?f248Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f48Conf ?f248Conf)))))
	(assert (used_rule (rule_id r42)))
)
(defrule r43
	(declare (salience 10))
	(fact_entity (id f249) (name "Развитый контрудар") (confidence ?f249Conf))
	=>
	(assert (fact_entity (id f252) (name "Надзор") (confidence (* 0.5 (min ?f249Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f249Conf)))))
	(assert (used_rule (rule_id r43)))
)
(defrule r44
	(declare (salience 10))
	(fact_entity (id f249) (name "Развитый контрудар") (confidence ?f249Conf))
	=>
	(assert (fact_entity (id f253) (name "Опытный военачальник") (confidence (* 0.5 (min ?f249Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f249Conf)))))
	(assert (used_rule (rule_id r44)))
)
(defrule r45
	(declare (salience 10))
	(fact_entity (id f249) (name "Развитый контрудар") (confidence ?f249Conf))
	=>
	(assert (fact_entity (id f254) (name "Молитва") (confidence (* 0.5 (min ?f249Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f249Conf)))))
	(assert (used_rule (rule_id r45)))
)
(defrule r46
	(declare (salience 10))
	(fact_entity (id f250) (name "Искусный контрудар") (confidence ?f250Conf))
	=>
	(assert (fact_entity (id f252) (name "Надзор") (confidence (* 0.5 (min ?f250Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f250Conf)))))
	(assert (used_rule (rule_id r46)))
)
(defrule r47
	(declare (salience 10))
	(fact_entity (id f250) (name "Искусный контрудар") (confidence ?f250Conf))
	=>
	(assert (fact_entity (id f253) (name "Опытный военачальник") (confidence (* 0.5 (min ?f250Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f250Conf)))))
	(assert (used_rule (rule_id r47)))
)
(defrule r48
	(declare (salience 10))
	(fact_entity (id f250) (name "Искусный контрудар") (confidence ?f250Conf))
	=>
	(assert (fact_entity (id f254) (name "Молитва") (confidence (* 0.5 (min ?f250Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f250Conf)))))
	(assert (used_rule (rule_id r48)))
)
(defrule r49
	(declare (salience 10))
	(fact_entity (id f50) (name "Твой класс Рейнджер") (confidence ?f50Conf))
	=>
	(assert (fact_entity (id f273) (name "Мститель (новичок)") (confidence (* 0.5 (min ?f50Conf)))))
	(assert (used_rule (rule_id r49)))
)
(defrule r50
	(declare (salience 10))
	(fact_entity (id f50) (name "Твой класс Рейнджер") (confidence ?f50Conf))
	(fact_entity (id f273) (name "Мститель (новичок)") (confidence ?f273Conf))
	=>
	(assert (fact_entity (id f274) (name "Обученный мститель") (confidence (* 0.5 (min ?f50Conf ?f273Conf)))))
	(assert (used_rule (rule_id r50)))
)
(defrule r51
	(declare (salience 10))
	(fact_entity (id f50) (name "Твой класс Рейнджер") (confidence ?f50Conf))
	(fact_entity (id f274) (name "Обученный мститель") (confidence ?f274Conf))
	=>
	(assert (fact_entity (id f275) (name "Искусный мститель") (confidence (* 0.5 (min ?f50Conf ?f274Conf)))))
	(assert (used_rule (rule_id r51)))
)
(defrule r52
	(declare (salience 10))
	(fact_entity (id f50) (name "Твой класс Рейнджер") (confidence ?f50Conf))
	(fact_entity (id f275) (name "Искусный мститель") (confidence ?f275Conf))
	=>
	(assert (fact_entity (id f276) (name "Безжалостный мститель") (confidence (* 0.5 (min ?f50Conf ?f275Conf)))))
	(assert (used_rule (rule_id r52)))
)
(defrule r53
	(declare (salience 10))
	(fact_entity (id f50) (name "Твой класс Рейнджер") (confidence ?f50Conf))
	(fact_entity (id f273) (name "Мститель (новичок)") (confidence ?f273Conf))
	=>
	(assert (fact_entity (id f277) (name "Смертельный выстрел") (confidence (* 0.5 (min ?f50Conf ?f273Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f50Conf ?f273Conf)))))
	(assert (used_rule (rule_id r53)))
)
(defrule r54
	(declare (salience 10))
	(fact_entity (id f50) (name "Твой класс Рейнджер") (confidence ?f50Conf))
	(fact_entity (id f273) (name "Мститель (новичок)") (confidence ?f273Conf))
	=>
	(assert (fact_entity (id f278) (name "Заколдованная стрела") (confidence (* 0.5 (min ?f50Conf ?f273Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f50Conf ?f273Conf)))))
	(assert (used_rule (rule_id r54)))
)
(defrule r55
	(declare (salience 10))
	(fact_entity (id f50) (name "Твой класс Рейнджер") (confidence ?f50Conf))
	(fact_entity (id f273) (name "Мститель (новичок)") (confidence ?f273Conf))
	=>
	(assert (fact_entity (id f279) (name "Ливень из стрел") (confidence (* 0.5 (min ?f50Conf ?f273Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f50Conf ?f273Conf)))))
	(assert (used_rule (rule_id r55)))
)
(defrule r56
	(declare (salience 10))
	(fact_entity (id f274) (name "Обученный мститель") (confidence ?f274Conf))
	=>
	(assert (fact_entity (id f277) (name "Смертельный выстрел") (confidence (* 0.5 (min ?f274Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f274Conf)))))
	(assert (used_rule (rule_id r56)))
)
(defrule r57
	(declare (salience 10))
	(fact_entity (id f274) (name "Обученный мститель") (confidence ?f274Conf))
	=>
	(assert (fact_entity (id f278) (name "Заколдованная стрела") (confidence (* 0.5 (min ?f274Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f274Conf)))))
	(assert (used_rule (rule_id r57)))
)
(defrule r58
	(declare (salience 10))
	(fact_entity (id f274) (name "Обученный мститель") (confidence ?f274Conf))
	=>
	(assert (fact_entity (id f279) (name "Ливень из стрел") (confidence (* 0.5 (min ?f274Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f274Conf)))))
	(assert (used_rule (rule_id r58)))
)
(defrule r59
	(declare (salience 10))
	(fact_entity (id f275) (name "Искусный мститель") (confidence ?f275Conf))
	=>
	(assert (fact_entity (id f277) (name "Смертельный выстрел") (confidence (* 0.5 (min ?f275Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f275Conf)))))
	(assert (used_rule (rule_id r59)))
)
(defrule r60
	(declare (salience 10))
	(fact_entity (id f275) (name "Искусный мститель") (confidence ?f275Conf))
	=>
	(assert (fact_entity (id f278) (name "Заколдованная стрела") (confidence (* 0.5 (min ?f275Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f275Conf)))))
	(assert (used_rule (rule_id r60)))
)
(defrule r61
	(declare (salience 10))
	(fact_entity (id f275) (name "Искусный мститель") (confidence ?f275Conf))
	=>
	(assert (fact_entity (id f279) (name "Ливень из стрел") (confidence (* 0.5 (min ?f275Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f275Conf)))))
	(assert (used_rule (rule_id r61)))
)
(defrule r62
	(declare (salience 10))
	(fact_entity (id f51) (name "Твой класс Рунный жрец") (confidence ?f51Conf))
	=>
	(assert (fact_entity (id f286) (name "Основы знания рун") (confidence (* 0.5 (min ?f51Conf)))))
	(assert (used_rule (rule_id r62)))
)
(defrule r63
	(declare (salience 10))
	(fact_entity (id f51) (name "Твой класс Рунный жрец") (confidence ?f51Conf))
	(fact_entity (id f286) (name "Основы знания рун") (confidence ?f286Conf))
	=>
	(assert (fact_entity (id f287) (name "Развитое знание рун") (confidence (* 0.5 (min ?f51Conf ?f286Conf)))))
	(assert (used_rule (rule_id r63)))
)
(defrule r64
	(declare (salience 10))
	(fact_entity (id f51) (name "Твой класс Рунный жрец") (confidence ?f51Conf))
	(fact_entity (id f287) (name "Развитое знание рун") (confidence ?f287Conf))
	=>
	(assert (fact_entity (id f288) (name "Совершенное знание рун") (confidence (* 0.5 (min ?f51Conf ?f287Conf)))))
	(assert (used_rule (rule_id r64)))
)
(defrule r65
	(declare (salience 10))
	(fact_entity (id f51) (name "Твой класс Рунный жрец") (confidence ?f51Conf))
	(fact_entity (id f288) (name "Совершенное знание рун") (confidence ?f288Conf))
	=>
	(assert (fact_entity (id f289) (name "Абсолютное знание рун") (confidence (* 0.5 (min ?f51Conf ?f288Conf)))))
	(assert (used_rule (rule_id r65)))
)
(defrule r66
	(declare (salience 10))
	(fact_entity (id f51) (name "Твой класс Рунный жрец") (confidence ?f51Conf))
	(fact_entity (id f286) (name "Основы знания рун") (confidence ?f286Conf))
	=>
	(assert (fact_entity (id f290) (name "Обновленная руна") (confidence (* 0.5 (min ?f51Conf ?f286Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f51Conf ?f286Conf)))))
	(assert (used_rule (rule_id r66)))
)
(defrule r67
	(declare (salience 10))
	(fact_entity (id f51) (name "Твой класс Рунный жрец") (confidence ?f51Conf))
	(fact_entity (id f286) (name "Основы знания рун") (confidence ?f286Conf))
	=>
	(assert (fact_entity (id f291) (name "Завершенная руна") (confidence (* 0.5 (min ?f51Conf ?f286Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f51Conf ?f286Conf)))))
	(assert (used_rule (rule_id r67)))
)
(defrule r68
	(declare (salience 10))
	(fact_entity (id f51) (name "Твой класс Рунный жрец") (confidence ?f51Conf))
	(fact_entity (id f286) (name "Основы знания рун") (confidence ?f286Conf))
	=>
	(assert (fact_entity (id f292) (name "Величайшая руна") (confidence (* 0.5 (min ?f51Conf ?f286Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f51Conf ?f286Conf)))))
	(assert (used_rule (rule_id r68)))
)
(defrule r69
	(declare (salience 10))
	(fact_entity (id f287) (name "Развитое знание рун") (confidence ?f287Conf))
	=>
	(assert (fact_entity (id f290) (name "Обновленная руна") (confidence (* 0.5 (min ?f287Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f287Conf)))))
	(assert (used_rule (rule_id r69)))
)
(defrule r70
	(declare (salience 10))
	(fact_entity (id f287) (name "Развитое знание рун") (confidence ?f287Conf))
	=>
	(assert (fact_entity (id f291) (name "Завершенная руна") (confidence (* 0.5 (min ?f287Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f287Conf)))))
	(assert (used_rule (rule_id r70)))
)
(defrule r71
	(declare (salience 10))
	(fact_entity (id f287) (name "Развитое знание рун") (confidence ?f287Conf))
	=>
	(assert (fact_entity (id f292) (name "Величайшая руна") (confidence (* 0.5 (min ?f287Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f287Conf)))))
	(assert (used_rule (rule_id r71)))
)
(defrule r72
	(declare (salience 10))
	(fact_entity (id f288) (name "Совершенное знание рун") (confidence ?f288Conf))
	=>
	(assert (fact_entity (id f290) (name "Обновленная руна") (confidence (* 0.5 (min ?f288Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f288Conf)))))
	(assert (used_rule (rule_id r72)))
)
(defrule r73
	(declare (salience 10))
	(fact_entity (id f288) (name "Совершенное знание рун") (confidence ?f288Conf))
	=>
	(assert (fact_entity (id f291) (name "Завершенная руна") (confidence (* 0.5 (min ?f288Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f288Conf)))))
	(assert (used_rule (rule_id r73)))
)
(defrule r74
	(declare (salience 10))
	(fact_entity (id f288) (name "Совершенное знание рун") (confidence ?f288Conf))
	=>
	(assert (fact_entity (id f292) (name "Величайшая руна") (confidence (* 0.5 (min ?f288Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f288Conf)))))
	(assert (used_rule (rule_id r74)))
)
(defrule r75
	(declare (salience 10))
	(fact_entity (id f52) (name "Твой класс Чернокнижник") (confidence ?f52Conf))
	=>
	(assert (fact_entity (id f301) (name "Основы неодолимой магии") (confidence (* 0.5 (min ?f52Conf)))))
	(assert (used_rule (rule_id r75)))
)
(defrule r76
	(declare (salience 10))
	(fact_entity (id f52) (name "Твой класс Чернокнижник") (confidence ?f52Conf))
	(fact_entity (id f301) (name "Основы неодолимой магии") (confidence ?f301Conf))
	=>
	(assert (fact_entity (id f302) (name "Сильная неодолимая магия") (confidence (* 0.5 (min ?f52Conf ?f301Conf)))))
	(assert (used_rule (rule_id r76)))
)
(defrule r77
	(declare (salience 10))
	(fact_entity (id f52) (name "Твой класс Чернокнижник") (confidence ?f52Conf))
	(fact_entity (id f302) (name "Сильная неодолимая магия") (confidence ?f302Conf))
	=>
	(assert (fact_entity (id f303) (name "Искусная неодолимая магия") (confidence (* 0.5 (min ?f52Conf ?f302Conf)))))
	(assert (used_rule (rule_id r77)))
)
(defrule r78
	(declare (salience 10))
	(fact_entity (id f52) (name "Твой класс Чернокнижник") (confidence ?f52Conf))
	(fact_entity (id f303) (name "Искусная неодолимая магия") (confidence ?f303Conf))
	=>
	(assert (fact_entity (id f304) (name "Абсолютная неодолимая магия") (confidence (* 0.5 (min ?f52Conf ?f303Conf)))))
	(assert (used_rule (rule_id r78)))
)
(defrule r79
	(declare (salience 10))
	(fact_entity (id f52) (name "Твой класс Чернокнижник") (confidence ?f52Conf))
	(fact_entity (id f301) (name "Основы неодолимой магии") (confidence ?f301Conf))
	=>
	(assert (fact_entity (id f305) (name "Чувство стихий") (confidence (* 0.5 (min ?f52Conf ?f301Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f52Conf ?f301Conf)))))
	(assert (used_rule (rule_id r79)))
)
(defrule r80
	(declare (salience 10))
	(fact_entity (id f52) (name "Твой класс Чернокнижник") (confidence ?f52Conf))
	(fact_entity (id f301) (name "Основы неодолимой магии") (confidence ?f301Conf))
	=>
	(assert (fact_entity (id f306) (name "Волна Аркан") (confidence (* 0.5 (min ?f52Conf ?f301Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f52Conf ?f301Conf)))))
	(assert (used_rule (rule_id r80)))
)
(defrule r81
	(declare (salience 10))
	(fact_entity (id f52) (name "Твой класс Чернокнижник") (confidence ?f52Conf))
	(fact_entity (id f301) (name "Основы неодолимой магии") (confidence ?f301Conf))
	=>
	(assert (fact_entity (id f307) (name "Тёмный ритуал") (confidence (* 0.5 (min ?f52Conf ?f301Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f52Conf ?f301Conf)))))
	(assert (used_rule (rule_id r81)))
)
(defrule r82
	(declare (salience 10))
	(fact_entity (id f302) (name "Сильная неодолимая магия") (confidence ?f302Conf))
	=>
	(assert (fact_entity (id f305) (name "Чувство стихий") (confidence (* 0.5 (min ?f302Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f302Conf)))))
	(assert (used_rule (rule_id r82)))
)
(defrule r83
	(declare (salience 10))
	(fact_entity (id f302) (name "Сильная неодолимая магия") (confidence ?f302Conf))
	=>
	(assert (fact_entity (id f306) (name "Волна Аркан") (confidence (* 0.5 (min ?f302Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f302Conf)))))
	(assert (used_rule (rule_id r83)))
)
(defrule r84
	(declare (salience 10))
	(fact_entity (id f302) (name "Сильная неодолимая магия") (confidence ?f302Conf))
	=>
	(assert (fact_entity (id f307) (name "Тёмный ритуал") (confidence (* 0.5 (min ?f302Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f302Conf)))))
	(assert (used_rule (rule_id r84)))
)
(defrule r85
	(declare (salience 10))
	(fact_entity (id f303) (name "Искусная неодолимая магия") (confidence ?f303Conf))
	=>
	(assert (fact_entity (id f305) (name "Чувство стихий") (confidence (* 0.5 (min ?f303Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f303Conf)))))
	(assert (used_rule (rule_id r85)))
)
(defrule r86
	(declare (salience 10))
	(fact_entity (id f303) (name "Искусная неодолимая магия") (confidence ?f303Conf))
	=>
	(assert (fact_entity (id f306) (name "Волна Аркан") (confidence (* 0.5 (min ?f303Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f303Conf)))))
	(assert (used_rule (rule_id r86)))
)
(defrule r87
	(declare (salience 10))
	(fact_entity (id f303) (name "Искусная неодолимая магия") (confidence ?f303Conf))
	=>
	(assert (fact_entity (id f307) (name "Тёмный ритуал") (confidence (* 0.5 (min ?f303Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f303Conf)))))
	(assert (used_rule (rule_id r87)))
)
(defrule r88
	(declare (salience 10))
	(fact_entity (id f53) (name "Твой класс Маг") (confidence ?f53Conf))
	=>
	(assert (fact_entity (id f309) (name "Ученик мастера артефактов") (confidence (* 0.5 (min ?f53Conf)))))
	(assert (used_rule (rule_id r88)))
)
(defrule r89
	(declare (salience 10))
	(fact_entity (id f53) (name "Твой класс Маг") (confidence ?f53Conf))
	(fact_entity (id f309) (name "Ученик мастера артефактов") (confidence ?f309Conf))
	=>
	(assert (fact_entity (id f310) (name "Мастер артефактов") (confidence (* 0.5 (min ?f53Conf ?f309Conf)))))
	(assert (used_rule (rule_id r89)))
)
(defrule r90
	(declare (salience 10))
	(fact_entity (id f53) (name "Твой класс Маг") (confidence ?f53Conf))
	(fact_entity (id f310) (name "Мастер артефактов") (confidence ?f310Conf))
	=>
	(assert (fact_entity (id f311) (name "Искусный мастер артефактов") (confidence (* 0.5 (min ?f53Conf ?f310Conf)))))
	(assert (used_rule (rule_id r90)))
)
(defrule r91
	(declare (salience 10))
	(fact_entity (id f53) (name "Твой класс Маг") (confidence ?f53Conf))
	(fact_entity (id f311) (name "Искусный мастер артефактов") (confidence ?f311Conf))
	=>
	(assert (fact_entity (id f312) (name "Величайший мастер артефактов") (confidence (* 0.5 (min ?f53Conf ?f311Conf)))))
	(assert (used_rule (rule_id r91)))
)
(defrule r92
	(declare (salience 10))
	(fact_entity (id f53) (name "Твой класс Маг") (confidence ?f53Conf))
	(fact_entity (id f309) (name "Ученик мастера артефактов") (confidence ?f309Conf))
	=>
	(assert (fact_entity (id f313) (name "Знак волшебства") (confidence (* 0.5 (min ?f53Conf ?f309Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f53Conf ?f309Conf)))))
	(assert (used_rule (rule_id r92)))
)
(defrule r93
	(declare (salience 10))
	(fact_entity (id f53) (name "Твой класс Маг") (confidence ?f53Conf))
	(fact_entity (id f309) (name "Ученик мастера артефактов") (confidence ?f309Conf))
	=>
	(assert (fact_entity (id f314) (name "Волшебное зеркало") (confidence (* 0.5 (min ?f53Conf ?f309Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f53Conf ?f309Conf)))))
	(assert (used_rule (rule_id r93)))
)
(defrule r94
	(declare (salience 10))
	(fact_entity (id f53) (name "Твой класс Маг") (confidence ?f53Conf))
	(fact_entity (id f309) (name "Ученик мастера артефактов") (confidence ?f309Conf))
	=>
	(assert (fact_entity (id f315) (name "Поглощение артефакта") (confidence (* 0.5 (min ?f53Conf ?f309Conf)))))
	(assert (fact_entity (id f0) (name "Взят один классовый навык") (confidence (* 0.5 (min ?f53Conf ?f309Conf)))))
	(assert (used_rule (rule_id r94)))
)
(defrule r95
	(declare (salience 10))
	(fact_entity (id f310) (name "Мастер артефактов") (confidence ?f310Conf))
	=>
	(assert (fact_entity (id f313) (name "Знак волшебства") (confidence (* 0.5 (min ?f310Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f310Conf)))))
	(assert (used_rule (rule_id r95)))
)
(defrule r96
	(declare (salience 10))
	(fact_entity (id f310) (name "Мастер артефактов") (confidence ?f310Conf))
	=>
	(assert (fact_entity (id f314) (name "Волшебное зеркало") (confidence (* 0.5 (min ?f310Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f310Conf)))))
	(assert (used_rule (rule_id r96)))
)
(defrule r97
	(declare (salience 10))
	(fact_entity (id f310) (name "Мастер артефактов") (confidence ?f310Conf))
	=>
	(assert (fact_entity (id f315) (name "Поглощение артефакта") (confidence (* 0.5 (min ?f310Conf)))))
	(assert (fact_entity (id f1) (name "Взято два классовых навыка") (confidence (* 0.5 (min ?f310Conf)))))
	(assert (used_rule (rule_id r97)))
)
(defrule r98
	(declare (salience 10))
	(fact_entity (id f311) (name "Искусный мастер артефактов") (confidence ?f311Conf))
	=>
	(assert (fact_entity (id f313) (name "Знак волшебства") (confidence (* 0.5 (min ?f311Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f311Conf)))))
	(assert (used_rule (rule_id r98)))
)
(defrule r99
	(declare (salience 10))
	(fact_entity (id f311) (name "Искусный мастер артефактов") (confidence ?f311Conf))
	=>
	(assert (fact_entity (id f314) (name "Волшебное зеркало") (confidence (* 0.5 (min ?f311Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f311Conf)))))
	(assert (used_rule (rule_id r99)))
)
(defrule r100
	(declare (salience 10))
	(fact_entity (id f311) (name "Искусный мастер артефактов") (confidence ?f311Conf))
	=>
	(assert (fact_entity (id f315) (name "Поглощение артефакта") (confidence (* 0.5 (min ?f311Conf)))))
	(assert (fact_entity (id f2) (name "Взято три классовых навыка") (confidence (* 0.5 (min ?f311Conf)))))
	(assert (used_rule (rule_id r100)))
)
(defrule r101
	(declare (salience 10))
	(fact_entity (id f40) (name "Взято ноль веток навыков") (confidence ?f40Conf))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (used_rule (rule_id r101)))
)
(defrule r102
	(declare (salience 10))
	(fact_entity (id f41) (name "Взята одна ветока навыков") (confidence ?f41Conf))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (used_rule (rule_id r102)))
)
(defrule r103
	(declare (salience 10))
	(fact_entity (id f42) (name "Взято две ветки навыков") (confidence ?f42Conf))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (used_rule (rule_id r103)))
)
(defrule r104
	(declare (salience 10))
	(fact_entity (id f43) (name "Взято три ветки навыков") (confidence ?f43Conf))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (used_rule (rule_id r104)))
)
(defrule r105
	(declare (salience 10))
	(fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence ?f44Conf))
	=>
	(assert (fact_entity (id f103) (name "Основы нападения") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (used_rule (rule_id r105)))
)
(defrule r106
	(declare (salience 10))
	(fact_entity (id f103) (name "Основы нападения") (confidence ?f103Conf))
	=>
	(assert (fact_entity (id f104) (name "Продвинутое нападение") (confidence (* 0.5 (min ?f103Conf)))))
	(assert (used_rule (rule_id r106)))
)
(defrule r107
	(declare (salience 10))
	(fact_entity (id f104) (name "Продвинутое нападение") (confidence ?f104Conf))
	=>
	(assert (fact_entity (id f105) (name "Экспертное нападение") (confidence (* 0.5 (min ?f104Conf)))))
	(assert (used_rule (rule_id r107)))
)
(defrule r108
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f104) (name "Продвинутое нападение") (confidence ?f104Conf))
	(fact_entity (id f106) (name "Стрельба") (confidence ?f106Conf))
	=>
	(assert (fact_entity (id f109) (name "Огненные стрелы") (confidence (* 0.5 (min ?f46Conf ?f104Conf ?f106Conf)))))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки") (confidence (* 0.5 (min ?f46Conf ?f104Conf ?f106Conf)))))
	(assert (used_rule (rule_id r108)))
)
(defrule r109
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f105) (name "Экспертное нападение") (confidence ?f105Conf))
	(fact_entity (id f106) (name "Стрельба") (confidence ?f106Conf))
	=>
	(assert (fact_entity (id f109) (name "Огненные стрелы") (confidence (* 0.5 (min ?f46Conf ?f105Conf ?f106Conf)))))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки") (confidence (* 0.5 (min ?f46Conf ?f105Conf ?f106Conf)))))
	(assert (used_rule (rule_id r109)))
)
(defrule r110
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f104) (name "Продвинутое нападение") (confidence ?f104Conf))
	(fact_entity (id f107) (name "Боевое безумие") (confidence ?f107Conf))
	(fact_entity (id f59) (name "Подмога") (confidence ?f59Conf))
	=>
	(assert (fact_entity (id f110) (name "Оглушающий удар") (confidence (* 0.5 (min ?f46Conf ?f104Conf ?f107Conf ?f59Conf)))))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки") (confidence (* 0.5 (min ?f46Conf ?f104Conf ?f107Conf ?f59Conf)))))
	(assert (used_rule (rule_id r110)))
)
(defrule r111
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f105) (name "Экспертное нападение") (confidence ?f105Conf))
	(fact_entity (id f107) (name "Боевое безумие") (confidence ?f107Conf))
	(fact_entity (id f59) (name "Подмога") (confidence ?f59Conf))
	=>
	(assert (fact_entity (id f110) (name "Оглушающий удар") (confidence (* 0.5 (min ?f46Conf ?f105Conf ?f107Conf ?f59Conf)))))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки") (confidence (* 0.5 (min ?f46Conf ?f105Conf ?f107Conf ?f59Conf)))))
	(assert (used_rule (rule_id r111)))
)
(defrule r112
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f104) (name "Продвинутое нападение") (confidence ?f104Conf))
	(fact_entity (id f107) (name "Боевое безумие") (confidence ?f107Conf))
	(fact_entity (id f141) (name "Упоение битвой") (confidence ?f141Conf))
	=>
	(assert (fact_entity (id f111) (name "Воздаяние") (confidence (* 0.5 (min ?f46Conf ?f104Conf ?f107Conf ?f141Conf)))))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки") (confidence (* 0.5 (min ?f46Conf ?f104Conf ?f107Conf ?f141Conf)))))
	(assert (used_rule (rule_id r112)))
)
(defrule r113
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f105) (name "Экспертное нападение") (confidence ?f105Conf))
	(fact_entity (id f107) (name "Боевое безумие") (confidence ?f107Conf))
	(fact_entity (id f141) (name "Упоение битвой") (confidence ?f141Conf))
	=>
	(assert (fact_entity (id f111) (name "Воздаяние") (confidence (* 0.5 (min ?f46Conf ?f105Conf ?f107Conf ?f141Conf)))))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки") (confidence (* 0.5 (min ?f46Conf ?f105Conf ?f107Conf ?f141Conf)))))
	(assert (used_rule (rule_id r113)))
)
(defrule r114
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f105) (name "Экспертное нападение") (confidence ?f105Conf))
	(fact_entity (id f110) (name "Оглушающий удар") (confidence ?f110Conf))
	=>
	(assert (fact_entity (id f112) (name "Дьявольский удар") (confidence (* 0.5 (min ?f46Conf ?f105Conf ?f110Conf)))))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки") (confidence (* 0.5 (min ?f46Conf ?f105Conf ?f110Conf)))))
	(assert (used_rule (rule_id r114)))
)
(defrule r115
	(declare (salience 10))
	(fact_entity (id f103) (name "Основы нападения") (confidence ?f103Conf))
	=>
	(assert (fact_entity (id f106) (name "Стрельба") (confidence (* 0.5 (min ?f103Conf)))))
	(assert (fact_entity (id f19) (name "Взят один навык Атаки") (confidence (* 0.5 (min ?f103Conf)))))
	(assert (used_rule (rule_id r115)))
)
(defrule r116
	(declare (salience 10))
	(fact_entity (id f103) (name "Основы нападения") (confidence ?f103Conf))
	=>
	(assert (fact_entity (id f107) (name "Боевое безумие") (confidence (* 0.5 (min ?f103Conf)))))
	(assert (fact_entity (id f19) (name "Взят один навык Атаки") (confidence (* 0.5 (min ?f103Conf)))))
	(assert (used_rule (rule_id r116)))
)
(defrule r117
	(declare (salience 10))
	(fact_entity (id f103) (name "Основы нападения") (confidence ?f103Conf))
	=>
	(assert (fact_entity (id f108) (name "Тактика") (confidence (* 0.5 (min ?f103Conf)))))
	(assert (fact_entity (id f19) (name "Взят один навык Атаки") (confidence (* 0.5 (min ?f103Conf)))))
	(assert (used_rule (rule_id r117)))
)
(defrule r118
	(declare (salience 10))
	(fact_entity (id f104) (name "Продвинутое нападение") (confidence ?f104Conf))
	=>
	(assert (fact_entity (id f106) (name "Стрельба") (confidence (* 0.5 (min ?f104Conf)))))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки") (confidence (* 0.5 (min ?f104Conf)))))
	(assert (used_rule (rule_id r118)))
)
(defrule r119
	(declare (salience 10))
	(fact_entity (id f104) (name "Продвинутое нападение") (confidence ?f104Conf))
	=>
	(assert (fact_entity (id f107) (name "Боевое безумие") (confidence (* 0.5 (min ?f104Conf)))))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки") (confidence (* 0.5 (min ?f104Conf)))))
	(assert (used_rule (rule_id r119)))
)
(defrule r120
	(declare (salience 10))
	(fact_entity (id f104) (name "Продвинутое нападение") (confidence ?f104Conf))
	=>
	(assert (fact_entity (id f108) (name "Тактика") (confidence (* 0.5 (min ?f104Conf)))))
	(assert (fact_entity (id f20) (name "Взято два навыка Атаки") (confidence (* 0.5 (min ?f104Conf)))))
	(assert (used_rule (rule_id r120)))
)
(defrule r121
	(declare (salience 10))
	(fact_entity (id f105) (name "Экспертное нападение") (confidence ?f105Conf))
	=>
	(assert (fact_entity (id f106) (name "Стрельба") (confidence (* 0.5 (min ?f105Conf)))))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки") (confidence (* 0.5 (min ?f105Conf)))))
	(assert (used_rule (rule_id r121)))
)
(defrule r122
	(declare (salience 10))
	(fact_entity (id f105) (name "Экспертное нападение") (confidence ?f105Conf))
	=>
	(assert (fact_entity (id f107) (name "Боевое безумие") (confidence (* 0.5 (min ?f105Conf)))))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки") (confidence (* 0.5 (min ?f105Conf)))))
	(assert (used_rule (rule_id r122)))
)
(defrule r123
	(declare (salience 10))
	(fact_entity (id f105) (name "Экспертное нападение") (confidence ?f105Conf))
	=>
	(assert (fact_entity (id f108) (name "Тактика") (confidence (* 0.5 (min ?f105Conf)))))
	(assert (fact_entity (id f21) (name "Взято три навыка Атаки") (confidence (* 0.5 (min ?f105Conf)))))
	(assert (used_rule (rule_id r123)))
)
(defrule r124
	(declare (salience 10))
	(fact_entity (id f40) (name "Взято ноль веток навыков") (confidence ?f40Conf))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (used_rule (rule_id r124)))
)
(defrule r125
	(declare (salience 10))
	(fact_entity (id f41) (name "Взята одна ветока навыков") (confidence ?f41Conf))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (used_rule (rule_id r125)))
)
(defrule r126
	(declare (salience 10))
	(fact_entity (id f42) (name "Взято две ветки навыков") (confidence ?f42Conf))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (used_rule (rule_id r126)))
)
(defrule r127
	(declare (salience 10))
	(fact_entity (id f43) (name "Взято три ветки навыков") (confidence ?f43Conf))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (used_rule (rule_id r127)))
)
(defrule r128
	(declare (salience 10))
	(fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence ?f44Conf))
	=>
	(assert (fact_entity (id f113) (name "Основы защиты") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (used_rule (rule_id r128)))
)
(defrule r129
	(declare (salience 10))
	(fact_entity (id f113) (name "Основы защиты") (confidence ?f113Conf))
	=>
	(assert (fact_entity (id f114) (name "Продвинутая защита") (confidence (* 0.5 (min ?f113Conf)))))
	(assert (used_rule (rule_id r129)))
)
(defrule r130
	(declare (salience 10))
	(fact_entity (id f114) (name "Продвинутая защита") (confidence ?f114Conf))
	=>
	(assert (fact_entity (id f115) (name "Экспертная защита") (confidence (* 0.5 (min ?f114Conf)))))
	(assert (used_rule (rule_id r130)))
)
(defrule r131
	(declare (salience 10))
	(fact_entity (id f113) (name "Основы защиты") (confidence ?f113Conf))
	=>
	(assert (fact_entity (id f116) (name "Уклонение") (confidence (* 0.5 (min ?f113Conf)))))
	(assert (fact_entity (id f22) (name "Взят один навык Защиты") (confidence (* 0.5 (min ?f113Conf)))))
	(assert (used_rule (rule_id r131)))
)
(defrule r132
	(declare (salience 10))
	(fact_entity (id f113) (name "Основы защиты") (confidence ?f113Conf))
	=>
	(assert (fact_entity (id f117) (name "Отражение") (confidence (* 0.5 (min ?f113Conf)))))
	(assert (fact_entity (id f22) (name "Взят один навык Защиты") (confidence (* 0.5 (min ?f113Conf)))))
	(assert (used_rule (rule_id r132)))
)
(defrule r133
	(declare (salience 10))
	(fact_entity (id f113) (name "Основы защиты") (confidence ?f113Conf))
	=>
	(assert (fact_entity (id f118) (name "Стойкость") (confidence (* 0.5 (min ?f113Conf)))))
	(assert (fact_entity (id f22) (name "Взят один навык Защиты") (confidence (* 0.5 (min ?f113Conf)))))
	(assert (used_rule (rule_id r133)))
)
(defrule r134
	(declare (salience 10))
	(fact_entity (id f114) (name "Продвинутая защита") (confidence ?f114Conf))
	=>
	(assert (fact_entity (id f116) (name "Уклонение") (confidence (* 0.5 (min ?f114Conf)))))
	(assert (fact_entity (id f23) (name "Взято два навыка Защиты") (confidence (* 0.5 (min ?f114Conf)))))
	(assert (used_rule (rule_id r134)))
)
(defrule r135
	(declare (salience 10))
	(fact_entity (id f114) (name "Продвинутая защита") (confidence ?f114Conf))
	=>
	(assert (fact_entity (id f117) (name "Отражение") (confidence (* 0.5 (min ?f114Conf)))))
	(assert (fact_entity (id f23) (name "Взято два навыка Защиты") (confidence (* 0.5 (min ?f114Conf)))))
	(assert (used_rule (rule_id r135)))
)
(defrule r136
	(declare (salience 10))
	(fact_entity (id f114) (name "Продвинутая защита") (confidence ?f114Conf))
	=>
	(assert (fact_entity (id f118) (name "Стойкость") (confidence (* 0.5 (min ?f114Conf)))))
	(assert (fact_entity (id f23) (name "Взято два навыка Защиты") (confidence (* 0.5 (min ?f114Conf)))))
	(assert (used_rule (rule_id r136)))
)
(defrule r137
	(declare (salience 10))
	(fact_entity (id f115) (name "Экспертная защита") (confidence ?f115Conf))
	=>
	(assert (fact_entity (id f116) (name "Уклонение") (confidence (* 0.5 (min ?f115Conf)))))
	(assert (fact_entity (id f24) (name "Взято три навыка Защиты") (confidence (* 0.5 (min ?f115Conf)))))
	(assert (used_rule (rule_id r137)))
)
(defrule r138
	(declare (salience 10))
	(fact_entity (id f115) (name "Экспертная защита") (confidence ?f115Conf))
	=>
	(assert (fact_entity (id f117) (name "Отражение") (confidence (* 0.5 (min ?f115Conf)))))
	(assert (fact_entity (id f24) (name "Взято три навыка Защиты") (confidence (* 0.5 (min ?f115Conf)))))
	(assert (used_rule (rule_id r138)))
)
(defrule r139
	(declare (salience 10))
	(fact_entity (id f115) (name "Экспертная защита") (confidence ?f115Conf))
	=>
	(assert (fact_entity (id f118) (name "Стойкость") (confidence (* 0.5 (min ?f115Conf)))))
	(assert (fact_entity (id f24) (name "Взято три навыка Защиты") (confidence (* 0.5 (min ?f115Conf)))))
	(assert (used_rule (rule_id r139)))
)
(defrule r140
	(declare (salience 10))
	(fact_entity (id f40) (name "Взято ноль веток навыков") (confidence ?f40Conf))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (used_rule (rule_id r140)))
)
(defrule r141
	(declare (salience 10))
	(fact_entity (id f41) (name "Взята одна ветока навыков") (confidence ?f41Conf))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (used_rule (rule_id r141)))
)
(defrule r142
	(declare (salience 10))
	(fact_entity (id f42) (name "Взято две ветки навыков") (confidence ?f42Conf))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (used_rule (rule_id r142)))
)
(defrule r143
	(declare (salience 10))
	(fact_entity (id f43) (name "Взято три ветки навыков") (confidence ?f43Conf))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (used_rule (rule_id r143)))
)
(defrule r144
	(declare (salience 10))
	(fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence ?f44Conf))
	=>
	(assert (fact_entity (id f124) (name "Основы удачи") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (used_rule (rule_id r144)))
)
(defrule r145
	(declare (salience 10))
	(fact_entity (id f124) (name "Основы удачи") (confidence ?f124Conf))
	=>
	(assert (fact_entity (id f125) (name "Продвинутая удача") (confidence (* 0.5 (min ?f124Conf)))))
	(assert (used_rule (rule_id r145)))
)
(defrule r146
	(declare (salience 10))
	(fact_entity (id f125) (name "Продвинутая удача") (confidence ?f125Conf))
	=>
	(assert (fact_entity (id f126) (name "Экспертная удача") (confidence (* 0.5 (min ?f125Conf)))))
	(assert (used_rule (rule_id r146)))
)
(defrule r147
	(declare (salience 10))
	(fact_entity (id f124) (name "Основы удачи") (confidence ?f124Conf))
	=>
	(assert (fact_entity (id f127) (name "Магическое сопротивление") (confidence (* 0.5 (min ?f124Conf)))))
	(assert (fact_entity (id f25) (name "Взят один навык Удачи") (confidence (* 0.5 (min ?f124Conf)))))
	(assert (used_rule (rule_id r147)))
)
(defrule r148
	(declare (salience 10))
	(fact_entity (id f124) (name "Основы удачи") (confidence ?f124Conf))
	=>
	(assert (fact_entity (id f128) (name "Удача в пути") (confidence (* 0.5 (min ?f124Conf)))))
	(assert (fact_entity (id f25) (name "Взят один навык Удачи") (confidence (* 0.5 (min ?f124Conf)))))
	(assert (used_rule (rule_id r148)))
)
(defrule r149
	(declare (salience 10))
	(fact_entity (id f124) (name "Основы удачи") (confidence ?f124Conf))
	=>
	(assert (fact_entity (id f129) (name "Солдатская удача") (confidence (* 0.5 (min ?f124Conf)))))
	(assert (fact_entity (id f25) (name "Взят один навык Удачи") (confidence (* 0.5 (min ?f124Conf)))))
	(assert (used_rule (rule_id r149)))
)
(defrule r150
	(declare (salience 10))
	(fact_entity (id f125) (name "Продвинутая удача") (confidence ?f125Conf))
	=>
	(assert (fact_entity (id f127) (name "Магическое сопротивление") (confidence (* 0.5 (min ?f125Conf)))))
	(assert (fact_entity (id f26) (name "Взято два навыка Удачи") (confidence (* 0.5 (min ?f125Conf)))))
	(assert (used_rule (rule_id r150)))
)
(defrule r151
	(declare (salience 10))
	(fact_entity (id f125) (name "Продвинутая удача") (confidence ?f125Conf))
	=>
	(assert (fact_entity (id f128) (name "Удача в пути") (confidence (* 0.5 (min ?f125Conf)))))
	(assert (fact_entity (id f26) (name "Взято два навыка Удачи") (confidence (* 0.5 (min ?f125Conf)))))
	(assert (used_rule (rule_id r151)))
)
(defrule r152
	(declare (salience 10))
	(fact_entity (id f125) (name "Продвинутая удача") (confidence ?f125Conf))
	=>
	(assert (fact_entity (id f129) (name "Солдатская удача") (confidence (* 0.5 (min ?f125Conf)))))
	(assert (fact_entity (id f26) (name "Взято два навыка Удачи") (confidence (* 0.5 (min ?f125Conf)))))
	(assert (used_rule (rule_id r152)))
)
(defrule r153
	(declare (salience 10))
	(fact_entity (id f126) (name "Экспертная удача") (confidence ?f126Conf))
	=>
	(assert (fact_entity (id f127) (name "Магическое сопротивление") (confidence (* 0.5 (min ?f126Conf)))))
	(assert (fact_entity (id f27) (name "Взято три навыка Удачи") (confidence (* 0.5 (min ?f126Conf)))))
	(assert (used_rule (rule_id r153)))
)
(defrule r154
	(declare (salience 10))
	(fact_entity (id f126) (name "Экспертная удача") (confidence ?f126Conf))
	=>
	(assert (fact_entity (id f128) (name "Удача в пути") (confidence (* 0.5 (min ?f126Conf)))))
	(assert (fact_entity (id f27) (name "Взято три навыка Удачи") (confidence (* 0.5 (min ?f126Conf)))))
	(assert (used_rule (rule_id r154)))
)
(defrule r155
	(declare (salience 10))
	(fact_entity (id f126) (name "Экспертная удача") (confidence ?f126Conf))
	=>
	(assert (fact_entity (id f129) (name "Солдатская удача") (confidence (* 0.5 (min ?f126Conf)))))
	(assert (fact_entity (id f27) (name "Взято три навыка Удачи") (confidence (* 0.5 (min ?f126Conf)))))
	(assert (used_rule (rule_id r155)))
)
(defrule r156
	(declare (salience 10))
	(fact_entity (id f40) (name "Взято ноль веток навыков") (confidence ?f40Conf))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (used_rule (rule_id r156)))
)
(defrule r157
	(declare (salience 10))
	(fact_entity (id f41) (name "Взята одна ветока навыков") (confidence ?f41Conf))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (used_rule (rule_id r157)))
)
(defrule r158
	(declare (salience 10))
	(fact_entity (id f42) (name "Взято две ветки навыков") (confidence ?f42Conf))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (used_rule (rule_id r158)))
)
(defrule r159
	(declare (salience 10))
	(fact_entity (id f43) (name "Взято три ветки навыков") (confidence ?f43Conf))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (used_rule (rule_id r159)))
)
(defrule r160
	(declare (salience 10))
	(fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence ?f44Conf))
	=>
	(assert (fact_entity (id f134) (name "Основы лидерства") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (used_rule (rule_id r160)))
)
(defrule r161
	(declare (salience 10))
	(fact_entity (id f134) (name "Основы лидерства") (confidence ?f134Conf))
	=>
	(assert (fact_entity (id f135) (name "Продвинутое лидерство") (confidence (* 0.5 (min ?f134Conf)))))
	(assert (used_rule (rule_id r161)))
)
(defrule r162
	(declare (salience 10))
	(fact_entity (id f135) (name "Продвинутое лидерство") (confidence ?f135Conf))
	=>
	(assert (fact_entity (id f136) (name "Экспертное лидерство") (confidence (* 0.5 (min ?f135Conf)))))
	(assert (used_rule (rule_id r162)))
)
(defrule r163
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f135) (name "Продвинутое лидерство") (confidence ?f135Conf))
	(fact_entity (id f139) (name "Сбор войск") (confidence ?f139Conf))
	=>
	(assert (fact_entity (id f142) (name "Аура скорости") (confidence (* 0.5 (min ?f46Conf ?f135Conf ?f139Conf)))))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства") (confidence (* 0.5 (min ?f46Conf ?f135Conf ?f139Conf)))))
	(assert (used_rule (rule_id r163)))
)
(defrule r164
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f136) (name "Экспертное лидерство") (confidence ?f136Conf))
	(fact_entity (id f139) (name "Сбор войск") (confidence ?f139Conf))
	=>
	(assert (fact_entity (id f142) (name "Аура скорости") (confidence (* 0.5 (min ?f46Conf ?f136Conf ?f139Conf)))))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства") (confidence (* 0.5 (min ?f46Conf ?f136Conf ?f139Conf)))))
	(assert (used_rule (rule_id r164)))
)
(defrule r165
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f135) (name "Продвинутое лидерство") (confidence ?f135Conf))
	(fact_entity (id f139) (name "Сбор войск") (confidence ?f139Conf))
	(fact_entity (id f60) (name "Память нашей крови") (confidence ?f60Conf))
	=>
	(assert (fact_entity (id f141) (name "Упоение битвой") (confidence (* 0.5 (min ?f46Conf ?f135Conf ?f139Conf ?f60Conf)))))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства") (confidence (* 0.5 (min ?f46Conf ?f135Conf ?f139Conf ?f60Conf)))))
	(assert (used_rule (rule_id r165)))
)
(defrule r166
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f136) (name "Экспертное лидерство") (confidence ?f136Conf))
	(fact_entity (id f139) (name "Сбор войск") (confidence ?f139Conf))
	(fact_entity (id f60) (name "Память нашей крови") (confidence ?f60Conf))
	=>
	(assert (fact_entity (id f141) (name "Упоение битвой") (confidence (* 0.5 (min ?f46Conf ?f136Conf ?f139Conf ?f60Conf)))))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства") (confidence (* 0.5 (min ?f46Conf ?f136Conf ?f139Conf ?f60Conf)))))
	(assert (used_rule (rule_id r166)))
)
(defrule r167
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f135) (name "Продвинутое лидерство") (confidence ?f135Conf))
	(fact_entity (id f137) (name "Дипломатия") (confidence ?f137Conf))
	=>
	(assert (fact_entity (id f140) (name "Сопереживание") (confidence (* 0.5 (min ?f46Conf ?f135Conf ?f137Conf)))))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства") (confidence (* 0.5 (min ?f46Conf ?f135Conf ?f137Conf)))))
	(assert (used_rule (rule_id r167)))
)
(defrule r168
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f136) (name "Экспертное лидерство") (confidence ?f136Conf))
	(fact_entity (id f137) (name "Дипломатия") (confidence ?f137Conf))
	=>
	(assert (fact_entity (id f140) (name "Сопереживание") (confidence (* 0.5 (min ?f46Conf ?f136Conf ?f137Conf)))))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства") (confidence (* 0.5 (min ?f46Conf ?f136Conf ?f137Conf)))))
	(assert (used_rule (rule_id r168)))
)
(defrule r169
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f136) (name "Экспертное лидерство") (confidence ?f136Conf))
	(fact_entity (id f141) (name "Упоение битвой") (confidence ?f141Conf))
	(fact_entity (id f110) (name "Оглушающий удар") (confidence ?f110Conf))
	=>
	(assert (fact_entity (id f143) (name "Воодушевление") (confidence (* 0.5 (min ?f46Conf ?f136Conf ?f141Conf ?f110Conf)))))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства") (confidence (* 0.5 (min ?f46Conf ?f136Conf ?f141Conf ?f110Conf)))))
	(assert (used_rule (rule_id r169)))
)
(defrule r170
	(declare (salience 10))
	(fact_entity (id f134) (name "Основы лидерства") (confidence ?f134Conf))
	=>
	(assert (fact_entity (id f137) (name "Дипломатия") (confidence (* 0.5 (min ?f134Conf)))))
	(assert (fact_entity (id f28) (name "Взят один навык Лидерства") (confidence (* 0.5 (min ?f134Conf)))))
	(assert (used_rule (rule_id r170)))
)
(defrule r171
	(declare (salience 10))
	(fact_entity (id f134) (name "Основы лидерства") (confidence ?f134Conf))
	=>
	(assert (fact_entity (id f138) (name "Управление казной") (confidence (* 0.5 (min ?f134Conf)))))
	(assert (fact_entity (id f28) (name "Взят один навык Лидерства") (confidence (* 0.5 (min ?f134Conf)))))
	(assert (used_rule (rule_id r171)))
)
(defrule r172
	(declare (salience 10))
	(fact_entity (id f134) (name "Основы лидерства") (confidence ?f134Conf))
	=>
	(assert (fact_entity (id f139) (name "Сбор войск") (confidence (* 0.5 (min ?f134Conf)))))
	(assert (fact_entity (id f28) (name "Взят один навык Лидерства") (confidence (* 0.5 (min ?f134Conf)))))
	(assert (used_rule (rule_id r172)))
)
(defrule r173
	(declare (salience 10))
	(fact_entity (id f135) (name "Продвинутое лидерство") (confidence ?f135Conf))
	=>
	(assert (fact_entity (id f137) (name "Дипломатия") (confidence (* 0.5 (min ?f135Conf)))))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства") (confidence (* 0.5 (min ?f135Conf)))))
	(assert (used_rule (rule_id r173)))
)
(defrule r174
	(declare (salience 10))
	(fact_entity (id f135) (name "Продвинутое лидерство") (confidence ?f135Conf))
	=>
	(assert (fact_entity (id f138) (name "Управление казной") (confidence (* 0.5 (min ?f135Conf)))))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства") (confidence (* 0.5 (min ?f135Conf)))))
	(assert (used_rule (rule_id r174)))
)
(defrule r175
	(declare (salience 10))
	(fact_entity (id f135) (name "Продвинутое лидерство") (confidence ?f135Conf))
	=>
	(assert (fact_entity (id f139) (name "Сбор войск") (confidence (* 0.5 (min ?f135Conf)))))
	(assert (fact_entity (id f29) (name "Взято два навыка Лидерства") (confidence (* 0.5 (min ?f135Conf)))))
	(assert (used_rule (rule_id r175)))
)
(defrule r176
	(declare (salience 10))
	(fact_entity (id f136) (name "Экспертное лидерство") (confidence ?f136Conf))
	=>
	(assert (fact_entity (id f137) (name "Дипломатия") (confidence (* 0.5 (min ?f136Conf)))))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства") (confidence (* 0.5 (min ?f136Conf)))))
	(assert (used_rule (rule_id r176)))
)
(defrule r177
	(declare (salience 10))
	(fact_entity (id f136) (name "Экспертное лидерство") (confidence ?f136Conf))
	=>
	(assert (fact_entity (id f138) (name "Управление казной") (confidence (* 0.5 (min ?f136Conf)))))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства") (confidence (* 0.5 (min ?f136Conf)))))
	(assert (used_rule (rule_id r177)))
)
(defrule r178
	(declare (salience 10))
	(fact_entity (id f136) (name "Экспертное лидерство") (confidence ?f136Conf))
	=>
	(assert (fact_entity (id f139) (name "Сбор войск") (confidence (* 0.5 (min ?f136Conf)))))
	(assert (fact_entity (id f30) (name "Взято три навыка Лидерства") (confidence (* 0.5 (min ?f136Conf)))))
	(assert (used_rule (rule_id r178)))
)
(defrule r179
	(declare (salience 10))
	(fact_entity (id f40) (name "Взято ноль веток навыков") (confidence ?f40Conf))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (used_rule (rule_id r179)))
)
(defrule r180
	(declare (salience 10))
	(fact_entity (id f41) (name "Взята одна ветока навыков") (confidence ?f41Conf))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (used_rule (rule_id r180)))
)
(defrule r181
	(declare (salience 10))
	(fact_entity (id f42) (name "Взято две ветки навыков") (confidence ?f42Conf))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (used_rule (rule_id r181)))
)
(defrule r182
	(declare (salience 10))
	(fact_entity (id f43) (name "Взято три ветки навыков") (confidence ?f43Conf))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (used_rule (rule_id r182)))
)
(defrule r183
	(declare (salience 10))
	(fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence ?f44Conf))
	=>
	(assert (fact_entity (id f144) (name "Основы логистики") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (used_rule (rule_id r183)))
)
(defrule r184
	(declare (salience 10))
	(fact_entity (id f144) (name "Основы логистики") (confidence ?f144Conf))
	=>
	(assert (fact_entity (id f145) (name "Развитая логистика") (confidence (* 0.5 (min ?f144Conf)))))
	(assert (used_rule (rule_id r184)))
)
(defrule r185
	(declare (salience 10))
	(fact_entity (id f145) (name "Развитая логистика") (confidence ?f145Conf))
	=>
	(assert (fact_entity (id f146) (name "Искусная логистика") (confidence (* 0.5 (min ?f145Conf)))))
	(assert (used_rule (rule_id r185)))
)
(defrule r186
	(declare (salience 10))
	(fact_entity (id f144) (name "Основы логистики") (confidence ?f144Conf))
	=>
	(assert (fact_entity (id f147) (name "Навигация") (confidence (* 0.5 (min ?f144Conf)))))
	(assert (fact_entity (id f31) (name "Взят один навык Логистики") (confidence (* 0.5 (min ?f144Conf)))))
	(assert (used_rule (rule_id r186)))
)
(defrule r187
	(declare (salience 10))
	(fact_entity (id f144) (name "Основы логистики") (confidence ?f144Conf))
	=>
	(assert (fact_entity (id f148) (name "Нахождение пути") (confidence (* 0.5 (min ?f144Conf)))))
	(assert (fact_entity (id f31) (name "Взят один навык Логистики") (confidence (* 0.5 (min ?f144Conf)))))
	(assert (used_rule (rule_id r187)))
)
(defrule r188
	(declare (salience 10))
	(fact_entity (id f144) (name "Основы логистики") (confidence ?f144Conf))
	=>
	(assert (fact_entity (id f149) (name "Разведка") (confidence (* 0.5 (min ?f144Conf)))))
	(assert (fact_entity (id f31) (name "Взят один навык Логистики") (confidence (* 0.5 (min ?f144Conf)))))
	(assert (used_rule (rule_id r188)))
)
(defrule r189
	(declare (salience 10))
	(fact_entity (id f145) (name "Развитая логистика") (confidence ?f145Conf))
	=>
	(assert (fact_entity (id f147) (name "Навигация") (confidence (* 0.5 (min ?f145Conf)))))
	(assert (fact_entity (id f32) (name "Взято два навыка Логистики") (confidence (* 0.5 (min ?f145Conf)))))
	(assert (used_rule (rule_id r189)))
)
(defrule r190
	(declare (salience 10))
	(fact_entity (id f145) (name "Развитая логистика") (confidence ?f145Conf))
	=>
	(assert (fact_entity (id f148) (name "Нахождение пути") (confidence (* 0.5 (min ?f145Conf)))))
	(assert (fact_entity (id f32) (name "Взято два навыка Логистики") (confidence (* 0.5 (min ?f145Conf)))))
	(assert (used_rule (rule_id r190)))
)
(defrule r191
	(declare (salience 10))
	(fact_entity (id f145) (name "Развитая логистика") (confidence ?f145Conf))
	=>
	(assert (fact_entity (id f149) (name "Разведка") (confidence (* 0.5 (min ?f145Conf)))))
	(assert (fact_entity (id f32) (name "Взято два навыка Логистики") (confidence (* 0.5 (min ?f145Conf)))))
	(assert (used_rule (rule_id r191)))
)
(defrule r192
	(declare (salience 10))
	(fact_entity (id f146) (name "Искусная логистика") (confidence ?f146Conf))
	=>
	(assert (fact_entity (id f147) (name "Навигация") (confidence (* 0.5 (min ?f146Conf)))))
	(assert (fact_entity (id f33) (name "Взято три навыка Логистики") (confidence (* 0.5 (min ?f146Conf)))))
	(assert (used_rule (rule_id r192)))
)
(defrule r193
	(declare (salience 10))
	(fact_entity (id f146) (name "Искусная логистика") (confidence ?f146Conf))
	=>
	(assert (fact_entity (id f148) (name "Нахождение пути") (confidence (* 0.5 (min ?f146Conf)))))
	(assert (fact_entity (id f33) (name "Взято три навыка Логистики") (confidence (* 0.5 (min ?f146Conf)))))
	(assert (used_rule (rule_id r193)))
)
(defrule r194
	(declare (salience 10))
	(fact_entity (id f146) (name "Искусная логистика") (confidence ?f146Conf))
	=>
	(assert (fact_entity (id f149) (name "Разведка") (confidence (* 0.5 (min ?f146Conf)))))
	(assert (fact_entity (id f33) (name "Взято три навыка Логистики") (confidence (* 0.5 (min ?f146Conf)))))
	(assert (used_rule (rule_id r194)))
)
(defrule r195
	(declare (salience 10))
	(fact_entity (id f40) (name "Взято ноль веток навыков") (confidence ?f40Conf))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (used_rule (rule_id r195)))
)
(defrule r196
	(declare (salience 10))
	(fact_entity (id f41) (name "Взята одна ветока навыков") (confidence ?f41Conf))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (used_rule (rule_id r196)))
)
(defrule r197
	(declare (salience 10))
	(fact_entity (id f42) (name "Взято две ветки навыков") (confidence ?f42Conf))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (used_rule (rule_id r197)))
)
(defrule r198
	(declare (salience 10))
	(fact_entity (id f43) (name "Взято три ветки навыков") (confidence ?f43Conf))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (used_rule (rule_id r198)))
)
(defrule r199
	(declare (salience 10))
	(fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence ?f44Conf))
	=>
	(assert (fact_entity (id f164) (name "Основы управления машинами") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (used_rule (rule_id r199)))
)
(defrule r200
	(declare (salience 10))
	(fact_entity (id f164) (name "Основы управления машинами") (confidence ?f164Conf))
	=>
	(assert (fact_entity (id f165) (name "Продвинутое управление машинами") (confidence (* 0.5 (min ?f164Conf)))))
	(assert (used_rule (rule_id r200)))
)
(defrule r201
	(declare (salience 10))
	(fact_entity (id f165) (name "Продвинутое управление машинами") (confidence ?f165Conf))
	=>
	(assert (fact_entity (id f166) (name "Экспертное управление машинами") (confidence (* 0.5 (min ?f165Conf)))))
	(assert (used_rule (rule_id r201)))
)
(defrule r202
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f165) (name "Продвинутое управление машинами") (confidence ?f165Conf))
	(fact_entity (id f167) (name "Баллиста") (confidence ?f167Conf))
	=>
	(assert (fact_entity (id f170) (name "Скорострельная баллиста") (confidence (* 0.5 (min ?f46Conf ?f165Conf ?f167Conf)))))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами") (confidence (* 0.5 (min ?f46Conf ?f165Conf ?f167Conf)))))
	(assert (used_rule (rule_id r202)))
)
(defrule r203
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f166) (name "Экспертное управление машинами") (confidence ?f166Conf))
	(fact_entity (id f167) (name "Баллиста") (confidence ?f167Conf))
	=>
	(assert (fact_entity (id f170) (name "Скорострельная баллиста") (confidence (* 0.5 (min ?f46Conf ?f166Conf ?f167Conf)))))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами") (confidence (* 0.5 (min ?f46Conf ?f166Conf ?f167Conf)))))
	(assert (used_rule (rule_id r203)))
)
(defrule r204
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f165) (name "Продвинутое управление машинами") (confidence ?f165Conf))
	(fact_entity (id f168) (name "Катапульта") (confidence ?f168Conf))
	=>
	(assert (fact_entity (id f171) (name "Помощь гоблинов") (confidence (* 0.5 (min ?f46Conf ?f165Conf ?f168Conf)))))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами") (confidence (* 0.5 (min ?f46Conf ?f165Conf ?f168Conf)))))
	(assert (used_rule (rule_id r204)))
)
(defrule r205
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f166) (name "Экспертное управление машинами") (confidence ?f166Conf))
	(fact_entity (id f168) (name "Катапульта") (confidence ?f168Conf))
	=>
	(assert (fact_entity (id f171) (name "Помощь гоблинов") (confidence (* 0.5 (min ?f46Conf ?f166Conf ?f168Conf)))))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами") (confidence (* 0.5 (min ?f46Conf ?f166Conf ?f168Conf)))))
	(assert (used_rule (rule_id r205)))
)
(defrule r206
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f165) (name "Продвинутое управление машинами") (confidence ?f165Conf))
	(fact_entity (id f169) (name "Палатка первой помощи") (confidence ?f169Conf))
	=>
	(assert (fact_entity (id f172) (name "Чумная палатка") (confidence (* 0.5 (min ?f46Conf ?f165Conf ?f169Conf)))))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами") (confidence (* 0.5 (min ?f46Conf ?f165Conf ?f169Conf)))))
	(assert (used_rule (rule_id r206)))
)
(defrule r207
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f166) (name "Экспертное управление машинами") (confidence ?f166Conf))
	(fact_entity (id f169) (name "Палатка первой помощи") (confidence ?f169Conf))
	=>
	(assert (fact_entity (id f172) (name "Чумная палатка") (confidence (* 0.5 (min ?f46Conf ?f166Conf ?f169Conf)))))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами") (confidence (* 0.5 (min ?f46Conf ?f166Conf ?f169Conf)))))
	(assert (used_rule (rule_id r207)))
)
(defrule r208
	(declare (salience 10))
	(fact_entity (id f46) (name "Твой класс Варвар") (confidence ?f46Conf))
	(fact_entity (id f166) (name "Экспертное управление машинами") (confidence ?f166Conf))
	(fact_entity (id f171) (name "Помощь гоблинов") (confidence ?f171Conf))
	(fact_entity (id f58) (name "Сила против Магии") (confidence ?f58Conf))
	=>
	(assert (fact_entity (id f173) (name "Серный дождь") (confidence (* 0.5 (min ?f46Conf ?f166Conf ?f171Conf ?f58Conf)))))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами") (confidence (* 0.5 (min ?f46Conf ?f166Conf ?f171Conf ?f58Conf)))))
	(assert (used_rule (rule_id r208)))
)
(defrule r209
	(declare (salience 10))
	(fact_entity (id f164) (name "Основы управления машинами") (confidence ?f164Conf))
	=>
	(assert (fact_entity (id f167) (name "Баллиста") (confidence (* 0.5 (min ?f164Conf)))))
	(assert (fact_entity (id f37) (name "Взят один навык Управления машинами") (confidence (* 0.5 (min ?f164Conf)))))
	(assert (used_rule (rule_id r209)))
)
(defrule r210
	(declare (salience 10))
	(fact_entity (id f164) (name "Основы управления машинами") (confidence ?f164Conf))
	=>
	(assert (fact_entity (id f168) (name "Катапульта") (confidence (* 0.5 (min ?f164Conf)))))
	(assert (fact_entity (id f37) (name "Взят один навык Управления машинами") (confidence (* 0.5 (min ?f164Conf)))))
	(assert (used_rule (rule_id r210)))
)
(defrule r211
	(declare (salience 10))
	(fact_entity (id f164) (name "Основы управления машинами") (confidence ?f164Conf))
	=>
	(assert (fact_entity (id f169) (name "Палатка первой помощи") (confidence (* 0.5 (min ?f164Conf)))))
	(assert (fact_entity (id f37) (name "Взят один навык Управления машинами") (confidence (* 0.5 (min ?f164Conf)))))
	(assert (used_rule (rule_id r211)))
)
(defrule r212
	(declare (salience 10))
	(fact_entity (id f165) (name "Продвинутое управление машинами") (confidence ?f165Conf))
	=>
	(assert (fact_entity (id f167) (name "Баллиста") (confidence (* 0.5 (min ?f165Conf)))))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами") (confidence (* 0.5 (min ?f165Conf)))))
	(assert (used_rule (rule_id r212)))
)
(defrule r213
	(declare (salience 10))
	(fact_entity (id f165) (name "Продвинутое управление машинами") (confidence ?f165Conf))
	=>
	(assert (fact_entity (id f168) (name "Катапульта") (confidence (* 0.5 (min ?f165Conf)))))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами") (confidence (* 0.5 (min ?f165Conf)))))
	(assert (used_rule (rule_id r213)))
)
(defrule r214
	(declare (salience 10))
	(fact_entity (id f165) (name "Продвинутое управление машинами") (confidence ?f165Conf))
	=>
	(assert (fact_entity (id f169) (name "Палатка первой помощи") (confidence (* 0.5 (min ?f165Conf)))))
	(assert (fact_entity (id f38) (name "Взято два навыка Управления машинами") (confidence (* 0.5 (min ?f165Conf)))))
	(assert (used_rule (rule_id r214)))
)
(defrule r215
	(declare (salience 10))
	(fact_entity (id f166) (name "Экспертное управление машинами") (confidence ?f166Conf))
	=>
	(assert (fact_entity (id f167) (name "Баллиста") (confidence (* 0.5 (min ?f166Conf)))))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами") (confidence (* 0.5 (min ?f166Conf)))))
	(assert (used_rule (rule_id r215)))
)
(defrule r216
	(declare (salience 10))
	(fact_entity (id f166) (name "Экспертное управление машинами") (confidence ?f166Conf))
	=>
	(assert (fact_entity (id f168) (name "Катапульта") (confidence (* 0.5 (min ?f166Conf)))))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами") (confidence (* 0.5 (min ?f166Conf)))))
	(assert (used_rule (rule_id r216)))
)
(defrule r217
	(declare (salience 10))
	(fact_entity (id f166) (name "Экспертное управление машинами") (confidence ?f166Conf))
	=>
	(assert (fact_entity (id f169) (name "Палатка первой помощи") (confidence (* 0.5 (min ?f166Conf)))))
	(assert (fact_entity (id f39) (name "Взято три навыка Управления машинами") (confidence (* 0.5 (min ?f166Conf)))))
	(assert (used_rule (rule_id r217)))
)
(defrule r218
	(declare (salience 10))
	(fact_entity (id f40) (name "Взято ноль веток навыков") (confidence ?f40Conf))
	=>
	(assert (fact_entity (id f155) (name "Основы образования") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (fact_entity (id f41) (name "Взята одна ветока навыков") (confidence (* 0.5 (min ?f40Conf)))))
	(assert (used_rule (rule_id r218)))
)
(defrule r219
	(declare (salience 10))
	(fact_entity (id f41) (name "Взята одна ветока навыков") (confidence ?f41Conf))
	=>
	(assert (fact_entity (id f155) (name "Основы образования") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (fact_entity (id f42) (name "Взято две ветки навыков") (confidence (* 0.5 (min ?f41Conf)))))
	(assert (used_rule (rule_id r219)))
)
(defrule r220
	(declare (salience 10))
	(fact_entity (id f42) (name "Взято две ветки навыков") (confidence ?f42Conf))
	=>
	(assert (fact_entity (id f155) (name "Основы образования") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (fact_entity (id f43) (name "Взято три ветки навыков") (confidence (* 0.5 (min ?f42Conf)))))
	(assert (used_rule (rule_id r220)))
)
(defrule r221
	(declare (salience 10))
	(fact_entity (id f43) (name "Взято три ветки навыков") (confidence ?f43Conf))
	=>
	(assert (fact_entity (id f155) (name "Основы образования") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence (* 0.5 (min ?f43Conf)))))
	(assert (used_rule (rule_id r221)))
)
(defrule r222
	(declare (salience 10))
	(fact_entity (id f44) (name "Взято четрые ветки навыков") (confidence ?f44Conf))
	=>
	(assert (fact_entity (id f155) (name "Основы образования") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (fact_entity (id f45) (name "Взято пять веток навыков") (confidence (* 0.5 (min ?f44Conf)))))
	(assert (used_rule (rule_id r222)))
)
(defrule r223
	(declare (salience 10))
	(fact_entity (id f155) (name "Основы образования") (confidence ?f155Conf))
	=>
	(assert (fact_entity (id f156) (name "Продвинутое образование") (confidence (* 0.5 (min ?f155Conf)))))
	(assert (used_rule (rule_id r223)))
)
(defrule r224
	(declare (salience 10))
	(fact_entity (id f156) (name "Продвинутое образование") (confidence ?f156Conf))
	=>
	(assert (fact_entity (id f157) (name "Экспертное образование") (confidence (* 0.5 (min ?f156Conf)))))
	(assert (used_rule (rule_id r224)))
)
(defrule r225
	(declare (salience 10))
	(fact_entity (id f155) (name "Основы образования") (confidence ?f155Conf))
	=>
	(assert (fact_entity (id f242) (name "Разгадка тайного") (confidence (* 0.5 (min ?f155Conf)))))
	(assert (fact_entity (id f34) (name "Взят один навык Образования") (confidence (* 0.5 (min ?f155Conf)))))
	(assert (used_rule (rule_id r225)))
)
(defrule r226
	(declare (salience 10))
	(fact_entity (id f155) (name "Основы образования") (confidence ?f155Conf))
	=>
	(assert (fact_entity (id f243) (name "Ученый") (confidence (* 0.5 (min ?f155Conf)))))
	(assert (fact_entity (id f34) (name "Взят один навык Образования") (confidence (* 0.5 (min ?f155Conf)))))
	(assert (used_rule (rule_id r226)))
)
(defrule r227
	(declare (salience 10))
	(fact_entity (id f155) (name "Основы образования") (confidence ?f155Conf))
	=>
	(assert (fact_entity (id f161) (name "Притяжение магии") (confidence (* 0.5 (min ?f155Conf)))))
	(assert (used_rule (rule_id r227)))
)
(defrule r228
	(declare (salience 10))
	(fact_entity (id f156) (name "Продвинутое образование") (confidence ?f156Conf))
	=>
	(assert (fact_entity (id f242) (name "Разгадка тайного") (confidence (* 0.5 (min ?f156Conf)))))
	(assert (fact_entity (id f35) (name "Взято два навыка Образования") (confidence (* 0.5 (min ?f156Conf)))))
	(assert (used_rule (rule_id r228)))
)
(defrule r229
	(declare (salience 10))
	(fact_entity (id f156) (name "Продвинутое образование") (confidence ?f156Conf))
	=>
	(assert (fact_entity (id f243) (name "Ученый") (confidence (* 0.5 (min ?f156Conf)))))
	(assert (fact_entity (id f35) (name "Взято два навыка Образования") (confidence (* 0.5 (min ?f156Conf)))))
	(assert (used_rule (rule_id r229)))
)
(defrule r230
	(declare (salience 10))
	(fact_entity (id f156) (name "Продвинутое образование") (confidence ?f156Conf))
	=>
	(assert (fact_entity (id f161) (name "Притяжение магии") (confidence (* 0.5 (min ?f156Conf)))))
	(assert (fact_entity (id f35) (name "Взято два навыка Образования") (confidence (* 0.5 (min ?f156Conf)))))
	(assert (used_rule (rule_id r230)))
)
(defrule r231
	(declare (salience 10))
	(fact_entity (id f157) (name "Экспертное образование") (confidence ?f157Conf))
	=>
	(assert (fact_entity (id f242) (name "Разгадка тайного") (confidence (* 0.5 (min ?f157Conf)))))
	(assert (fact_entity (id f36) (name "Взято три навыка Образования") (confidence (* 0.5 (min ?f157Conf)))))
	(assert (used_rule (rule_id r231)))
)
(defrule r232
	(declare (salience 10))
	(fact_entity (id f157) (name "Экспертное образование") (confidence ?f157Conf))
	=>
	(assert (fact_entity (id f243) (name "Ученый") (confidence (* 0.5 (min ?f157Conf)))))
	(assert (fact_entity (id f36) (name "Взято три навыка Образования") (confidence (* 0.5 (min ?f157Conf)))))
	(assert (used_rule (rule_id r232)))
)
(defrule r233
	(declare (salience 10))
	(fact_entity (id f157) (name "Экспертное образование") (confidence ?f157Conf))
	=>
	(assert (fact_entity (id f161) (name "Притяжение магии") (confidence (* 0.5 (min ?f157Conf)))))
	(assert (fact_entity (id f36) (name "Взято три навыка Образования") (confidence (* 0.5 (min ?f157Conf)))))
	(assert (used_rule (rule_id r233)))
)
