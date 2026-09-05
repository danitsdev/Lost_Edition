return {
    descriptions={
        Back = {
            b_losted_evolutionary = {
                name = 'Эволюционная колода',
                text = {
                    'За каждое {C:attention}четное анте{} выше 3,',
                    'получите {C:attention}+1{} к размеру руки',
                },
                unlock={
                    'Увеличьте размер руки',
                    'до {C:attention}#1#{} карт',
                },
            },
            b_losted_fortune = {
                name = 'Колода фортуны',
                text = {
                    'Удваивает все {C:attention}указанные',
                    '{C:green,E:1,S:1.1}вероятности',
                    '{C:inactive}(напр.: {C:green}1 из 3{C:inactive} -> {C:green}2 из 3{C:inactive})',
                },
                unlock = {
                    'Выиграйте партию с',
                    '{C:attention}#1#{}',
                    'на любой сложности',
                }
            },
            b_losted_chaotic = {
                name = 'Хаотичная колода',
                text = {
                    'Все карты случайны,',
                    'ограничены {C:attention}6 достоинствами{} и {C:attention}2 мастями{}',
                    'Начинаете партию с {C:attention,T:v_overstock_norm}#1#{}',
                    'Базовый размер блайнда {C:red}X#2#{}',
                },
                unlock = {
                    'Выиграйте партию с',
                    '{C:attention}#1#{}',
                    'на любой сложности',
                }
            },
            b_losted_medieval = {
                name = 'Средневековая колода',
                text = {
                    '{C:attention}+#1#{} слот джокера',
                    'Начиная с анте 2,',
                    '{C:attention}все{} блайнды являются {C:attention}Босс-блайндами{}',
                },
                unlock = {
                    'Завершите испытание',
                    '{E:1,C:attention}Средневековье'
                }
            },
        },
        Sleeve = {
            sleeve_losted_evolutionary = {
                name = 'Evolutionary Sleeve',
                text = {
                    'For each {C:attention}even ante{} greater than 3,',
                    'gain {C:attention}+1{} hand size',
                },
            },
            sleeve_losted_fortune = {
                name = 'Fortune Sleeve',
                text = {
                    'Doubles {C:attention}all listed',
                    '{C:green,E:1,S:1.1}probabilities',
                    '{C:inactive}(ex: {C:green}1 in 3{C:inactive} -> {C:green}2 in 3{C:inactive})',
                },
            },
            sleeve_losted_chaotic = {
                name = 'Chaotic Sleeve',
                text = {
                    'All cards are randomized',
                    'limited to {C:attention}6 ranks{} and {C:attention}2 suits{}',
                    'Start run with {C:attention,T:v_overstock_norm}#1#{}',
                    '{C:red}X#2#{} base Blind size',
                },
            },
            sleeve_losted_medieval = {
                name = 'Medieval Sleeve',
                text = {
                    '{C:attention}+#1#{} Joker slot',
                    'Starting from Ante 2,',
                    '{C:attention}All{} Blinds are {C:attention}Boss Blinds{}',
                },
            },
        },
        Blind = {
            bl_losted_all_ones = {
                name='Упс! Все единицы',
                text={
                    'Делит пополам все {C:attention}указанные',
                    '{C:green,E:1,S:1.1}вероятности',
                    '{C:inactive}(напр.: {C:green}1 из 2{C:inactive} -> {C:green}0.5 из 2{C:inactive})',
                },
            },
            bl_losted_privilege = {
                name = 'Привилегия',
                text = {
                    '#1# из 8 карт',
                    'ослабляется',
                }
            },
            bl_losted_vampiric = {
                name = 'Вампирский',
                text = {
                    'Удаляет {C:attention}улучшения{}',
                    'со всех {C:attention}подсчитанных карт{}',
                    '{C:inactive}(Возвращаются после победы над боссом)'
                }
            },
            bl_losted_inversion = {
                name = 'Инверсия',
                text = {
                    'Меняет местами количество {C:attention}рук',
                    'и {C:attention}сбросов',
                }
            },
            bl_losted_amnesia = {
                name = 'Амнезия',
                text = {
                    'Временно сбрасывает #1#',
                    'до уровня 1',
                }
            },
            bl_losted_labyrinth = {
                name = 'Лабиринт',
                text = {
                    'Случайная {C:attention}покерная рука{}',
                    'ослабляется.',
                    'Меняется при каждом розыгрыше',
                },
            },
            bl_losted_watchdog = {
                name = 'Сторожевой пёс',
                text = {
                    'Пропускает следующую лавку',
                }
            },
            bl_losted_balance = {
                name = 'Равновесие',
                text = {
                    'Карты с {C:attention}четным{} достоинством',
                    'ослабляются'
                }
            },
            bl_losted_solitude = {
                name = 'Одиночество',
                text = {
                    'Карты с {C:attention}нечетным{} достоинством',
                    'ослабляются'
                }
            },
            bl_losted_annihilation = {
                name = 'Аннигиляция',
                text = {
                    'Теряете случайный {C:attention}тег{}',
                    'за каждую сыгранную руку',
                }
            }
        },
        Edition = {
            e_losted_plasma = {
                name = 'Плазма',
                text = {
                    '{X:purple,C:white}^#1#{} множ.',
                },
            },
            e_losted_quantum = {
                name = 'Квантовый',
                text = {
                    'Повторяет {C:blue}эффекты{}',
                    'этой карты ещё {C:blue}1{} раз',
                },
            },
        },
        Enhanced = {
            m_losted_diamond = {
                name = 'Алмазная карта',
                text = {
                    'Повторный подсчет, если сыграна {C:attention}рядом{} с',
                    'другой {C:attention}алмазной картой{}',
                    '{X:chips,C:white}X#1#{} фишек и {X:mult,C:white}X#2#{} множ.,',
                    'пока эта карта остается в руке',
                },
            },
            m_losted_stellar = {
                name = 'Звездная карта',
                text = {
                    'Получает {C:chips}+#1#{} постоянных фишек',
                    'при подсчете очков.',
                },
            },
            m_losted_toast = {
                name = 'Карта-тост',
                text = {
                    '{X:mult,C:white}X#1#{} множ.',
                    'при подсчете,',
                    '{C:attention}расходуется{} после использования',
                },
            },
            m_wild={
                name='Дикая карта масти',
                text={
                    'Может использоваться',
                    'как любая масть.',
                    'Не подвержена ослаблению',
                    'из-за эффектов на масть'
                },
            },
        },
        Other = {
            losted_platinum_sticker = {
                name = 'Платиновая наклейка',
                text= {
                    'Этот джокер использовался для победы',
                    'на сложности {C:attention}Платиновой',
                    '{C:attention}ставки{}',
                }
            },
            losted_diamond_sticker = {
                name = 'Алмазная наклейка',
                text= {
                    'Этот джокер использовался для победы',
                    'на сложности {C:attention}Алмазной',
                    '{C:attention}ставки{}',
                }
            },
            artist = {
                text = {
                    '{C:inactive}Художник',
                },
            },
            artist_credit = {
                name = 'Художник',
                text = {
                    '{E:1}#1#{}'
                },
            },
            perfect_three_of_a_kind = {
                name = '{C:attention}Идеальный сет{}',
                text = {
                    'Состоит {C:attention}ровно{} из',
                    '{C:attention}3{} карт {C:attention}одного достоинства{},'
                }
            },
            improvements_of_card = {
                name = '{C:dark_edition}Улучшения{}',
                text = {
                    'Это особые атрибуты,',
                    'которые изменяют карту:',
                    '{C:dark_edition}Усиление{}, {C:dark_edition}Печать{} и {C:dark_edition}Издание{}.',
                }
            }
        },
        Joker={
            j_losted_jimball={
                name = 'Джимболик',
                text = {
                    'При выборе {C:attention}блайнда{},',
                    'навсегда получает',
                    '{C:mult}+#1#{} множ. и {C:chips}+#2#{} фишек',
                    '{C:inactive}(сейчас {C:mult}+#3#{}{C:inactive} множ., {C:chips}+#4#{}{C:inactive} фишек)'
                }
            },
            j_losted_stake_out={
                name = 'Наблюдатель',
                text = {
                    '{X:mult,C:white}X#1#{} множ.,',
                    '{C:attention}теряете 1 руку{}, если сыгранная рука',
                    'активирует {C:attention}Босс-блайнд{}'
                }
            },
            j_losted_gothic={
                name = 'Готический джокер',
                text = {
                    'Разыгранные карты с {C:attention}дикой мастью{}',
                    'дают {C:mult}+#1#{} множ. при подсчете очков'
                }
            },
            j_losted_lost_sock={
                name = 'Потерянный носок',
                text = {
                    'Этот джокер получает {C:mult}+#1#{} множ.,',
                    'если сыгранная рука содержит',
                    '{C:attention}#2#{} или меньше карт',
                    '{C:inactive}(сейчас {C:mult}+#3#{C:inactive} множ.)',
                }
            },
            j_losted_perfect_split={
                name = 'Идеальное разделение',
                text = {
                    'Каждая {C:attention}подсчитанная{} карта',
                    'имеет шанс {C:green}#1# из #2#{}',
                    'навсегда получить {C:mult}+#3#{} множ.',
                }
            },
            j_losted_sticky={
                name = 'Липкий джокер',
                text = {
                    'Через {C:attention}#1#{} раунда(ов),',
                    'продайте эту карту, чтобы сделать',
                    'случайного джокера {C:dark_edition}негативным{}',
                    '{C:inactive}(сейчас {C:attention}#2#{C:inactive}/#1#)',
                },
                unlock={
                    'Выиграйте партию с',
                    '{E:1,C:attention}8 или более джокерами{}',
                },
            },
            j_losted_vip_pass={
                name = 'VIP-пропуск',
                text = {
                    'Создает бесплатный дополнительный {C:attention}ваучер{} в лавке',
                    'после победы над {C:attention}Босс-блайндом{}'
                }
            },
            j_losted_welder={
                name = 'Сварщик',
                text = {
                    '{C:attention}Стальные карты{} дают',
                    '{X:mult,C:white}X#1#{} множ. вместо',
                    '{X:mult,C:white}X1.5{} множ.'
                },
                unlock={
                    'Иметь минимум {C:attention}#1#',
                    '{E:1,C:attention}#2#{} в',
                    'своей колоде',
                },
            },
            j_losted_triquetra = {
                name = 'Трикетра',
                text = {
                    'Карты, являющиеся частью',
                    '{C:attention}идеального сета{} в сыгранной руке,',
                    '{C:attention}повторно активируются{} еще #1# раз',
                }
            },
            j_losted_the_passage = {
                name = 'Проход',
                text = {
                    'При {C:attention}продаже{} этой карты,',
                    'анте изменяется на {C:attention}1{}.',
                    '{C:green}50%{} шанс {C:blue}увеличить{}',
                    '{C:green}50%{} шанс {C:red}уменьшить{}'
                },
                unlock = {
                    'Используйте ваучеры',
                    '{C:attention}#1#{} и {C:attention}#2#{}',
                    'в одной партии'
                }
            },
            j_losted_slot_machine = {
                name = 'Игровой автомат',
                text = {
                    'Каждая подсчитанная {C:attention}7{} имеет шанс',
                    '{C:green}#1# из 2{} выиграть {C:mult}+#2#{} множ.,',
                    '{C:green}#1# из 4{} выиграть {C:gold}$#3#{},',
                    '{C:green}#1# из 8{} выиграть {X:mult,C:white}X#4#{} множ.',
                    '{C:green}#1# из #5#{} проиграть все {C:money}${}',
                },
                unlock = {
                    'Сыграйте сет, содержащий',
                    '3 {C:attention,E:1}счастливые карты{}',
                    'достоинства {C:attention,E:1}7{}',
                },
            },
            j_losted_strawberry_milkshake = {
                name = 'Клубничный молочный коктейль',
                text = {
                    '{X:chips,C:white}X#1#{} фишек,',
                    'теряет {X:chips,C:white}X#2#{} фишек',
                    'за каждый сыгранный раунд.',
                    '{C:dark_edition}О, какой сливочный!{}'
                }
            },
            j_losted_schrodinger = {
                name = 'Кот Шрёдингера',
                text = {
                    'Шанс {C:green}#1# из #2#{}',
                    'дать {C:chips}+#3#{} фишек',
                }
            },
            j_losted_mitosis = {
                name = 'Митоз',
                text = {
                    'Если {C:attention}первая рука{} раунда состоит',
                    'только из карт {C:attention}одного достоинства{},',
                    'все подсчитанные карты копируют',
                    '{C:dark_edition}улучшения{} самой правой карты.',
                },
            },
            j_losted_last_resort = {
                name = 'Крайняя мера',
                text = {
                    'Если в {C:attention}первом сбросе{} раунда',
                    'ровно {C:attention}2{} карты, выстрелить',
                    'в них и уничтожить'
                }
            },
            j_losted_magician = {
                name = 'Джокер-фокусник',
                text = {
                    'При использовании карты {C:purple}Таро{},',
                    'имеет шанс {C:green}#1# из #2#{}',
                    'создать {C:spectral}спектральную{} карту',
                    '{C:inactive}(Должно быть место){}'
                },
            },
            j_losted_disruption = {
                name = 'Сбой',
                text = {
                    '{X:mult,C:white}X1{} множ.,',
                    'получает {X:mult,C:white}X#1#{} множ. за каждый',
                    'раз, когда в этой партии',
                    'была сыграна {C:attention}покерная рука{}',
                }
            },
            j_losted_passion_fruit = {
                name = 'Маракуйя',
                text = {
                    'Получает {C:chips}+#2#{} фишек',
                    'за каждую сыгранную руку',
                    'Шанс {C:green}#3# из #4#{} быть',
                    'уничтоженным в конце раунда',
                    '{C:inactive}(сейчас {C:chips}+#1#{}{C:inactive} фишек)'
                }
            },
            j_losted_passion_juice = {
                name = 'Сок маракуйи',
                text = {
                    'Получает {X:chips,C:white}X#2#{} фишек',
                    'за каждую сыгранную руку',
                    'Шанс {C:green}#3# из #4#{} быть',
                    'уничтоженным в конце раунда',
                    '{C:inactive}(сейчас {X:chips,C:white}X#1#{}{C:inactive} фишек)'
                }
            },
            j_losted_statue = {
                name = 'Каменная статуя',
                text = {
                    'Подсчитанные {C:attention}каменные карты{}',
                    'дают {X:chips,C:white}X#1#{} фишек'
                },
                unlock = {
                    'Сыграйте руку, содержащую',
                    '5 {C:attention,E:1}каменных карт{}',
                }
            },
            j_losted_rule_book = {
                name = 'Книга правил',
                text = {
                    '{C:attention}Последняя подсчитанная карта{} в руке',
                    'дает {X:mult,C:white}X#1#{} множ.',
                }
            },
            j_losted_toc_toc = {
                name = 'Тук-тук',
                text = {
                    'При розыгрыше руки получите',
                    '{C:money}${} равное количеству',
                    '{C:attention}оставшихся сбросов{}',
                }
            },
            j_losted_advantage_addiction = {
                name = 'Зависимость от преимуществ',
                text = {
                    'Повторно активирует карты с',
                    '{C:dark_edition}улучшениями{}',
                    'дополнительно #1#{} раз',
                },
                unlock={
                    'Иметь в колоде',
                    'не менее {E:1,C:attention}#1#{} карт',
                    'с {C:dark_edition}улучшениями{}',
                },
            },
            j_losted_jersey_10 = {
                name = 'Футболка №10',
                text = {
                    'Если сыгранная рука состоит из одной {C:attention}10{},',
                    'применяет к ней случайное {C:dark_edition}издание{}',
                }
            },
            j_losted_harlequin = {
                name = 'Арлекин',
                text = {
                    '{C:chips}+#1#{} фишек',
                }
            },
            j_losted_totem = {
                name = 'Тотем',
                text = {
                    'Имеет шанс {C:green}#1# из #2#{}',
                    '{C:attention}удвоить{} каждый полученный {C:money}${}',
                },
                unlock = {
                    'Завершите испытание',
                    '{E:1,C:attention}На исходе'
                }
            },
            j_losted_duke = {
                name = 'Герцог',
                text = {
                    'Повторно активирует {C:attention}первую{} сыгранную',
                    'карту, использованную при подсчете очков,',
                    'дополнительно {C:attention}1{} раз',
                    'за каждого {C:attention}валета{} в руке'
                },
            },
            j_losted_mysterious = {
                name = '???',
                text = {
                    '{C:inactive}(#1#/#2#)',
                    '{C:inactive,s:0.7}Руки'
                },
                unlock = {
                    'Завершите испытание',
                    '{E:1,C:attention}Марафон'
                }
            },
            j_losted_rubiks_cube = {
                name = 'Кубик Рубика',
                text = {
                    'Каждая сыгранная {C:attention}6{} дает {C:mult}+#2#{} множ.,',
                    'Каждая сыгранная {C:attention}9{} дает {C:chips}+#1#{} фишек',
                }
            },
            j_losted_demonic_joker = {
                name = 'Демонический джокер',
                text = {
                    'Каждая сыгранная {C:attention}6{} дает {C:gold}$#1#{} золота',
                    'Если сыгранная рука содержит {C:attention}сет{},',
                    'золото за карту {C:attention}удваивается{}',
                    'Имеет шанс {C:green}#2# из #3#{} не сработать',
                },
                unlock = {
                    'Сыграйте сет, содержащий',
                    '3 {C:attention,E:1}золотые карты{}',
                    'достоинства {C:attention,E:1}6{}',
                },
            },
            j_losted_moist_cake = {
                name = 'Влажный торт',
                text = {
                    'Сыгранные карты с',
                    'мастью {V:1}#2#{} дают',
                    '{C:mult}+#1#{} множ. при подсчете очков',
                    '{s:0.8}масть меняется в конце раунда',
                }
            },
            j_losted_rocker={
                name = 'Рокер',
                text = {
                    'Сыгранные {C:attention}каменные карты{}',
                    'дают {C:mult}+#1#{} множ. при подсчете очков'
                }
            },
            j_losted_piggy_bank = {
                name = 'Копилка',
                text = {
                    'Получает {C:chips}+#2#{} фишек за каждый',
                    '{C:money}$1{} процентов, полученных в',
                    'конце раунда.',
                    '{C:inactive}(сейчас {C:chips}+#1#{C:inactive} фишек)'
                }
            },
            j_losted_hematophilia = {
                name = 'Гемофилия',
                text = {
                    'Получает {C:mult}+#2#{} множ. навсегда',
                    'за каждую {C:attention}уничтоженную{} карту или джокера',
                    '{C:inactive}(сейчас {C:mult}+#1#{}{C:inactive} множ.)'
                }
            },
            j_losted_chicken_cleide = {
                name = 'Курица Клейде',
                text = {
                    'При выборе {C:attention}Босс-блайнда{},',
                    'несет {C:dark_edition}негативное{} {C:attention}яйцо{}. Максимум {C:attention}#1#{} яиц',
                    '{C:inactive}(сейчас {C:attention}#2#{C:inactive}/#1#)',
                    '{C:inactive,s:0.9}(Уничтожается после снесения яиц)'
                },
                unlock = {
                    'Завершите испытание',
                    '{E:1,C:attention}Омлет'
                }
            },
            j_losted_seal_stamp = {
                name = 'Печать',
                text = {
                    'При победе над {C:attention}Босс-блайндом{},',
                    'создает случайный {C:spectral}спектр печати{}',
                    '{C:inactive}(должно быть место){}'
                }
            },
            j_losted_pot_of_greed = {
                name = 'Горшок жадности',
                text = {
                    'При игре или сбросе,',
                    'возьмите {C:attention}1{} дополнительную карту',
                },
                unlock={
                    'Достичь',
                    'уровня ставки {E:1,C:attention}#1#',
                },
            },
            j_losted_sarcophagus = {
                name = 'Саркофаг',
                text = {
                    'При победе над {C:attention}Босс-блайндом{},',
                    'создает случайного {C:dark_edition}негативного{}',
                    '{C:uncommon}необычного{} или {C:rare}редкого{} джокера',
                    'а затем {C:attention}самоуничтожается{}'
                },
                unlock = {
                    'Выиграйте партию с',
                    'не менее чем 2 {C:dark_edition}негативными{} джокерами'
                }
            },
            j_losted_cosmos = {
                name = 'Космос',
                text = {
                    'Карты {C:planet}планет{} в вашей',
                    'зоне {C:attention}расходуемых{}',
                    'дают {X:mult,C:white}X#1#{} множ.',
                },
                unlock={
                    'Купить в общей сложности',
                    '{C:attention}#1#{C:planet} карт планет{}',
                    'в лавке',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_error = {
                name = 'Ошибка',
                text = {
                    'Если в {C:attention}первой руке{} раунда',
                    'не более {C:attention}3{} карт,',
                    'случайным образом изменяет {C:attention}масть{}, {C:attention}достоинство{}',
                    'и {C:dark_edition}улучшения{}',
                    '{C:attention}сыгранных карт{}',
                },
                unlock={
                    'Победить Босс-блайнд',
                    'с: {E:1,C:attention}#1#',
                },
            },
            j_losted_miner = {
                name = 'Джокер-шахтер',
                text = {
                    'Шанс {C:green}#1# из #2#{} создать',
                    "{C:spectral}спектральную карту 'Жадность'{}",
                    'при подсчете руки',
                    '{C:inactive}(должно быть место){}'
                }
            },
            j_losted_toaster = {
                name = 'Тостер',
                text = {
                    'После подсчета {C:attention}пары{},',
                    'делает карты {C:attention}поджаренными{}',
                    'и возвращает их в колоду'
                }
            },
            j_losted_baker = {
                name = 'Джокер-пекарь',
                text = {
                    'Добавляет одну {C:attention}карту-тост{}',
                    'в колоду при',
                    'выборе {C:attention}блайнда{}',
                }
            },
            j_losted_spirit_box = {
                name = 'Духовная шкатулка',
                text = {
                    'Получает {X:mult,C:white}X#1#{} множ.',
                    'за каждую использованную {C:purple}спектральную{} карту',
                    '{C:inactive}(сейчас {X:mult,C:white}X#2#{}{C:inactive} множ.)',
                }
            },
            j_losted_precious = {
                name = 'Драгоценный джокер',
                text = {
                    'Этот джокер получает {C:mult}+#1#{} множ.',
                    'каждый раз, когда {C:attention}алмазная карта{}',
                    'пересчитывается',
                    '{C:inactive}(сейчас {C:mult}+#2#{}{C:inactive} множ.)',
                }
            },
            j_losted_laser_microjet = {
                name = 'Лазерный микроджет',
                text = {
                    'Имеет шанс {C:green}#1# из #2#{}',
                    'пересчитать уже пересчитанные',
                    '{C:attention}алмазные карты{}',
                },
                unlock = {
                    'Сыграйте руку, содержащую',
                    '5 {C:attention,E:1}алмазных карт{}',
                }
            },
            j_losted_step_by_step = {
                name = 'Шаг за шагом',
                text = {
                    'Этот джокер получает {C:mult}+#1#{} множ.,',
                    'если сыгранная рука содержит',
                    '{C:attention}#2#',
                    '{C:inactive}(сейчас {C:mult}+#3#{C:inactive} множ.)',
                }
            },
            j_losted_jimboy = {
                name = 'Джимбой',
                text = {
                    'При {C:attention}сбросе{} переключается между',
                    'двумя разными играми:',
                    'Сейчас: {V:1}#3# (+#5# #4#){}',
                }
            },
            j_losted_red_joker = {
                name='Красный джокер',
                text={
                    '{C:mult}+#1#{} множ. за каждые #2# карт,',
                    'оставшиеся в {C:attention}колоде',
                    '{C:inactive}(сейчас {C:mult}+#3#{C:inactive} множ.)',
                },
            },
            j_losted_bank = {
                name='Банк',
                text={
                    'Этот джокер получает {X:mult,C:white} X#1# {} множ.',
                    'за каждые {C:money}$#2#{} у вас',
                    '{C:inactive}(сейчас {X:mult,C:white}X#3#{C:inactive} множ.)',
                },
            },
            j_losted_big_bang = {
                name='Большой взрыв',
                text={
                    'Создает карту {C:planet}планеты{}',
                    'при выборе {C:attention}блайнда{}',
                    '{C:inactive}(должно быть место)',
                },
            },
            j_losted_artist={
                name='Джокер-художник',
                text={
                    'Если сыгранная рука содержит {C:attention}флеш{},',
                    'каждая карта имеет шанс {C:green}#1# из #2#{}',
                    'стать {C:attention}дикой картой масти{}',
                },
                unlock = {
                    'Сыграйте руку, содержащую',
                    '5 {C:attention,E:1}диких карт масти{}',
                }
            },
            j_losted_shiny_gloves = {
                name = 'Блестящие перчатки',
                text = {
                    'Этот джокер получает {C:mult}+#1#{} множ.,',
                    'если сыгранная рука содержит',
                    '{C:attention}#2#',
                    '{C:inactive}(сейчас {C:mult}+#3#{C:inactive} множ.)',
                }
            },
            j_losted_fair_price = {
                name = 'Справедливая цена',
                text = {
                    '{X:mult,C:white} X#1# {} множ.,',
                    'заплатите {C:money}$#2#{} в',
                    'конце раунда',
                    '{C:inactive}Уничтожается, если не можете заплатить{}',
                }
            },
            j_losted_paid_vacation = {
                name = 'Оплачиваемый отпуск',
                text = {
                    'Получите {C:money}$#1#{}, если',
                    'блайнд побежден',
                    'с использованием {C:attention}всех рук{}'
                }
            },
            j_losted_joke_book = {
                name = 'Книга анекдотов',
                text = {
                    'Получает {X:mult,C:white}X#1#{} множ., если',
                    'сыгранная рука — {C:attention}#3#{},',
                    'Сбрасывается, если вы играете другую {C:attention}покерную руку{}.',
                    '{C:attention}Покерная рука{} меняется в каждой партии',
                    '{C:inactive}(сейчас {X:mult,C:white}X#2#{C:inactive} множ.)',
                }
            },
            j_losted_vandalism = {
                name = 'Вандализм',
                text = {
                    'Уменьшает очки всех',
                    '{C:attention}блайндов{} на {C:attention}#1#%{}',
                    'при выборе'
                }
            },
            j_losted_artwork = {
                name = 'Произведение искусства',
                text = {
                    'Получает {C:money}$#1#{} в',
                    '{C:attention}стоимости продажи{} в',
                    'конце раунда',
                    'Шанс {C:green}#2# из #3#{} быть',
                    'уничтоженным в конце раунда',
                }
            },
            j_losted_silly_hat = {
                name = 'Глупая шляпа',
                text = {
                    'Этот джокер получает {C:mult}+#1#{} множ.,',
                    'если сыгранная рука содержит',
                    '{C:attention}#2#',
                    '{C:inactive}(сейчас {C:mult}+#3#{C:inactive} множ.)',
                }
            },
            j_losted_surprise_box = {
                name = 'Коробка-сюрприз',
                text = {
                    '' -- should be empty
                }
            },
            j_losted_critic_failure = {
                name = 'Критическая неудача',
                text = {
                    '{C:attention}Делит{} все',
                    '{C:green,E:1,S:1.1}вероятности{} на {C:green,E:1,S:1.1}4{}',
                    '{C:inactive}(напр.: {C:green}1 из 3{C:inactive} -> {C:green}0.25 из 3{C:inactive})',
                },
                unlock={
                    'В одной руке',
                    'заработать не менее',
                    '{E:1,C:attention}#1#{} фишек',
                },
            },
            j_losted_limited_edition = {
                name = 'Ограниченный выпуск',
                text = {
                    'Получает {X:mult,C:white}X#1#{} множ. за каждый',
                    '{C:money}$1{} стоимости продажи',
                    'при продаже других джокеров.',
                    '{C:inactive}(сейчас {X:mult,C:white}X#2#{C:inactive} множ.)',
                },
                unlock={
                    'Продать в общей сложности',
                    '{C:attention,E:1}#1#{} карт джокера',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_contract = {
                name = 'Контракт',
                text = {
                    'Повышает уровень {C:attention}#1#{}',
                    'на 2 в конце раунда',
                    'Другие {C:attention}покерные руки{} ослабляются',
                    'Нельзя продать до истечения срока',
                    'Истекает через {C:attention}#2#{} раунда(ов)'
                },
            },
            j_losted_hoarding_joker = {
                name = 'Джокер-накопитель',
                text = {
                    '{C:dark_edition}+#1#{} слот(ов) расходуемого',
                }
            },
            j_losted_glutton = {
                name = 'Джокер-накопитель',
                text = {
                    '{C:dark_edition}+#1#{} слот(ов) расходуемого',
                }
            },
            j_losted_big_joker = {
                name = 'Большой джокер',
                text = {
                    'Этот джокер получает',
                    '{C:mult}+#2#{} множ., когда каждая',
                    'сыгранная {C:attention}10{} приносит очки',
                    '{C:inactive}(сейчас {C:mult}+#1#{C:inactive} множ.)',
                }
            },
            j_losted_doodle = {
                name = 'Каракули',
                text = {
                    'Копирует способность',
                    '{C:attention}джокера{} слева',
                    'Шанс {C:green}#1# из #2#{} быть',
                    'уничтоженным в конце раунда',
                }
            },
            j_losted_booster = {
                name = 'Бустер',
                text = {
                    'Получает {C:chips}+#2#{} фишек при открытии',
                    'любого {C:attention}бустерного набора{}',
                    '{C:inactive}(сейчас {C:chips}+#1#{}{C:inactive} фишек)',
                }
            },
            j_losted_turntable = {
                name = 'Проигрыватель',
                text = {
                    'Сыгранные карты, имеющие',
                    'то же {C:attention}достоинство и масть{}, что и',
                    'уже подсчитанная карта в этом раунде,',
                    'дают {C:mult}+#1#{} множ.'
                },
                unlock = {
                    'Сыграйте',
                    '{E:1,C:attention}флеш-пять'
                }
            },
            j_losted_replay = {
                name = 'Повтор',
                text = {
                    'Повторно активирует {C:attention}последнюю{} сыгранную',
                    'карту, использованную при подсчете очков,',
                    'дополнительно {C:attention}#1#{} раз(а)',
                }
            },
            j_losted_clown_car = {
                name = 'Машина клоунов',
                text = {
                    'При выборе {C:attention}блайнда{},',
                    'создает {C:uncommon}#1# необычного джокера{}.',
                    'Создает до {C:attention}#2#{} джокеров.',
                    '{C:inactive}({C:attention}#3#{}{C:inactive}/#2#){}',
                    '{C:inactive}(должно быть место)',
                },
                unlock = {
                    'Завершите испытание',
                    '{E:1,C:attention}Только джокеры'
                }
            },
            j_losted_the_joker = {
                name = '«Джокер»',
                text = {
                    'Каждая сыгранная {C:attention}#2#{} дает',
                    '{X:mult,C:white}X#1#{} множ. при подсчете очков',
                    '{C:inactive}{s:0.7}Выбирает самое распространенное достоинство в колоде{}{}',
                },
                unlock = {
                    'Когда {E:1,C:dark_edition}???{} завершит',
                    'свою загадку, {C:dark_edition}он{} раскроет себя',
                }
            },
            j_losted_obsidian = {
                name = 'Обсидиан',
                text = {
                    'Сыгранные карты с',
                    'мастью {V:1}#5#{} дают',
                    '{C:chips}+#1#{} фишек, {C:mult}+#2#{} множ., {X:mult,C:white}X#3#{} множ.',
                    'и {C:gold}$#4#{} при подсчете очков',
                    '{s:0.7}масть меняется в конце раунда{}'
                },
                unlock = {
                    'Обменяйте {C:dark_edition}четыре камня{},',
                    'чтобы пробудить его',
                }
            },
            j_losted_jimbo_hood = {
                name = 'Джимбо Гуд',
                text = {
                    'В конце подсчета очков,',
                    'балансирует {C:mult}множ.{} и {C:chips}фишки{}',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_roland = {
                name = 'Роланд',
                text = {
                    'При выборе {C:attention}блайнда{},',
                    'создает случайную {C:dark_edition}негативную{}',
                    '{C:spectral}спектральную{} карту',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_patati_patata = {
                name = '#1#',
                text = {
                    'Сыгранные карты с достоинством {C:attention}#2#{} дают',
                    '{B:1,C:white}X#3#{} #4# при подсчете очков',
                    '{C:inactive}#5#',
                    '{C:faded}Меняется на {V:2}#6#{} при розыгрыше руки{}'
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_invisible = {
                name = 'Привет, мир!',
                text = {
                    '{C:purple,E:1,S:1.1}Я — секрет <3{}'
                }
            },
        },
        Spectral={
            c_losted_mystery_soul = {
                name = 'Душа?',
                text = {
                    'Создает {C:dark_edition}«Джокера»{}',
                    '{C:inactive}Что это?{}'
                }
            },
            c_losted_greed = {
                name = 'Жадность',
                text = {
                    'Улучшает {C:attention}2{}',
                    'выбранные карты до',
                    '{C:attention}алмазных карт{}',
                }
            },
            c_losted_aura = {
                name='Аура',
                text={
                    'Добавляет эффект {C:dark_edition}фольгового{}, {C:dark_edition}голографического{},',
                    '{C:dark_edition}полихромного{} или {C:dark_edition}квантового{}',
                    'к {C:attention}1{} выбранной карте в руке',
                },
            },
            c_losted_aura_bunco = {
                name='Aura',
                text={
                    'Add {C:dark_edition}Foil{}, {C:dark_edition}Holographic{},',
                    '{C:dark_edition}Polychrome{}, {C:dark_edition}Quantum{} or {C:dark_edition}Glitter{} effect',
                    'to {C:attention}1{} selected card in hand',
                },
            },
            c_ectoplasm={
                name='Эктоплазма',
                text={
                    'Добавляет {C:dark_edition}негатив{} к',
                    'случайному {C:attention}джокеру,',
                    '{C:red}-#1#{} размер руки',
                },
            },
        },
        Stake = {
            stake_losted_diamond = {
                name = 'Алмазная ставка',
                text = {
                    'Увеличивает {C:attention}финальное анте{} до {C:attention}10{}',
                    '{s:0.8}Применяет все предыдущие ставки',
                }
            },
        },
        Tag = {
            tag_losted_quantum = {
                name='Квантовый тег',
                text={
                    'Следующий джокер базового',
                    'выпуска из лавки бесплатен и',
                    'становится {C:dark_edition}квантовым{}',
                },
            },
            tag_losted_plasma = {
                name='Тег плазмы',
                text={
                    'Следующий джокер базового',
                    'выпуска из лавки бесплатен и',
                    'становится {C:dark_edition}плазменным{}',
                },
            },
        },
        Tarot = {
            c_losted_abyss={
                name = 'Бездна',
                text = {
                    'Уменьшает достоинство {C:attention}#1#{} выбранной',
                    'карты на {C:attention}1{}',
                }
            },
            c_losted_lily = {
                name = 'Лилия',
                text = {
                    'Улучшает {C:attention}1{} выбранную',
                    'карту до',
                    '{C:attention}звездной карты{}',
                }
            },
            c_losted_provider = {
                name = 'Поставщик',
                text = {
                    'Улучшает {C:attention}#1#{} выбранную',
                    'карту до',
                    '{C:attention}карты-тоста{}',
                }
            },
            c_losted_wheel_of_fortune = {
                name='Колесо фортуны',
                text={
                    'Шанс {C:green}#1# из #2#{} добавить',
                    'издание {C:dark_edition}фольговое{}, {C:dark_edition}голографическое{},',
                    '{C:dark_edition}полихромное{}, {C:dark_edition}плазменное{} или {C:dark_edition}квантовое{}',
                    'случайному {C:attention}джокеру',
                },
            },
        },
        Voucher = {
            v_losted_negative_bias = {
                name = 'Негативный уклон',
                text = {
                    '{C:dark_edition}Негативные{} карты появляются',
                    'в лавке в {C:attention}#1# раз(а){} чаще',
                },
            },
            v_losted_negative_magnet = {
                name = 'Негативный магнит',
                text = {
                    '{C:dark_edition}Негативные{} карты появляются',
                    'в лавке в {C:attention}#1# раз(а){} чаще',
                },
                unlock={
                    'Иметь не менее {C:attention}#1#',
                    'карт {C:attention}джокера{} с',
                    '{C:dark_edition}негативным{} изданием',
                },
            },
            v_losted_stapler = {
                name = 'Степлер',
                text = {
                    'Джокеры появляются',
                    'в лавке в {C:attention}2 раза{} чаще',
                },
            },
            v_losted_staple_gun = {
                name = 'Строительный степлер',
                text = {
                    'Уменьшает частоту появления',
                    '{C:common}обычных{} джокеров',
                },
                unlock={
                    'Купить в общей сложности',
                    '{E:1,C:attention}#1# {C:blue}джокеров{}',
                    'в лавке',
                    '{C:inactive}(#2#)',
                },
            },
            v_losted_extra_bag = {
                name = 'Дополнительная сумка',
                text = {
                    '{C:attention}+1 бустерный набор{}',
                    'доступен в каждой {C:attention}лавке{}'
                },
            },
            v_losted_booster_bag = {
                name = 'Сумка для бустеров',
                text = {
                    '{C:attention}+2 дополнительные карты{} для',
                    'выбора в бустерных наборах',
                },
                unlock = {
                    'Открыть {E:1,C:attention}#1#',
                    'бустерных наборов',
                    '{C:inactive}(#2#)'
                }
            },
            v_hone={
                name='Заточка',
                text={
                    '{C:dark_edition}Фольговые{}, {C:dark_edition}голографические{},',
                    '{C:dark_edition}полихромные{}, {C:dark_edition}квантовые{} и {C:dark_edition}плазменные{}',
                    'карты появляются в {C:attention}#1# раз(а){} чаще',
                },
            },
            v_glow_up={
                name='Сияние',
                text={
                    '{C:dark_edition}Фольговые{}, {C:dark_edition}голографические{},',
                    '{C:dark_edition}полихромные{}, {C:dark_edition}квантовые{} и {C:dark_edition}плазменные{}',
                    'карты появляются в {C:attention}#1# раз(а){} чаще',
                },
                unlock={
                    'Иметь не менее {C:attention}#1#',
                    'карт {C:attention}джокера{} с',
                    '{C:dark_edition}фольговым{}, {C:dark_edition}голографическим{} или',
                    '{C:dark_edition}полихромным{} изданием',
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_losted_magic_trick = 'Фокус',
            c_losted_medieval_era = 'Средневековье',
            c_losted_wall = 'Стена',
            c_losted_breakfast = 'Завтрак',
            c_losted_new_times = 'Новые времена',
            c_losted_only_jokers = 'Только джокеры',
            c_losted_autopilot = 'Автопилот',
            c_losted_mvp = 'M.V.P',
            c_losted_running_on_fumes = 'На исходе',
            c_losted_marathon = 'Марафон',
        },
        dictionary = {
            k_negative_ex = 'Негатив!',
            k_blind_selected_ex = 'Бонус блайнда!',
            k_ante_increased_ex = 'Анте увеличено!',
            k_ante_decreased_ex = 'Анте уменьшено!',
            k_schrodinger_ex = 'Мертв',
            k_suit_changed_ex = 'Масть изменена!',
            k_obsidian_awakened_ex = 'ОБСИДИАН ПРОБУЖДЕН',
            toast_eaten = 'Съедено',
            k_mod_c = 'ИГРА 1',
            k_mod_m = 'ИГРА 2',
            k_chips = 'Фишки',
            k_losted_enhancements_removed = 'Улучшения удалены!',
            k_vandalism_ex = 'Вандализм!',
            k_plus_toast = '+1 тост',
            k_even = 'четное',
            k_odd = 'нечетное',
            k_nothing_ex = 'Ничего для Беты',
            k_losted_music_label = 'Саундтрек',
            k_losted_music_ost1 = 'Lost Edition OST от Gulira',
            k_losted_music_ost2 = 'Balatro OST от LouisF',





        },
        v_dictionary = {
            a_xchips = 'X#1# фишек',
            a_powmult = '^#1# множ.',
        },
        v_text = {
            ch_c_boss_rush = { 'Все блайнды — {C:attention}Босс-блайнды{}' },
            ch_c_no_tags = { 'Пропуск блайндов {C:attention}отключен{}' },
            ch_c_new_times = { 'Джокеры не из {C:purple}Lost Edition{} запрещены' },
            ch_c_only_jokers = { 'Джокеров можно найти только в {C:attention}лавке{} и {C:attention}наборах{}' },
            ch_c_force_selection = { 'Принудительно всегда выбирается 1 карта' },
            ch_c_marathon = { 'Финальное анте перенаправляется на анте {C:attention}16{}' }
        },
        labels = {
            losted_quantum = 'Квантовый',
            losted_plasma = 'Плазма',
            losted_evolutionary = 'Эволюционный',
            losted_chaotic = 'Хаотичный',
            losted_medieval = 'Средневековый',
        },
        tutorial = {
            losted_intro_1 = {
                'Добро пожаловать в {C:purple}Lost Edition{}!'
            },
            losted_intro_2 = {
                'Знаете ли вы, что немногие добираются сюда?',
            },
            losted_intro_3 = {
                'Не торопитесь, исследуйте в своем темпе.',
            },
            losted_intro_4 = {
                'Возможно, вы найдете здесь что-то {C:attention}действительно интересное{}...',
            }
        }
    },
}
