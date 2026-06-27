return {
    descriptions={
        Back = {
            b_losted_evolutionary = {
                name = 'Evolutionsdeck',
                text = {
                    'Für jede {C:attention}gerade Ante{} größer als 3,',
                    'erhalte {C:attention}+1{} Handgröße',
                },
                unlock={
                    'Erhöhe die Handgröße',
                    'auf {C:attention}#1#{} Karten',
                },
            },
            b_losted_fortune = {
                name = 'Glücksdeck',
                text = {
                    'Verdoppelt {C:attention}alle aufgelisteten',
                    '{C:green,E:1,S:1.1}Wahrscheinlichkeiten',
                    '{C:inactive}(Bsp.: {C:green}1 zu 3{C:inactive} -> {C:green}2 zu 3{C:inactive})',
                },
                unlock = {
                    'Gewinne einen Durchlauf mit',
                    '{C:attention}#1#{}',
                    'auf beliebiger Schwierigkeitsstufe',
                }
            },
            b_losted_chaotic = {
                name = 'Chaotisches Deck',
                text = {
                    'Alle Karten sind zufällig,',
                    'limitiert auf {C:attention}6 Ränge{} und {C:attention}2 Farben{}',
                    'Beginne den Durchlauf mit {C:attention,T:v_overstock_norm}#1#{}',
                    '{C:red}X#2#{} Basis-Blind-Größe',
                },
                unlock = {
                    'Gewinne einen Durchlauf mit',
                    '{C:attention}#1#{}',
                    'auf beliebiger Schwierigkeitsstufe',
                }
            },
            b_losted_medieval = {
                name = 'Mittelalter-Deck',
                text = {
                    '{C:attention}+#1#{} Joker-Slot',
                    'Ab Ante 2 sind',
                    '{C:attention}alle{} Blinds {C:attention}Boss Blinds{}',
                },
                unlock = {
                    'Schließe die Herausforderung',
                    '{E:1,C:attention}Mittelalter-Ära{} ab'
                }
            },
        },
        Blind = {
            bl_losted_all_ones = {
                name='Upps! Alles 1en',
                text={
                    'Halbiert {C:attention}alle aufgelisteten',
                    '{C:green,E:1,S:1.1}Wahrscheinlichkeiten',
                    '{C:inactive}(Bsp.: {C:green}1 zu 2{C:inactive} -> {C:green}0.5 zu 2{C:inactive})',
                },
            },
            bl_losted_privilege = {
                name = 'Privileg',
                text = {
                    '#1# von 8 Karten',
                    'werden geschwächt',
                }
            },
            bl_losted_vampiric = {
                name = 'Vampirisch',
                text = {
                    'Entfernt {C:attention}Verstärkungen{}',
                    'von allen {C:attention}gewerteten Karten{}',
                    '{C:inactive}(Wird nach Sieg wiederhergestellt)'
                }
            },
            bl_losted_inversion = {
                name = 'Umkehrung',
                text = {
                    'Tauscht die Anzahl von {C:attention}Händen',
                    'und {C:attention}Abwürfen',
                }
            },
            bl_losted_amnesia = {
                name = 'Die Amnesie',
                text = {
                    'Setzt #1# vorübergehend',
                    'auf Level 1 zurück',
                }
            },
            bl_losted_labyrinth = {
                name = 'Das Labyrinth',
                text = {
                    'Zufällige {C:attention}Pokerhand{}',
                    'wird geschwächt.',
                    'Wechselt bei jedem Spiel',
                },
            },
            bl_losted_watchdog = {
                name = 'Der Wachhund',
                text = {
                    'Überspringt den nächsten Shop',
                }
            },
            bl_losted_balance = {
                name = 'Die Waage',
                text = {
                    'Karten mit {C:attention}geradem{} Rang',
                    'werden geschwächt'
                }
            },
            bl_losted_solitude = {
                name = 'Einsamkeit',
                text = {
                    'Karten mit {C:attention}ungeradem{} Rang',
                    'werden geschwächt'
                }
            },
            bl_losted_annihilation = {
                name = 'Vernichtung',
                text = {
                    'Verliere ein zufälliges {C:attention}Tag{}',
                    'für jede gespielte Hand',
                }
            }
        },
        Edition = {
            e_losted_plasma = {
                name = 'Plasma',
                text = {
                    '{X:purple,C:white}^#1#{} Mult',
                },
            },
            e_losted_quantum = {
                name = 'Quantum',
                text = {
                    'Wiederholt {C:blue}alle Effekte{}',
                    'dieser Karte {C:blue}1{} weiteres Mal',
                },
            },
        },
        Enhanced = {
            m_losted_diamond = {
                name = 'Diamant-Karte',
                text = {
                    'Wird erneut gewertet, wenn {C:attention}neben{} einer',
                    'anderen wertenden {C:attention}Diamant-Karte{} gespielt',
                    '{X:chips,C:white}X#1#{} Chips und {X:mult,C:white}X#2#{} Mult,',
                    'solange diese Karte auf der Hand bleibt',
                },
            },
            m_losted_stellar = {
                name = 'Sternen-Karte',
                text = {
                    'Erhält {C:chips}+#1#{} permanente Chips,',
                    'wenn sie gewertet wird.',
                },
            },
            m_losted_toast = {
                name = 'Toast-Karte',
                text = {
                    '{X:mult,C:white}X#1#{} Mult,',
                    'wenn gewertet,',
                    'wird nach Gebrauch {C:attention}verbraucht{}',
                },
            },
            m_wild={
                name='Wildcard-Farbe',
                text={
                    'Kann als jede',
                    'Farbe verwendet werden.',
                    'Ist immun gegen',
                    'Farb-Schwächungen'
                },
            },
        },
        Other = {
            losted_platinum_sticker = {
                name = 'Platin-Sticker',
                text= {
                    'Diesen Joker benutzt,',
                    'um auf dem {C:attention}Platin-Einsatz{}',
                    'zu gewinnen'
                }
            },
            losted_diamond_sticker = {
                name = 'Diamant-Sticker',
                text= {
                    'Diesen Joker benutzt,',
                    'um auf dem {C:attention}Diamant-Einsatz{}',
                    'zu gewinnen'
                }
            },
            artist = {
                text = {
                    '{C:inactive}Künstler',
                },
            },
            artist_credit = {
                name = 'Künstler',
                text = {
                    '{E:1}#1#{}'
                },
            },
            perfect_three_of_a_kind = {
                name = '{C:attention}Perfekter Drilling{}',
                text = {
                    'Besteht aus {C:attention}genau{}',
                    '{C:attention}3{} Karten des {C:attention}gleichen Rangs{},'
                }
            },
            improvements_of_card = {
                name = '{C:dark_edition}Verbesserungen{}',
                text = {
                    'Sind spezielle Attribute,',
                    'die eine Karte modifizieren:',
                    '{C:dark_edition}Verstärkung{}, {C:dark_edition}Siegel{} und {C:dark_edition}Edition{}.',
                }
            }
        },
        Joker={
            j_losted_jimball={
                name = 'Jimbolino',
                text = {
                    'Wenn ein {C:attention}Blind{} ausgewählt wird,',
                    'erhält dauerhaft',
                    '{C:mult}+#1#{} Mult und {C:chips}+#2#{} Chips',
                    '{C:inactive}(Momentan {C:mult}+#3#{}{C:inactive} Mult, {C:chips}+#4#{}{C:inactive} Chips)'
                }
            },
            j_losted_stake_out={
                name = 'Auf der Lauer',
                text = {
                    '{X:mult,C:white}X#1#{} Mult,',
                    '{C:attention}verliere 1 Hand{}, wenn die gespielte Hand',
                    'den {C:attention}Boss Blind{} auslöst'
                }
            },
            j_losted_gothic={
                name = 'Gotischer Joker',
                text = {
                    'Gespielte Karten mit {C:attention}Wildcard-Farbe{}',
                    'geben {C:mult}+#1#{} Mult, wenn gewertet'
                }
            },
            j_losted_lost_sock={
                name = 'Verlorene Socke',
                text = {
                    'Dieser Joker erhält {C:mult}+#1#{} Mult,',
                    'wenn die gespielte Hand',
                    '{C:attention}#2#{} oder weniger Karten enthält',
                    '{C:inactive}(Momentan {C:mult}+#3#{C:inactive} Mult)',
                }
            },
            j_losted_perfect_split={
                name = 'Perfekte Teilung',
                text = {
                    'Jede {C:attention}gewertete{} Karte',
                    'hat eine {C:green}#1# zu #2#{} Chance,',
                    'dauerhaft {C:mult}+#3#{} Mult zu erhalten',
                }
            },
            j_losted_sticky={
                name = 'Klebriger Joker',
                text = {
                    'Nach {C:attention}#1#{} Runden,',
                    'verkaufe diese Karte, um einen',
                    'zufälligen Joker {C:dark_edition}Negativ{} zu machen',
                    '{C:inactive}(Momentan {C:attention}#2#{C:inactive}/#1#)',
                },
                unlock={
                    'Gewinne einen Durchlauf mit',
                    '{E:1,C:attention}8 oder mehr Jokern{}',
                },
            },
            j_losted_vip_pass={
                name = 'V.I.P.-Pass',
                text = {
                    'Erzeugt einen kostenlosen zusätzlichen {C:attention}Gutschein{} im Shop,',
                    'nachdem ein {C:attention}Boss Blind{} besiegt wurde'
                }
            },
            j_losted_welder={
                name = 'Schweißer',
                text = {
                    '{C:attention}Stahl-Karten{} geben',
                    '{X:mult,C:white}X#1#{} Mult anstelle',
                    'von {X:mult,C:white}X1.5{} Mult'
                },
                unlock={
                    'Habe mindestens {C:attention}#1#',
                    '{E:1,C:attention}#2#{} in',
                    'deinem Deck',
                },
            },
            j_losted_triquetra = {
                name = 'Triquetra',
                text = {
                    'Karten, die Teil eines',
                    '{C:attention}Perfekten Drillings{} sind, werden',
                    '#1# zusätzliche Male {C:attention}erneut ausgelöst{}',
                }
            },
            j_losted_the_passage = {
                name = 'Die Passage',
                text = {
                    'Wenn {C:attention}verkauft{},',
                    'wird die Ante um {C:attention}1{} geändert.',
                    '{C:green}50%{} Chance auf {C:blue}Erhöhung{}',
                    '{C:green}50%{} Chance auf {C:red}Verringerung{}'
                },
                unlock = {
                    'Benutze die Gutscheine',
                    '{C:attention}#1#{} und {C:attention}#2#{}',
                    'in einem einzigen Durchlauf'
                }
            },
            j_losted_slot_machine = {
                name = 'Spielautomat',
                text = {
                    'Jede gewertete {C:attention}7{} hat eine',
                    '{C:green}#1# zu 2{} Chance auf {C:mult}+#2#{} Mult,',
                    '{C:green}#1# zu 4{} Chance auf {C:gold}$#3#{},',
                    '{C:green}#1# zu 8{} Chance auf {X:mult,C:white}X#4#{} Mult',
                    '{C:green}#1# zu #5#{} Chance, alles {C:money}${} zu verlieren',
                },
                unlock = {
                    'Spiele einen Drilling, der',
                    '3 {C:attention,E:1}Glückskarten{} vom',
                    'Rang {C:attention,E:1}7{} enthält',
                },
            },
            j_losted_strawberry_milkshake = {
                name = 'Erdbeer-Milchshake',
                text = {
                    '{X:chips,C:white}X#1#{} Chips,',
                    'verliert {X:chips,C:white}X#2#{} Chips',
                    'pro gespielter Runde.',
                    '{C:dark_edition}Mmh, so cremig!{}'
                }
            },
            j_losted_schrodinger = {
                name = 'Schrödingers Katze',
                text = {
                    '{C:green}#1# zu #2#{} Chance,',
                    '{C:chips}+#3#{} Chips zu geben',
                }
            },
            j_losted_mitosis = {
                name = 'Mitose',
                text = {
                    'Wenn die {C:attention}erste Hand{} der Runde nur aus',
                    'Karten des {C:attention}gleichen Rangs{} besteht,',
                    'kopieren alle gewerteten Karten die',
                    '{C:dark_edition}Verbesserungen{} der Karte ganz rechts.',
                },
            },
            j_losted_last_resort = {
                name = 'Letzter Ausweg',
                text = {
                    'Wenn der {C:attention}erste Abwurf{} der Runde',
                    'genau {C:attention}2 {}Karten hat, schieße',
                    'auf sie und zerstöre sie'
                }
            },
            j_losted_magician = {
                name = 'Magier-Joker',
                text = {
                    'Bei Verwendung einer {C:purple}Tarot{}-Karte',
                    'besteht eine {C:green}#1# zu #2#{} Chance,',
                    'eine {C:spectral}Geister{}-Karte zu erzeugen',
                    '{C:inactive}(Muss Platz haben){}'
                },

            },
            j_losted_disruption = {
                name = 'Störung',
                text = {
                    '{X:mult,C:white}X1{} Mult,',
                    'erhält {X:mult,C:white}X#1#{} Mult für jedes Mal,',
                    'dass die {C:attention}Pokerhand{} in',
                    'diesem Durchlauf gespielt wurde',
                }
            },
            j_losted_passion_fruit = {
                name = 'Passionsfrucht',
                text = {
                    'Erhält {C:chips}+#2#{} Chips',
                    'pro gespielter Hand',
                    '{C:green}#3# zu #4#{} Chance, am Ende',
                    'der Runde zerstört zu werden',
                    '{C:inactive}(Momentan {C:chips}+#1#{}{C:inactive} Chips)'
                }
            },
            j_losted_passion_juice = {
                name = 'Passionsfruchtsaft',
                text = {
                    'Erhält {X:chips,C:white}X#2#{} Chips',
                    'pro gespielter Hand',
                    '{C:green}#3# zu #4#{} Chance, am Ende',
                    'der Runde zerstört zu werden',
                    '{C:inactive}(Momentan {X:chips,C:white}X#1#{}{C:inactive} Chips)'
                }
            },
            j_losted_statue = {
                name = 'Steinstatue',
                text = {
                    'Gewertete {C:attention}Stein-Karten{}',
                    'geben {X:chips,C:white}X#1#{} Chips'
                },
                unlock = {
                    'Spiele eine Hand, die',
                    '5 {C:attention,E:1}Stein-Karten{} enthält',
                }
            },
            j_losted_rule_book = {
                name = 'Regelbuch',
                text = {
                    'Die {C:attention}letzte gewertete Karte{} der Hand',
                    'gibt {X:mult,C:white}X#1#{} Mult',
                }
            },
            j_losted_toc_toc = {
                name = 'Klopf Klopf',
                text = {
                    'Beim Spielen einer Hand, erhalte',
                    '{C:money}${} entsprechend der Anzahl der',
                    '{C:attention}verbleibenden Abwürfe{}',
                }
            },
            j_losted_advantage_addiction = {
                name = 'Vorteilssucht',
                text = {
                    'Löse Karten mit',
                    '{C:dark_edition}Verbesserungen{}',
                    '#1#{} weiteres Mal aus',
                },
                unlock={
                    'Habe mindestens {E:1,C:attention}#1#',
                    'Karten mit {C:dark_edition}Verbesserungen{}',
                    'in deinem Deck',
                },
            },
            j_losted_jersey_10 = {
                name = 'Trikot 10',
                text = {
                    'Wenn die gespielte Hand nur aus einer einzigen {C:attention}10{} besteht,',
                    'wende eine zufällige {C:dark_edition}Edition{} darauf an',
                }
            },
            j_losted_harlequin = {
                name = 'Harlekin',
                text = {
                    '{C:chips}+#1#{} Chips',
                }
            },
            j_losted_totem = {
                name = 'Totem',
                text = {
                    'Hat eine {C:green}#1# zu #2#{} Chance,',
                    'jeden {C:money}${} Gewinn zu {C:attention}verdoppeln{}',
                },
                unlock = {
                    'Schließe die Herausforderung',
                    '{E:1,C:attention}Auf dem Zahnfleisch{} ab'
                }
            },
            j_losted_duke = {
                name = 'Herzog',
                text = {
                    'Löst die {C:attention}erste{} gespielte',
                    'und gewertete Karte',
                    '{C:attention}1{} weiteres Mal',
                    'pro {C:attention}Bube{} auf der Hand aus'
                },
            },
            j_losted_mysterious = {
                name = '???',
                text = {
                    '{C:inactive}(#1#/#2#)',
                    '{C:inactive,s:0.7}Gespielte Handtypen'
                },
                unlock = {
                    'Schließe die',
                    '{E:1,C:attention}Marathon{}-Herausforderung ab'
                }
            },
            j_losted_rubiks_cube = {
                name = 'Zauberwürfel',
                text = {
                    'Jede gespielte {C:attention}6{} gibt {C:mult}+#2#{} Mult,',
                    'Jede gespielte {C:attention}9{} gibt {C:chips}+#1#{} Chips',
                }
            },
            j_losted_demonic_joker = {
                name = 'Dämonischer Joker',
                text = {
                    'Jede gespielte {C:attention}6{} gibt {C:gold}$#1#{} Gold',
                    'Wenn die gespielte Hand einen {C:attention}Drilling{} enthält,',
                    'wird das Gold pro Karte {C:attention}verdoppelt{}',
                    'Hat eine {C:green}#2# zu #3#{} Chance, nicht auszulösen',
                },
                unlock = {
                    'Spiele einen Drilling, der',
                    '3 {C:attention,E:1}Gold-Karten{}',
                    'vom Rang {C:attention,E:1}6{} enthält',
                },
            },
            j_losted_moist_cake = {
                name = 'Saftiger Kuchen',
                text = {
                    'Gespielte Karten mit',
                    'der Farbe {V:1}#2#{} geben',
                    '{C:mult}+#1#{} Mult, wenn gewertet',
                    '{s:0.8}Farbe ändert sich am Ende der Runde',
                }
            },
            j_losted_rocker={
                name = 'Rocker',
                text = {
                    'Gespielte {C:attention}Stein-Karten{}',
                    'geben {C:mult}+#1#{} Mult, wenn gewertet'
                }
            },
            j_losted_piggy_bank = {
                name = 'Sparschwein',
                text = {
                    'Erhält {C:chips}+#2#{} Chips für jeden',
                    '{C:money}$1{} Zinsen, der am',
                    'Ende der Runde erhalten wird.',
                    '{C:inactive}(Momentan {C:chips}+#1#{C:inactive} Chips)'
                }
            },
            j_losted_hematophilia = {
                name = 'Hämophilie',
                text = {
                    'Erhält dauerhaft {C:mult}+#2#{} Mult',
                    'für jede {C:attention}zerstörte{} Karte oder Joker',
                    '{C:inactive}(Momentan {C:mult}+#1#{}{C:inactive} Mult)'
                }
            },
            j_losted_chicken_cleide = {
                name = 'Huhn Cleide',
                text = {
                    'Wenn ein {C:attention}Boss Blind{} ausgewählt wird,',
                    'legt es ein {C:attention}Negatives{} {C:dark_edition}Ei{}. Max. {C:attention}#1#{} Eier',
                    '{C:inactive}(Momentan {C:attention}#2#{C:inactive}/#1#)',
                    '{C:inactive,s:0.9}(Wird nach dem Legen der Eier zerstört)'
                },
                unlock = {
                    'Schließe die Herausforderung',
                    '{E:1,C:attention}Das Omelett{} ab'
                }
            },
            j_losted_seal_stamp = {
                name = 'Siegelstempel',
                text = {
                    'Beim Besiegen eines {C:attention}Boss Blinds{},',
                    'erzeugt ein zufälliges {C:spectral}Siegel-Gespenst{}',
                    '{C:inactive}(Muss Platz haben){}'
                }
            },
            j_losted_pot_of_greed = {
                name = 'Topf der Gier',
                text = {
                    'Beim Spielen oder Abwerfen,',
                    'ziehe {C:attention}1{} zusätzliche Karte',
                },
                unlock={
                    'Erreiche',
                    'Ante-Level {E:1,C:attention}#1#',
                },
            },
            j_losted_sarcophagus = {
                name = 'Sarkophag',
                text = {
                    'Beim Besiegen eines {C:attention}Boss Blinds{},',
                    'erzeugt einen zufälligen {C:dark_edition}Negativen{}',
                    '{C:uncommon}ungewöhnlichen{} oder {C:rare}seltenen{} Joker',
                    'und {C:attention}zerstört{} sich dann selbst'
                },
                unlock = {
                    'Gewinne einen Durchlauf mit',
                    'mindestens 2 {C:dark_edition}negativen{} Jokern'
                }
            },
            j_losted_cosmos = {
                name = 'Kosmos',
                text = {
                    '{C:planet}Planeten{}-Karten in deinem',
                    '{C:attention}Verbrauchsgegenstand{}-Bereich',
                    'geben {X:mult,C:white}X#1#{} Mult',
                },
                unlock={
                    'Kaufe insgesamt',
                    '{C:attention}#1#{C:planet} Planeten{}-Karten',
                    'im Shop',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_error = {
                name = 'Fehler',
                text = {
                    'Wenn die {C:attention}erste Hand{} der Runde',
                    'höchstens {C:attention}3{} Karten hat,',
                    'werden {C:attention}Farbe{}, {C:attention}Rang{} und',
                    '{C:dark_edition}Verbesserungen{} der',
                    '{C:attention}gespielten Karten{} zufällig gewählt',
                },
                unlock={
                    'Schlage einen Boss Blind',
                    'mit einem {E:1,C:attention}#1#',
                },
            },
            j_losted_miner = {
                name = 'Minenarbeiter-Joker',
                text = {
                    '{C:green}#1# zu #2#{} Chance, eine',
                    '{C:spectral}Gier{}-Geisterkarte zu erzeugen,',
                    'wenn eine Hand gewertet wird',
                    '{C:inactive}(Muss Platz haben){}'
                }
            },
            j_losted_toaster = {
                name = 'Toaster',
                text = {
                    'Nach dem Werten eines {C:attention}Paares{},',
                    'macht die Karten {C:attention}getoastet{}',
                    'und legt sie ins Deck zurück'
                }
            },
            j_losted_baker = {
                name = 'Bäcker-Joker',
                text = {
                    'Fügt eine {C:attention}Toast{}-Karte',
                    'zu deinem Deck hinzu, wenn',
                    'der {C:attention}Blind{} ausgewählt wird',
                }
            },
            j_losted_spirit_box = {
                name = 'Geisterbox',
                text = {
                    'Erhält {X:mult,C:white}X#1#{} Mult',
                    'für jede benutzte {C:purple}Geister{}-Karte',
                    '{C:inactive}(Momentan {X:mult,C:white}X#2#{}{C:inactive} Mult)',
                }
            },
            j_losted_precious = {
                name = 'Wertvoller Joker',
                text = {
                    'Dieser Joker erhält {C:mult}+#1#{} Mult,',
                    'jedes Mal, wenn eine {C:attention}Diamant-Karte{}',
                    'erneut gewertet wird',
                    '{C:inactive}(Momentan {C:mult}+#2#{}{C:inactive} Mult)',
                }
            },
            j_losted_laser_microjet = {
                name = 'MicroJet Laser',
                text = {
                    'Hat eine {C:green}#1# zu #2#{} Chance,',
                    'bereits erneut gewertete {C:attention}Diamant-Karten{}',
                    'nochmals zu werten',
                },
                unlock = {
                    'Spiele eine Hand, die',
                    '5 {C:attention,E:1}Diamant-Karten{} enthält',
                }
            },
            j_losted_step_by_step = {
                name = 'Schritt für Schritt',
                text = {
                    'Dieser Joker erhält {C:mult}+#1#{} Mult,',
                    'wenn die gespielte Hand',
                    'einen {C:attention}#2#{} enthält',
                    '{C:inactive}(Momentan {C:mult}+#3#{C:inactive} Mult)',
                }
            },
            j_losted_jimboy = {
                name = 'Jimboy',
                text = {
                    'Beim {C:attention}Abwerfen{}, wechselt zwischen',
                    'zwei verschiedenen Spielen:',
                    'Momentan: {V:1}#3# (+#5# #4#){}',
                }
            },
            j_losted_red_joker = {
                name='Roter Joker',
                text={
                    '{C:mult}+#1#{} Mult für jede #2# Karten,',
                    'die im {C:attention}Deck{} verbleiben',
                    '{C:inactive}(Momentan {C:mult}+#3#{C:inactive} Mult)',
                },
            },
            j_losted_bank = {
                name='Bank',
                text={
                    'Dieser Joker erhält {X:mult,C:white} X#1# {} Mult',
                    'für jede {C:money}$#2#{}, die du besitzt',
                    '{C:inactive}(Momentan {X:mult,C:white}X#3#{C:inactive} Mult)',
                },
            },
            j_losted_big_bang = {
                name='Urknall',
                text={
                    'Erzeuge eine {C:planet}Planeten{}-Karte,',
                    'wenn der {C:attention}Blind{} ausgewählt wird',
                    '{C:inactive}(Muss Platz haben)',
                },
            },
            j_losted_artist={
                name='Künstler-Joker',
                text={
                    'Wenn die gespielte Hand einen {C:attention}Flush{} enthält,',
                    'hat jede Karte eine {C:green}#1# zu #2#{} Chance,',
                    'eine {C:attention}Wildcard-Farbe{} zu werden',
                },
                unlock = {
                    'Spiele eine Hand, die',
                    '5 {C:attention,E:1}Wildcard-Farben{} enthält',
                }
            },
            j_losted_shiny_gloves = {
                name = 'Glänzende Handschuhe',
                text = {
                    'Dieser Joker erhält {C:mult}+#1#{} Mult,',
                    'wenn die gespielte Hand',
                    'einen {C:attention}#2#{} enthält',
                    '{C:inactive}(Momentan {C:mult}+#3#{C:inactive} Mult)',
                }
            },
            j_losted_fair_price = {
                name = 'Fairer Preis',
                text = {
                    '{X:mult,C:white} X#1# {} Mult,',
                    'zahle {C:money}$#2#{} am',
                    'Ende der Runde',
                    '{C:inactive}Wird zerstört, wenn du nicht zahlen kannst{}',
                }
            },
            j_losted_paid_vacation = {
                name = 'Bezahlter Urlaub',
                text = {
                    'Verdiene {C:money}$#1#{}, wenn',
                    'der Blind mit',
                    '{C:attention}allen Händen{} besiegt wird'
                }
            },
            j_losted_joke_book = {
                name = 'Witzbuch',
                text = {
                    'Erhält {X:mult,C:white}X#1#{} Mult, wenn die',
                    'gespielte Hand {C:attention}#3#{} ist,',
                    'Wird zurückgesetzt, wenn du eine andere {C:attention}Pokerhand{} spielst.',
                    '{C:attention}Pokerhand{} ändert sich bei jedem Durchlauf',
                    '{C:inactive}(Momentan {X:mult,C:white}X#2#{C:inactive} Mult)',
                }
            },
            j_losted_vandalism = {
                name = 'Vandalismus',
                text = {
                    'Reduziert die Punktzahl aller',
                    '{C:attention}Blinds{} um {C:attention}#1#%{},',
                    'wenn ausgewählt'
                }
            },
            j_losted_artwork = {
                name = 'Kunstwerk',
                text = {
                    'Erhält {C:money}$#1#{} an',
                    '{C:attention}Verkaufswert{} am',
                    'Ende der Runde',
                    '{C:green}#2# zu #3#{} Chance, am Ende',
                    'der Runde zerstört zu werden',
                }
            },
            j_losted_silly_hat = {
                name = 'Alberner Hut',
                text = {
                    'Dieser Joker erhält {C:mult}+#1#{} Mult,',
                    'wenn die gespielte Hand',
                    'einen {C:attention}#2#{} enthält',
                    '{C:inactive}(Momentan {C:mult}+#3#{C:inactive} Mult)',
                }
            },
            j_losted_surprise_box = {
                name = 'Überraschungsbox',
                text = {
                    '' -- sollte leer sein
                }
            },
            j_losted_critic_failure = {
                name = 'Kritischer Fehler',
                text = {
                    '{C:attention}Teilt{} alle',
                    '{C:green,E:1,S:1.1}Wahrscheinlichkeiten{} durch {C:green,E:1,S:1.1}4{}',
                    '{C:inactive}(Bsp.: {C:green}1 zu 3{C:inactive} -> {C:green}0.25 zu 3{C:inactive})',
                },
                unlock={
                    'Verdiene in einer Hand',
                    'mindestens',
                    '{E:1,C:attention}#1#{} Chips',
                },
            },
            j_losted_limited_edition = {
                name = 'Limitierte Auflage',
                text = {
                    'Erhält {X:mult,C:white}X#1#{} Mult für jeden',
                    '{C:money}$1{} Verkaufswert',
                    'beim Verkauf anderer Joker.',
                    '{C:inactive}(Momentan {X:mult,C:white}X#2#{C:inactive} Mult)',
                },
                unlock={
                    'Verkaufe insgesamt',
                    '{C:attention,E:1}#1#{} Joker-Karten',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_contract = {
                name = 'Vertrag',
                text = {
                    'Verbessere das Level von {C:attention}#1#{}',
                    'um 2 am Ende der Runde',
                    'Andere {C:attention}Pokerhände{} werden geschwächt',
                    'Kann nicht verkauft werden, bis er abläuft',
                    'Läuft in {C:attention}#2#{} Runden ab'
                }
            },
            j_losted_hoarding_joker = {
                name = 'Sammler-Joker',
                text = {
                    '{C:dark_edition}+#1#{} Slot(s) für Verbrauchsgegenstände',
                }
            },
            j_losted_glutton = {
                name = 'Sammler-Joker',
                text = {
                    '{C:dark_edition}+#1#{} Slot(s) für Verbrauchsgegenstände',
                }
            },
            j_losted_big_joker = {
                name = 'Großer Joker',
                text = {
                    'Dieser Joker erhält',
                    '{C:mult}+#2#{} Mult, wenn jede',
                    'gespielte {C:attention}10{} gewertet wird',
                    '{C:inactive}(Momentan {C:mult}+#1#{C:inactive} Mult)',
                }
            },
            j_losted_doodle = {
                name = 'Gekritzel',
                text = {
                    'Kopiert die Fähigkeit',
                    'des {C:attention}Jokers{} links daneben',
                    '{C:green}#1# zu #2#{} Chance, am Ende',
                    'der Runde zerstört zu werden',
                }
            },
            j_losted_booster = {
                name = 'Booster',
                text = {
                    'Erhält {C:chips}+#2#{} Chips, wenn ein',
                    '{C:attention}Booster-Paket{} geöffnet wird',
                    '{C:inactive}(Momentan {C:chips}+#1#{}{C:inactive} Chips)',
                }
            },
            j_losted_turntable = {
                name = 'Plattenspieler',
                text = {
                    'Gespielte Karten, die den',
                    'gleichen {C:attention}Rang und Farbe{} wie eine',
                    'bereits in dieser Runde gewertete Karte haben,',
                    'geben {C:mult}+#1#{} Mult'
                },
                unlock = {
                    'Spiele einen',
                    '{E:1,C:attention}Flush Five'
                }
            },
            j_losted_replay = {
                name = 'Wiederholung',
                text = {
                    'Löst die {C:attention}letzte{} gespielte',
                    'und gewertete Karte',
                    '{C:attention}#1#{} weitere Male aus',
                }
            },
            j_losted_clown_car = {
                name = 'Clown-Auto',
                text = {
                    'Wenn ein {C:attention}Blind{} ausgewählt wird,',
                    'erzeugt {C:uncommon}#1# ungewöhnlichen Joker{}.',
                    'Erzeugt bis zu {C:attention}#2# Joker.',
                    '{C:inactive}({C:attention}#3#{}{C:inactive}/#2#){}',
                    '{C:inactive}(Muss Platz haben)',
                },
                unlock = {
                    'Schließe die Herausforderung',
                    '{E:1,C:attention}Nur Joker{} ab'
                }
            },
            j_losted_the_joker = {
                name = 'Der Joker',
                text = {
                    'Jede gespielte {C:attention}#2#{} gibt',
                    '{X:mult,C:white}X#1#{} Mult, wenn gewertet',
                    '{C:inactive}{s:0.7}Wählt den häufigsten Rang im Deck{}{}',
                },
                unlock = {
                    'Wenn der {E:1,C:dark_edition}???{} sein',
                    'Rätsel löst, wird {C:dark_edition}er{} sich offenbaren',
                }
            },
            j_losted_obsidian = {
                name = 'Obsidian',
                text = {
                    'Gespielte Karten mit',
                    'der Farbe {V:1}#5#{} geben',
                    '{C:chips}+#1#{} Chips, {C:mult}+#2#{} Mult, {X:mult,C:white}X#3#{} Mult',
                    'und {C:gold}$#4#{}, wenn gewertet',
                    '{s:0.7}Farbe ändert sich am Ende der Runde{}'
                },
                unlock = {
                    'Handle mit den {C:dark_edition}vier Steinen{},',
                    'um ihn zu erwecken',
                }
            },
            j_losted_jimbo_hood = {
                name = 'Jimbo Hood',
                text = {
                    'Am Ende der Wertung,',
                    'gleicht {C:mult}Mult{} und {C:chips}Chips{} aus',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_roland = {
                name = 'Roland',
                text = {
                    'Wenn ein {C:attention}Blind{} ausgewählt wird,',
                    'erzeugt eine zufällige {C:dark_edition}Negative{}',
                    '{C:spectral}Geister{}-Karte',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_patati_patata = {
                name = '#1#',
                text = {
                    'Gespielte Karten mit Rang {C:attention}#2#{} geben',
                    '{B:1,C:white}X#3#{} #4#, wenn gewertet', 
                    '{C:inactive}#5#', 
                    '{C:faded}Wechselt zu {V:2}#6#{} bei gespielter Hand{}' 
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_invisible = {
                name = 'Hallo, Welt!',
                text = {
                    '{C:purple,E:1,S:1.1}Ich bin ein Geheimnis <3{}'
                }
            },
        },
        Spectral={
            c_losted_mystery_soul = {
                name = 'Die Seele?',
                text = {
                    'Erzeugt {C:dark_edition}Den Joker{}',
                    '{C:inactive}Was ist das?{}'
                }
            },
            c_losted_greed = {
                name = 'Gier',
                text = {
                    'Verstärkt {C:attention}2{}',
                    'ausgewählte Karten in',
                    '{C:attention}Diamant-Karten{}',
                }
            },
            c_losted_aura = {
                name='Aura',
                text={
                    'Fügt {C:dark_edition}Foil-, {C:dark_edition}Holografischen-,',
                    '{C:dark_edition}Polychrom- oder {C:dark_edition}Quantum-Effekt',
                    'zu {C:attention}1{} ausgewählten Karte auf der Hand hinzu',
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
                name='Ektoplasma',
                text={
                    'Fügt {C:dark_edition}Negativ{} zu',
                    'einem zufälligen {C:attention}Joker hinzu,',
                    '{C:red}-#1#{} Handgröße',
                },
            },
        },
        Stake = {
            stake_losted_diamond = {
                name = 'Diamant-Einsatz',
                text = {
                    'Erhöht die {C:attention}finale Ante{} auf {C:attention}10{}',
                    '{s:0.8}Gilt für alle vorherigen Einsätze',
                }
            },
        },
        Tag = {
            tag_losted_quantum = {
                name='Quantum-Tag',
                text={
                    'Der nächste Basis-Joker im Shop',
                    'ist kostenlos und',
                    'wird zu {C:dark_edition}Quantum{}',
                },
            },
            tag_losted_plasma = {
                name='Plasma-Tag',
                text={
                    'Der nächste Basis-Joker im Shop',
                    'ist kostenlos und',
                    'wird zu {C:dark_edition}Plasma{}',
                },
            },
        },
        Tarot = {
            c_losted_abyss={
                name = 'Der Abgrund',
                text = {
                    'Verringert den Rang von {C:attention}#1#{} ausgewählter',
                    'Karte um {C:attention}1{}',
                }
            },
            c_losted_lily = {
                name = 'Lilie',
                text = {
                    'Verstärkt {C:attention}1{} ausgewählte',
                    'Karte in eine',
                    '{C:attention}Sternen-Karte{}',
                }
            },
            c_losted_provider = {
                name = 'Der Versorger',
                text = {
                    'Verstärkt {C:attention}#1#{} ausgewählte',
                    'Karte in eine',
                    '{C:attention}Toast-Karte{}',
                }
            },
            c_losted_wheel_of_fortune = {
                name='Das Rad des Schicksals',
                text={
                    '{C:green}#1# zu #2#{} Chance, die Edition',
                    '{C:dark_edition}Foil{}, {C:dark_edition}Holografisch{},',
                    '{C:dark_edition}Polychrom{}, {C:dark_edition}Plasma{} oder {C:dark_edition}Quantum{}',
                    'einem zufälligen {C:attention}Joker{} hinzuzufügen',
                },
            },
        },
        Voucher = {
            v_losted_negative_bias = {
                name = 'Negative Tendenz',
                text = {
                    '{C:dark_edition}Negative{} Karten erscheinen',
                    '{C:attention}#1#X{} häufiger',
                    'im Shop',
                },
            },
            v_losted_negative_magnet = {
                name = 'Negativer Magnet',
                text = {
                    '{C:dark_edition}Negative{} Karten erscheinen',
                    '{C:attention}#1#X{} häufiger',
                    'im Shop',
                },
                unlock={
                    'Habe mindestens {C:attention}#1#',
                    '{C:attention}Joker{}-Karten mit',
                    'der {C:dark_edition}Negativen{} Edition',
                },
            },
            v_losted_stapler = {
                name = 'Hefter',
                text = {
                    'Joker erscheinen',
                    '{C:attention}2X{} häufiger',
                    'im Shop',
                },
            },
            v_losted_staple_gun = {
                name = 'Tackerpistole',
                text = {
                    'Reduziert die Erscheinungsrate',
                    'von {C:common}gewöhnlichen{} Jokern',
                },
                unlock={
                    'Kaufe insgesamt',
                    '{E:1,C:attention}#1# {C:blue}Joker{}',
                    'im Shop',
                    '{C:inactive}(#2#)',
                },
            },
            v_losted_extra_bag = {
                name = 'Zusätzliche Gürteltasche',
                text = {
                    '{C:attention}+1 Booster-Paket{}',
                    'pro {C:attention}Shop{} verfügbar'
                },
            },
            v_losted_booster_bag = {
                name = 'Booster-Gürteltasche',
                text = {
                    '{C:attention}+2 zusätzliche Karten{} zur',
                    'Auswahl in Booster-Paketen',
                },
                unlock = {
                    'Öffne {E:1,C:attention}#1#',
                    'Booster-Pakete',
                    '{C:inactive}(#2#)'
                }
            },
            v_hone={
                name='Schleiferei',
                text={
                    '{C:dark_edition}Foil-, {C:dark_edition}Holografische-,',
                    '{C:dark_edition}Polychrom-, {C:dark_edition}Quantum- und {C:dark_edition}Plasma-Karten',
                    'erscheinen {C:attention}#1#X{} häufiger',
                },
            },
            v_glow_up={
                name='Glow-Up',
                text={
                    '{C:dark_edition}Foil-, {C:dark_edition}Holografische-,',
                    '{C:dark_edition}Polychrom-, {C:dark_edition}Quantum- und {C:dark_edition}Plasma-Karten',
                    'erscheinen {C:attention}#1#X{} häufiger',
                },
                unlock={
                    'Habe mindestens {C:attention}#1#',
                    '{C:attention}Joker{}-Karten in der',
                    '{C:dark_edition}Foil-, {C:dark_edition}Holografischen- oder',
                    '{C:dark_edition}Polychrom-Edition',
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_losted_magic_trick = 'Ein Zaubertrick',
            c_losted_medieval_era = 'Mittelalter-Ära',
            c_losted_wall = 'Die Mauer',
            c_losted_breakfast = 'Frühstück',
            c_losted_new_times = 'Neue Zeiten',
            c_losted_only_jokers = 'Nur Joker',
            c_losted_autopilot = 'Autopilot',
            c_losted_mvp = 'M.V.P',
            c_losted_running_on_fumes = 'Auf dem Zahnfleisch',
            c_losted_marathon = 'Marathon',
        },
        dictionary = {
            k_negative_ex = 'Negativ!',
            k_blind_selected_ex = 'Blind-Bonus!',
            k_ante_increased_ex = 'Ante erhöht!',
            k_ante_decreased_ex = 'Ante verringert!',
            k_schrodinger_ex = 'Tot',
            k_suit_changed_ex = 'Farbe geändert!',
            k_obsidian_awakened_ex = 'OBSIDIAN ERWACHT',
            toast_eaten = 'Gegessen',
            k_mod_c = 'SPIEL 1',
            k_mod_m = 'SPIEL 2',
            k_chips = 'Chips',
            k_losted_enhancements_removed = 'Verstärkungen entfernt!',
            k_vandalism_ex = 'Vandalisiert!',
            k_plus_toast = '+1 Toast',
            k_even = 'gerade',
            k_odd = 'ungerade',
            k_nothing_ex = 'Nichts für Beta',

        k_losted_config_game = 'Spiel',
        k_losted_config_audio_visual = 'Audio & Grafik',
        k_losted_music_label = 'Soundtrack',
            k_losted_music_ost1 = 'Lost Edition OST von Gulira',
            k_losted_music_ost2 = 'Balatro OST von LouisF',

            k_losted_themes_tab = 'Themen',
            k_losted_theme_label = 'Ausgewähltes Thema',
            k_losted_apply_button = 'Thema anwenden',
            k_losted_loading_themes = 'Lade Themen...',

            k_fast_forward_label = 'Vorspulen',
            k_status_text_label = 'Text-Pop-ups',

            k_fast_forward_off = 'Aus',
            k_fast_forward_planets = 'Nur Planeten',
            k_fast_forward_on = 'Alles (Schnell)',
            k_fast_forward_unsafe = 'Alles Extrem (Instabil)',
            k_status_text_all = 'Alle',
            k_status_text_less_annoying = 'Weniger nervig',
            k_status_text_no_misc = 'Verschiedenes ausblenden',
            k_status_text_none = 'Keine',
        },
        v_dictionary = {
            a_xchips = 'X#1# Chips',
            a_powmult = '^#1# Mult',
        },
        v_text = {
            ch_c_boss_rush = { 'Alle Blinds sind {C:attention}Boss Blinds{}' },
            ch_c_no_tags = { 'Überspringen von Blinds ist {C:attention}deaktiviert{}' },
            ch_c_new_times = { 'Joker, die nicht zur {C:purple}Lost Edition{} gehören, sind verboten' },
            ch_c_only_jokers = { 'Nur Joker können im {C:attention}Shop{} und in {C:attention}Paketen{} gefunden werden' },
            ch_c_force_selection = { 'Erzwingt, dass immer 1 Karte ausgewählt ist' },
            ch_c_marathon = { 'Finale Ante wird auf Ante {C:attention}16{} umgeleitet' }
        },
        labels = {
            losted_quantum = 'Quantum',
            losted_plasma = 'Plasma',
            losted_evolutionary = 'Evolutiv',
            losted_chaotic = 'Chaotisch',
            losted_medieval = 'Mittelalterlich',
        },
        tutorial = {
            losted_intro_1 = {
                'Willkommen zur {C:purple}Lost Edition{}!'
            },
            losted_intro_2 = {
                'Nicht viele schaffen es bis hierher, weißt du?'
            },
            losted_intro_3 = {
                'Nimm dir Zeit, erkunde in deinem eigenen Tempo.',
            },
            losted_intro_4 = {
                'Vielleicht findest du etwas {C:attention}wirklich Interessantes{} hier...',
            }
        }
    },
}
