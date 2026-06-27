return {
    descriptions={
        Back = {
            b_losted_evolutionary = {
                name = 'Jeu Évolutif',
                text = {
                    'Pour chaque {C:attention}mise initiale paire{} supérieure à 3,',
                    'gagnez {C:attention}+1{} à la taille de la main',
                },
                unlock={
                    'Augmentez la taille de la main',
                    'à {C:attention}#1#{} cartes',
                },
            },
            b_losted_fortune = {
                name = 'Jeu de la Fortune',
                text = {
                    'Double {C:attention}toutes les',
                    '{C:green,E:1,S:1.1}probabilités',
                    '{C:inactive}(ex: {C:green}1 sur 3{C:inactive} -> {C:green}2 sur 3{C:inactive})',
                },
                unlock = {
                    'Gagnez une partie avec',
                    '{C:attention}#1#{}',
                    'à n\'importe quelle difficulté',
                }
            },
            b_losted_chaotic = {
                name = 'Jeu Chaotique',
                text = {
                    'Toutes les cartes sont aléatoires,',
                    'limitées à {C:attention}6 valeurs{} et {C:attention}2 couleurs{}',
                    'Commencez la partie avec {C:attention,T:v_overstock_norm}#1#{}',
                    '{C:red}x#2#{} à la taille de base de la Blinde',
                },
                unlock = {
                    'Gagnez une partie avec',
                    '{C:attention}#1#{}',
                    'à n\'importe quelle difficulté',
                }
            },
            b_losted_medieval = {
                name = 'Jeu Médiéval',
                text = {
                    '{C:attention}+#1#{} emplacement de Joker',
                    'À partir de la mise initiale 2,',
                    '{C:attention}toutes{} les Blindes sont des {C:attention}Blindes Boss{}',
                },
                unlock = {
                    'Terminez le défi',
                    '{E:1,C:attention}Ère Médiévale'
                }
            },
        },
        Blind = {
            bl_losted_all_ones = {
                name='Oups ! Que des 1',
                text={
                    'Divise par 2 {C:attention}toutes les',
                    '{C:green,E:1,S:1.1}probabilités',
                    '{C:inactive}(ex: {C:green}1 sur 2{C:inactive} -> {C:green}0.5 sur 2{C:inactive})',
                },
            },
            bl_losted_privilege = {
                name = 'Privilège',
                text = {
                    '1 carte sur 8',
                    'subit un malus',
                }
            },
            bl_losted_vampiric = {
                name = 'Vampirique',
                text = {
                    'Supprime les {C:attention}Améliorations{}',
                    'de toutes les {C:attention}cartes marquant des points{}',
                    '{C:inactive}(Rétablies après la défaite)'
                }
            },
            bl_losted_inversion = {
                name = 'Inversion',
                text = {
                    'Inverse le nombre de {C:attention}mains',
                    'et de {C:attention}défausses',
                }
            },
            bl_losted_amnesia = {
                name = 'L\'Amnésie',
                text = {
                    'Réinitialise #1#',
                    'au niveau 1,',
                    'temporairement',
                }
            },
            bl_losted_labyrinth = {
                name = 'Le Labyrinthe',
                text = {
                    'Une {C:attention}main de poker{} aléatoire',
                    'subit un malus.',
                    'Change à chaque coup',
                },
            },
            bl_losted_watchdog = {
                name = 'Le Chien de Garde',
                text = {
                    'Passe le prochain magasin',
                }
            },
            bl_losted_balance = {
                name = 'La Balance',
                text = {
                    'Les cartes de valeur {C:attention}paire{}',
                    'subissent un malus'
                }
            },
            bl_losted_solitude = {
                name = 'Solitude',
                text = {
                    'Les cartes de valeur {C:attention}impaire{}',
                    'subissent un malus'
                }
            },
            bl_losted_annihilation = {
                name = 'Annihilation',
                text = {
                    'Perdez un {C:attention}badge{} aléatoire',
                    'à chaque main jouée',
                }
            }
        },
        Edition = {
            e_losted_plasma = {
                name = 'Plasma',
                text = {
                    'Multi. {X:purple,C:white}^#1#{}',
                },
            },
            e_losted_quantum = {
                name = 'Quantique',
                text = {
                    'Répète {C:blue}tous les effets{}',
                    'de cette carte',
                    '{C:blue}1{} fois de plus',
                },
            },
        },
        Enhanced = {
            m_losted_diamond = {
                name = 'Carte Diamant',
                text = {
                    'Marque à nouveau si jouée {C:attention}à côté{} d\'une',
                    'autre {C:attention}Carte Diamant{} marquant des points',
                    '{X:chips,C:white}x#1#{} Jetons et {X:mult,C:white}x#2#{} Multi.',
                    'tant que cette carte reste en main',
                },
            },
            m_losted_stellar = {
                name = 'Carte Stellaire',
                text = {
                    'Gagne {C:chips}+#1#{} Jetons permanents',
                    'en marquant des points.',
                },
            },
            m_losted_toast = {
                name = 'Carte Grillée',
                text = {
                    'Multi. {X:mult,C:white}x#1#{}',
                    'en marquant des points,',
                    'est {C:attention}consommée{} après usage',
                },
            },
            m_wild={
                name='Carte Couleur Sauvage',
                text={
                    'Peut être utilisée',
                    'comme n\'importe quelle couleur.',
                    'N\'est pas affectée par',
                    'les malus de Couleur'
                },
            },
        },
        Other = {
            losted_platinum_sticker = {
                name = 'Autocollant de Platine',
                text= {
                    'Ce Joker a été utilisé pour',
                    'gagner en difficulté',
                    '{C:attention}Mise de Platine{}'
                }
            },
            losted_diamond_sticker = {
                name = 'Autocollant de Diamant',
                text= {
                    'Ce Joker a été utilisé pour',
                    'gagner en difficulté',
                    '{C:attention}Mise de Diamant{}'
                }
            },
            artist = {
                text = {
                    '{C:inactive}Artiste',
                },
            },
            artist_credit = {
                name = 'Artiste',
                text = {
                    '{E:1}#1#{}'
                },
            },
            perfect_three_of_a_kind = {
                name = '{C:attention}Brelan Parfait{}',
                text = {
                    'Composé d\'{C:attention}exactement{}',
                    '{C:attention}3{} cartes de la {C:attention}même valeur{},'
                }
            },
            improvements_of_card = {
                name = '{C:dark_edition}Améliorations{}',
                text = {
                    'Attributs spéciaux qui',
                    'modifient une carte :',
                    '{C:dark_edition}Amélioration{}, {C:dark_edition}Sceau{} et {C:dark_edition}Édition{}.',
                }
            }
        },
        Joker={
            j_losted_jimball={
                name = 'Jimbolino',
                text = {
                    'Quand une {C:attention}Blinde{} est sélectionnée,',
                    'gagne de manière permanente',
                    '{C:mult}+#1#{} au Multi. et {C:chips}+#2#{} Jetons',
                    '{C:inactive}(Actuellement : Multi. {C:mult}+#3#{}, Jetons {C:chips}+#4#{}{C:inactive})'
                }
            },
            j_losted_stake_out={
                name = 'Planque',
                text = {
                    'Multi. {X:mult,C:white}x#1#{},',
                    '{C:attention}perdez 1 main{} si la main jouée',
                    'déclenche la {C:attention}Blinde Boss{}'
                }
            },
            j_losted_gothic={
                name = 'Joker Gothique',
                text = {
                    'Les cartes jouées avec une {C:attention}Couleur Sauvage{}',
                    'donnent {C:mult}+#1#{} au Multi. en marquant des points'
                }
            },
            j_losted_lost_sock={
                name = 'Chaussette Perdue',
                text = {
                    'Ce Joker gagne {C:mult}+#1#{} au Multi.',
                    'si la main jouée contient',
                    '{C:attention}#2#{} cartes ou moins',
                    '{C:inactive}(Actuellement : Multi. {C:mult}+#3#{C:inactive})',
                }
            },
            j_losted_perfect_split={
                name = 'Division Parfaite',
                text = {
                    'Chaque carte {C:attention}marquant des points{}',
                    'a {C:green}1 chance sur #2#{}',
                    'de gagner {C:mult}+#3#{} au Multi. de manière permanente',
                }
            },
            j_losted_sticky={
                name = 'Joker Collant',
                text = {
                    'Après {C:attention}#1#{} manches,',
                    'vendez cette carte pour rendre',
                    'un Joker aléatoire {C:dark_edition}Négatif{}',
                    '{C:inactive}(Actuellement {C:attention}#2#{C:inactive}/#1#)',
                },
                unlock={
                    'Gagnez une partie avec',
                    '{E:1,C:attention}8 Jokers{}',
                    'ou plus',
                },
            },
            j_losted_vip_pass={
                name = 'Passe V.I.P.',
                text = {
                    'Crée un {C:attention}Coupon{} supplémentaire gratuit dans le magasin',
                    'après avoir battu une {C:attention}Blinde Boss{}'
                }
            },
            j_losted_welder={
                name = 'Soudeur',
                text = {
                    'Les {C:attention}Cartes Acier{} donnent',
                    'Multi. {X:mult,C:white}x#1#{} au lieu',
                    'de Multi. {X:mult,C:white}x1.5{}'
                },
                unlock={
                    'Avoir au moins {C:attention}#1#',
                    '{E:1,C:attention}#2#{} dans',
                    'votre jeu',
                },
            },
            j_losted_triquetra = {
                name = 'Triquetra',
                text = {
                    'Les cartes faisant partie d\'un',
                    '{C:attention}Brelan Parfait{} dans la main jouée',
                    'sont {C:attention}réactivées{} #1# fois de plus',
                }
            },
            j_losted_the_passage = {
                name = 'Le Passage',
                text = {
                    'Lorsqu\'elle est {C:attention}vendue{},',
                    'la mise initiale est modifiée de {C:attention}1{}.',
                    '{C:green}50%{} de chance d\'{C:blue}augmenter{}',
                    '{C:green}50%{} de chance de {C:red}diminuer{}'
                },
                unlock = {
                    'Utilisez les coupons',
                    '{C:attention}#1#{} et {C:attention}#2#{}',
                    'en une seule partie'
                }
            },
            j_losted_slot_machine = {
                name = 'Machine à sous',
                text = {
                    'Chaque {C:attention}7{} marquant des points a',
                    '{C:green}1 chance sur 2{} de gagner {C:mult}+#2#{} Multi.,',
                    '{C:green}1 chance sur 4{} de gagner {C:gold}$#3#{},',
                    '{C:green}1 chance sur 8{} de gagner Multi. {X:mult,C:white}x#4#{}',
                    '{C:green}1 chance sur #5#{} de perdre tout votre {C:money}${}',
                },
                unlock = {
                    'Jouez un brelan contenant',
                    '3 {C:attention,E:1}Cartes Chance{}',
                    'de valeur {C:attention,E:1}7{}',
                },
            },
            j_losted_strawberry_milkshake = {
                name = 'Milk-shake à la fraise',
                text = {
                    'Jetons {X:chips,C:white}x#1#{},',
                    'perd {X:chips,C:white}x#2#{} Jetons',
                    'par manche jouée.',
                    '{C:dark_edition}Miam, c\'est crémeux !{}'
                }
            },
            j_losted_schrodinger = {
                name = 'Chat de Schrödinger',
                text = {
                    '{C:green}1 chance sur #2#{}',
                    'd\'obtenir {C:chips}+#3#{} Jetons',
                }
            },
            j_losted_mitosis = {
                name = 'Mitose',
                text = {
                    'Si la {C:attention}première main{} de la manche est composée',
                    'uniquement de cartes de la {C:attention}même valeur{},',
                    'toutes les cartes marquant des points copient les',
                    '{C:dark_edition}améliorations{} de la carte la plus à droite.',
                },
            },
            j_losted_last_resort = {
                name = 'Dernier recours',
                text = {
                    'Si la {C:attention}première défausse{} de la manche',
                    'a exactement {C:attention}2{} cartes, tirez',
                    'dessus et détruisez-les'
                }
            },
            j_losted_magician = {
                name = 'Joker Magicien',
                text = {
                    'En utilisant une carte de {C:purple}Tarot{},',
                    'a {C:green}1 chance sur #2#{} de',
                    'créer une carte {C:spectral}Spectrale{}',
                    '{C:inactive}(Nécessite un emplacement libre){}'
                },
            },
            j_losted_disruption = {
                name = 'Perturbation',
                text = {
                    'Multi. {X:mult,C:white}x1{},',
                    'gagne {X:mult,C:white}x#1#{} au Multi. pour chaque',
                    'fois que la {C:attention}main de poker{}',
                    'a été jouée dans cette partie',
                }
            },
            j_losted_passion_fruit = {
                name = 'Fruit de la passion',
                text = {
                    'Gagne {C:chips}+#2#{} Jetons',
                    'par main jouée',
                    '{C:green}#3# chance(s) sur #4#{} d\'être',
                    'détruit à la fin de la manche',
                    '{C:inactive}(Actuellement {C:chips}+#1#{}{C:inactive} Jetons)'
                }
            },
            j_losted_passion_juice = {
                name = 'Jus de fruit de la passion',
                text = {
                    'Gagne {X:chips,C:white}x#2#{} Jetons',
                    'par main jouée',
                    '{C:green}#3# chance(s) sur #4#{} d\'être',
                    'détruit à la fin de la manche',
                    '{C:inactive}(Actuellement {X:chips,C:white}x#1#{}{C:inactive} Jetons)'
                }
            },
            j_losted_statue = {
                name = 'Statue de pierre',
                text = {
                    'Les {C:attention}Cartes Pierre{} marquant des points',
                    'donnent {X:chips,C:white}x#1#{} Jetons'
                },
                unlock = {
                    'Jouez une main contenant',
                    '5 {C:attention,E:1}Cartes Pierre{}',
                }
            },
            j_losted_rule_book = {
                name = 'Livre de règles',
                text = {
                    'La {C:attention}dernière carte{} marquant des points',
                    'donne {X:mult,C:white}x#1#{} au Multi.',
                }
            },
            j_losted_toc_toc = {
                name = 'Toc Toc',
                text = {
                    'En jouant une main, gagnez',
                    'une somme en {C:money}${} égale au nombre de',
                    '{C:attention}défausses restantes{}',
                }
            },
            j_losted_advantage_addiction = {
                name = 'Addiction à l\'avantage',
                text = {
                    'Réactive les cartes avec',
                    '{C:dark_edition}des améliorations{}',
                    '#1#{} fois de plus',
                },
                unlock={
                    'Avoir au moins {E:1,C:attention}#1#',
                    'cartes avec des {C:dark_edition}améliorations{}',
                    'dans votre jeu',
                },
            },
            j_losted_jersey_10 = {
                name = 'Maillot 10',
                text = {
                    'Si la main jouée est composée d\'un unique {C:attention}10{},',
                    'lui applique une {C:dark_edition}édition{} aléatoire',
                }
            },
            j_losted_harlequin = {
                name = 'Arlequin',
                text = {
                    '{C:chips}+#1#{} Jetons',
                }
            },
            j_losted_totem = {
                name = 'Totem',
                text = {
                    '{C:green}1 chance sur #2#{}',
                    'de {C:attention}doubler{} chaque gain de {C:money}${}',
                    },
                    unlock = {
                    'Terminez le défi',
                    '{E:1,C:attention}Sur la Réserve'
                }
                },
            j_losted_duke = {
                name = 'Duc',
                text = {
                    'Réactive la {C:attention}première{} carte',
                    'jouée et marquant des points',
                    '{C:attention}1{} fois de plus',
                    'par {C:attention}Valet{} en main'
                },
            },
            j_losted_mysterious = {
                name = '???',
                text = {
                    '{C:inactive}(#1#/#2#)',
                    '{C:inactive,s:0.7}Mains'
                },
                unlock = {
                    'Terminez le défi',
                    '{E:1,C:attention}Marathon'
                }
            },
            j_losted_rubiks_cube = {
                name = 'Cube magique',
                text = {
                    'Chaque {C:attention}6{} joué donne {C:mult}+#2#{} au Multi.,',
                    'Chaque {C:attention}9{} joué donne {C:chips}+#1#{} Jetons',
                }
            },
            j_losted_demonic_joker = {
                name = 'Joker Démoniaque',
                text = {
                    'Chaque {C:attention}6{} joué donne {C:gold}$#1#{}',
                    'Si la main jouée contient un {C:attention}Brelan{},',
                    'l\'or par carte est {C:attention}doublé{}',
                    '{C:green}#2# chance(s) sur #3#{} de ne pas s\'activer',
                },
                unlock = {
                    'Jouez un brelan contenant',
                    '3 {C:attention,E:1}Cartes Or{}',
                    'de valeur {C:attention,E:1}6{}',
                },
            },
            j_losted_moist_cake = {
                name = 'Gâteau Moelleux',
                text = {
                    'Les cartes jouées avec',
                    'la couleur {V:1}#2#{} donnent',
                    '{C:mult}+#1#{} au Multi. en marquant des points',
                    '{s:0.8}la couleur change à la fin de la manche',
                }
            },
            j_losted_rocker={
                name = 'Rockeur',
                text = {
                    'Les {C:attention}Cartes Pierre{} jouées',
                    'donnent {C:mult}+#1#{} au Multi. en marquant des points'
                }
            },
            j_losted_piggy_bank = {
                name = 'Tirelire',
                text = {
                    'Gagne {C:chips}+#2#{} Jetons pour chaque',
                    '{C:money}$1{} d\'intérêt reçu à la',
                    'fin de la manche.',
                    '{C:inactive}(Actuellement {C:chips}+#1#{C:inactive} Jetons)'
                }
            },
            j_losted_hematophilia = {
                name = 'Hémophilie',
                text = {
                    'Gagne {C:mult}+#2#{} au Multi. de manière permanente',
                    'pour chaque carte ou Joker {C:attention}détruit{}',
                    '{C:inactive}(Actuellement {C:mult}+#1#{}{C:inactive} Multi.)'
                }
            },
            j_losted_chicken_cleide = {
                name = 'Poulette Cléide',
                text = {
                    'Quand une {C:attention}Blinde Boss{} est sélectionnée,',
                    'pond un {C:attention}Œuf{} {C:dark_edition}Négatif{}. Max {C:attention}#1#{} œufs',
                    '{C:inactive}(Actuellement {C:attention}#2#{C:inactive}/#1#)',
                    '{C:inactive,s:0.9}(Détruite après avoir pondu les œufs)'
                },
                unlock = {
                    'Terminez le défi',
                    '{E:1,C:attention}L\'Omelette'
                }
            },
            j_losted_seal_stamp = {
                name = 'Tampon à Sceau',
                text = {
                    'En battant une {C:attention}Blinde Boss{},',
                    'crée un {C:spectral}Spectre de Sceau{} aléatoire',
                    '{C:inactive}(Nécessite un emplacement libre){}'
                }
            },
            j_losted_pot_of_greed = {
                name = 'Pot de Cupidité',
                text = {
                    'En jouant ou en défaussant,',
                    'piochez {C:attention}1{} carte supplémentaire',
                },
                unlock={
                    'Atteignez le',
                    'niveau de mise {E:1,C:attention}#1#',
                },
            },
            j_losted_sarcophagus = {
                name = 'Sarcophage',
                text = {
                    'En battant une {C:attention}Blinde Boss{},',
                    'crée un Joker {C:dark_edition}Négatif{} aléatoire',
                    '{C:uncommon}Peu commun{} ou {C:rare}Rare{}',
                    'puis s\'{C:attention}autodétruit{}'
                },
                unlock = {
                    'Gagnez une partie avec',
                    'au moins 2 jokers {C:dark_edition}négatifs'
                }
            },
            j_losted_cosmos = {
                name = 'Cosmos',
                text = {
                    'Les cartes {C:planet}Planète{} dans',
                    'votre zone de {C:attention}consommables{}',
                    'donnent {X:mult,C:white}x#1#{} au Multi.',
                },
                unlock={
                    'Achetez un total de',
                    '{C:attention}#1#{} cartes {C:planet}Planète{}',
                    'dans le magasin',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_error = {
                name = 'Erreur',
                text = {
                    'Si la {C:attention}première main{} de la manche',
                    'contient au plus {C:attention}3{} cartes,',
                    'randomise la {C:attention}couleur{}, la {C:attention}valeur{}',
                    'et les {C:dark_edition}améliorations{} des',
                    '{C:attention}cartes jouées{}',
                },
                unlock={
                    'Battez une Boss Blinde',
                    'avec 1 {E:1,C:attention}#1#',
                },
            },
            j_losted_miner = {
                name = 'Joker Mineur',
                text = {
                    '{C:green}1 chance sur #2#{} de créer',
                    'une carte spectrale {C:spectral}Cupidité{}',
                    'quand une main marque des points',
                    '{C:inactive}(Nécessite un emplacement libre){}'
                }
            },
            j_losted_toaster = {
                name = 'Grille-pain',
                text = {
                    'Après avoir marqué une {C:attention}Paire{},',
                    'rend les cartes {C:attention}grillées{}',
                    'et les remet dans le jeu'
                }
            },
            j_losted_baker = {
                name = 'Joker Boulanger',
                text = {
                    'Ajoute une carte {C:attention}Grillée{}',
                    'à votre jeu lorsque',
                    'la {C:attention}Blinde{} est sélectionnée',
                }
            },
            j_losted_spirit_box = {
                name = 'Boîte à esprits',
                text = {
                    'Gagne {X:mult,C:white}x#1#{} au Multi.',
                    'pour chaque carte {C:purple}Spectrale{} utilisée',
                    '{C:inactive}(Actuellement Multi. {X:mult,C:white}x#2#{}{C:inactive})',
                }
            },
            j_losted_precious = {
                name = 'Joker Précieux',
                text = {
                    'Ce Joker gagne {C:mult}+#1#{} au Multi.',
                    'chaque fois qu\'une {C:attention}Carte Diamant{}',
                    'est marquée à nouveau',
                    '{C:inactive}(Actuellement Multi. {C:mult}+#2#{}{C:inactive})',
                }
            },
            j_losted_laser_microjet = {
                name = 'Laser MicroJet',
                text = {
                    '{C:green}1 chance sur #2#{}',
                    'de marquer à nouveau les {C:attention}Cartes Diamant{}',
                    'déjà marquées à nouveau',
                },
                unlock = {
                    'Jouez une main contenant',
                    '5 {C:attention,E:1}Cartes Diamant{}',
                }
            },
            j_losted_step_by_step = {
                name = 'Pas à pas',
                text = {
                    'Ce Joker gagne {C:mult}+#1#{} au Multi.',
                    'si la main jouée contient',
                    'une {C:attention}#2#',
                    '{C:inactive}(Actuellement, Multi. {C:mult}+#3#{C:inactive})',
                }
            },
            j_losted_jimboy = {
                name = 'Jimboy',
                text = {
                    'Lors de la {C:attention}défausse{}, bascule entre',
                    'deux jeux différents :',
                    'Actuellement : {V:1}#3# (+#5# #4#){}',
                }
            },
            j_losted_red_joker = {
                name='Joker Rouge',
                text={
                    '{C:mult}+#1#{} au Multi. pour chaque #2# cartes',
                    'restantes dans le {C:attention}jeu',
                    '{C:inactive}(Actuellement, Multi. {C:mult}+#3#{C:inactive})',
                },
            },
            j_losted_bank = {
                name='Banque',
                text={
                    'Ce Joker gagne {X:mult,C:white}x#1#{} au Multi.',
                    'pour chaque {C:money}$#2#{} que vous avez',
                    '{C:inactive}(Actuellement, Multi. {X:mult,C:white}x#3#{C:inactive})',
                },
            },
            j_losted_big_bang = {
                name='Big Bang',
                text={
                    'Crée une carte {C:planet}Planète{}',
                    'lorsque la {C:attention}Blinde{} est sélectionnée',
                    '{C:inactive}(Nécessite un emplacement libre)',
                },
            },
            j_losted_artist={
                name='Joker Artiste',
                text={
                    'Si la main jouée contient une {C:attention}Couleur{},',
                    'chaque carte a {C:green}1 chance sur #2#{}',
                    'de devenir une {C:attention}Carte Couleur Sauvage{}',
                },
                unlock = {
                    'Jouez une main contenant',
                    '5 {C:attention,E:1}Cartes Couleur Sauvage{}',
                }
            },
            j_losted_shiny_gloves = {
                name = 'Gants Brillants',
                text = {
                    'Ce Joker gagne {C:mult}+#1#{} au Multi.',
                    'si la main jouée contient',
                    'une {C:attention}#2#',
                    '{C:inactive}(Actuellement, Multi. {C:mult}+#3#{C:inactive})',
                }
            },
            j_losted_fair_price = {
                name = 'Juste Prix',
                text = {
                    'Multi. {X:mult,C:white}x#1#{},',
                    'payez {C:money}$#2#{} à la',
                    'fin de la manche',
                    '{C:inactive}Détruit si vous ne pouvez pas payer{}',
                }
            },
            j_losted_paid_vacation = {
                name = 'Congés Payés',
                text = {
                    'Gagnez {C:money}$#1#{} si',
                    'la blinde est battue',
                    'en utilisant {C:attention}toutes les mains{}'
                }
            },
            j_losted_joke_book = {
                name = 'Livre de blagues',
                text = {
                    'Gagne {X:mult,C:white}x#1#{} au Multi. si la',
                    'main jouée est {C:attention}#3#{},',
                    'Se réinitialise si vous jouez une autre {C:attention}main de poker{}.',
                    'La {C:attention}main de poker{} change à chaque partie',
                    '{C:inactive}(Actuellement, Multi. {X:mult,C:white}x#2#{C:inactive})',
                }
            },
            j_losted_vandalism = {
                name = 'Vandalisme',
                text = {
                    'Réduit le score de toutes les',
                    '{C:attention}Blindes{} de {C:attention}#1#%{}',
                    'lorsqu\'elles sont sélectionnées'
                }
            },
            j_losted_artwork = {
                name = 'Œuvre d\'art',
                text = {
                    'Gagne {C:money}$#1#{} de',
                    '{C:attention}valeur de vente{} à la',
                    'fin de la manche',
                    '{C:green}#2# chance(s) sur #3#{} d\'être',
                    'détruit à la fin de la manche',
                }
            },
            j_losted_silly_hat = {
                name = 'Chapeau ridicule',
                text = {
                    'Ce Joker gagne {C:mult}+#1#{} au Multi.',
                    'si la main jouée contient',
                    'une {C:attention}#2#',
                    '{C:inactive}(Actuellement, Multi. {C:mult}+#3#{C:inactive})',
                }
            },
            j_losted_surprise_box = {
                name = 'Boîte à surprise',
                text = {
                    '' -- should be empty
                }
            },
            j_losted_critic_failure = {
                name = 'Échec Critique',
                text = {
                    '{C:attention}Divise{} toutes les',
                    '{C:green,E:1,S:1.1}probabilités{} par {C:green,E:1,S:1.1}4{}',
                    '{C:inactive}(ex: {C:green}1 sur 3{C:inactive} -> {C:green}0.25 sur 3{C:inactive})',
                },
                unlock={
                    'En une seule main,',
                    'gagnez au moins',
                    '{E:1,C:attention}#1#{} jetons',
                },
            },
            j_losted_limited_edition = {
                name = 'Édition Limitée',
                text = {
                    'Gagne {X:mult,C:white}x#1#{} au Multi. pour chaque',
                    '{C:money}$1{} de valeur de vente',
                    'lors de la vente d\'autres Jokers.',
                    '{C:inactive}(Actuellement, Multi. {X:mult,C:white}x#2#{C:inactive})',
                },
                unlock={
                    'Vendez un total de',
                    '{C:attention,E:1}#1#{} cartes Joker',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_contract = {
                name = 'Contrat',
                text = {
                    'Améliore le niveau de {C:attention}#1#{}',
                    'de 2 à la fin de la manche',
                    'Les autres {C:attention}mains de poker{} subissent un malus',
                    'Ne peut être vendu avant expiration',
                    'Expire dans {C:attention}#2#{} manches'
                },
            },
            j_losted_hoarding_joker = {
                name = 'Joker Accumulateur',
                text = {
                    '{C:dark_edition}+#1#{} emplacement(s) de consommable',
                }
            },
            j_losted_glutton = {
                name = 'Joker Accumulateur',
                text = {
                    '{C:dark_edition}+#1#{} emplacement(s) de consommable',
                }
            },
            j_losted_big_joker = {
                name = 'Grand Joker',
                text = {
                    'Ce Joker gagne',
                    '{C:mult}+#2#{} au Multi. lorsque chaque',
                    '{C:attention}10{} joué marque des points',
                    '{C:inactive}(Actuellement {C:mult}+#1#{C:inactive} Multi.)',
                }
            },
            j_losted_doodle = {
                name = 'Gribouillage',
                text = {
                    'Copie la capacité',
                    'du {C:attention}Joker{} à gauche',
                    '{C:green}1 chance sur #2#{} d\'être',
                    'détruit à la fin de la manche',
                }
            },
            j_losted_booster = {
                name = 'Booster',
                text = {
                    'Gagne {C:chips}+#2#{} Jetons lorsque n\'importe quel',
                    '{C:attention}Booster{} est ouvert',
                    '{C:inactive}(Actuellement {C:chips}+#1#{}{C:inactive} Jetons)',
                }
            },
            j_losted_turntable = {
                name = 'Platine',
                text = {
                    'Les cartes jouées qui ont',
                    'la même {C:attention}valeur et couleur{} qu\'une',
                    'carte déjà marquée dans cette manche',
                    'donnent {C:mult}+#1#{} au Multi.'
                },
                unlock = {
                    'Jouez une',
                    '{E:1,C:attention}Quinte flush'
                }
            },
            j_losted_replay = {
                name = 'Replay',
                text = {
                    'Réactive la {C:attention}dernière{} carte',
                    'jouée et marquant des points',
                    '{C:attention}#1#{} fois de plus',
                }
            },
            j_losted_clown_car = {
                name = 'Voiture de clown',
                text = {
                    'Quand une {C:attention}Blinde{} est sélectionnée,',
                    'crée {C:uncommon}#1# Joker Peu Commun{}.',
                    'Crée jusqu\'à {C:attention}#2# Jokers.',
                    '{C:inactive}({C:attention}#3#{}{C:inactive}/#2#){}',
                    '{C:inactive}(Nécessite un emplacement libre)',
                },
                unlock = {
                    'Terminez le défi',
                    '{E:1,C:attention}Jokers Uniquement'
                }
            },
            j_losted_the_joker = {
                name = 'Le Joker',
                text = {
                    'Chaque {C:attention}#2#{} joué donne',
                    '{X:mult,C:white}x#1#{} au Multi. en marquant des points',
                    '{C:inactive}{s:0.7}Choisit la valeur la plus commune dans le jeu{}{}',
                },
                unlock = {
                    'Lorsque le {E:1,C:dark_edition}???{} résout',
                    'son énigme, {C:dark_edition}il{} se révélera',
                }
            },
            j_losted_obsidian = {
                name = 'Obsidienne',
                text = {
                    'Les cartes jouées avec',
                    'la couleur {V:1}#5#{} donnent',
                    '{C:chips}+#1#{} Jetons, {C:mult}+#2#{} Multi., {X:mult,C:white}x#3#{} Multi.',
                    'et {C:gold}$#4#{} en marquant des points',
                    '{s:0.7}la couleur change à la fin de la manche{}'
                },
                unlock = {
                    'Échangez les {C:dark_edition}quatre pierres{}',
                    'pour la réveiller',
                }
            },
            j_losted_jimbo_hood = {
                name = 'Jimbo des Bois',
                text = {
                    'À la fin du score,',
                    'équilibre le {C:mult}Multi.{} et les {C:chips}Jetons{}',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_roland = {
                name = 'Roland',
                text = {
                    'Quand une {C:attention}Blinde{} est sélectionnée,',
                    'crée une carte {C:spectral}Spectrale{}',
                    '{C:dark_edition}Négative{} aléatoire',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_patati_patata = {
                name = '#1#',
                text = {
                    'Les cartes jouées de valeur {C:attention}#2#{} donnent',
                    '{B:1,C:white}x#3#{} #4# en marquant des points',
                    '{C:inactive}#5#',
                    '{C:faded}Change pour {V:2}#6#{} quand une main est jouée{}'
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_invisible = {
                name = 'Bonjour, le monde !',
                text = {
                    '{C:purple,E:1,S:1.1}Je suis un secret <3{}'
                }
            },
        },
        Spectral={
            c_losted_mystery_soul = {
                name = 'L\'Âme ?',
                text = {
                    'Crée {C:dark_edition}Le Joker{}',
                    '{C:inactive}Qu\'est-ce que c\'est ?{}'
                }
            },
            c_losted_greed = {
                name = 'La Cupidité',
                text = {
                    'Améliore {C:attention}2{}',
                    'cartes sélectionnées en',
                    '{C:attention}Cartes Diamant{}',
                }
            },
            c_losted_aura = {
                name='Aura',
                text={
                    'Ajoute un effet {C:dark_edition}Brillant{}, {C:dark_edition}Holographique{},',
                    '{C:dark_edition}Polychrome{} ou {C:dark_edition}Quantique{}',
                    'à {C:attention}1{} carte sélectionnée dans votre main',
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
                name='Ectoplasme',
                text={
                    'Ajoute {C:dark_edition}Négatif{} à',
                    'un {C:attention}Joker{} aléatoire,',
                    '{C:red}-#1#{} à la taille de la main',
                },
            },
        },
        Stake = {
            stake_losted_diamond = {
                name = 'Mise de Diamant',
                text = {
                    'Augmente la {C:attention}mise finale{} à {C:attention}10{}',
                    '{s:0.8}Applique toutes les mises précédentes',
                }
            },
        },
        Tag = {
            tag_losted_quantum = {
                name='Badge Quantique',
                text={
                    'Le prochain Joker en édition de base',
                    'du magasin est gratuit et',
                    'devient {C:dark_edition}Quantique{}',
                },
            },
            tag_losted_plasma = {
                name='Badge de Plasma',
                text={
                    'Le prochain Joker en édition de base',
                    'du magasin est gratuit et',
                    'devient {C:dark_edition}Plasma{}',
                },
            },
        },
        Tarot = {
            c_losted_abyss={
                name = 'L\'Abîme',
                text = {
                    'Diminue la valeur de {C:attention}#1#{} carte',
                    'sélectionnée de {C:attention}1{}',
                }
            },
            c_losted_lily = {
                name = 'Lys',
                text = {
                    'Améliore {C:attention}1{} carte',
                    'sélectionnée en',
                    '{C:attention}Carte Stellaire{}',
                }
            },
            c_losted_provider = {
                name = 'Le Fournisseur',
                text = {
                    'Améliore {C:attention}#1#{} carte',
                    'sélectionnée en',
                    '{C:attention}Carte Grillée{}',
                }
            },
            c_losted_wheel_of_fortune = {
                name='La Roue de la Fortune',
                text={
                    '{C:green}1 chance sur #2#{} d\'ajouter une édition',
                    '{C:dark_edition}Brillante{}, {C:dark_edition}Holographique{},',
                    '{C:dark_edition}Polychrome{}, {C:dark_edition}Plasma{} ou {C:dark_edition}Quantique{}',
                    'à un {C:attention}Joker{} aléatoire',
                },
            },
        },
        Voucher = {
            v_losted_negative_bias = {
                name = 'Biais Négatif',
                text = {
                    'Les cartes {C:dark_edition}Négatives{} apparaissent',
                    '{C:attention}#1#x{} plus souvent',
                    'dans le magasin',
                },
            },
            v_losted_negative_magnet = {
                name = 'Aimant Négatif',
                text = {
                    'Les cartes {C:dark_edition}Négatives{} apparaissent',
                    '{C:attention}#1#x{} plus souvent',
                    'dans le magasin',
                },
                unlock={
                    'Avoir au moins {C:attention}#1#',
                    'cartes {C:attention}Joker{} avec',
                    'l\'édition {C:dark_edition}Négative{}',
                },
            },
            v_losted_stapler = {
                name = 'Agrafeuse',
                text = {
                    'Les Jokers apparaissent',
                    '{C:attention}2x{} plus souvent',
                    'dans le magasin',
                },
            },
            v_losted_staple_gun = {
                name = 'Pistolet Agrafeur',
                text = {
                    'Réduit la fréquence d\'apparition',
                    'des Jokers {C:common}Communs{}',
                },
                unlock={
                    'Achetez un total de',
                    '{E:1,C:attention}#1#{} {C:blue}Jokers{}',
                    'dans le magasin',
                    '{C:inactive}(#2#)',
                },
            },
            v_losted_extra_bag = {
                name = 'Sac Banane Supplémentaire',
                text = {
                    '{C:attention}+1 Booster{}',
                    'disponible par {C:attention}magasin{}'
                },
            },
            v_losted_booster_bag = {
                name = 'Sac Banane à Booster',
                text = {
                    '{C:attention}+2 Cartes Supplémentaires{} à',
                    'choisir dans les Boosters',
                },
                unlock = {
                    'Ouvrez {E:1,C:attention}#1#',
                    'Boosters',
                    '{C:inactive}(#2#)'
                }
            },
            v_hone={
                name='Aiguisage',
                text={
                    'Les cartes {C:dark_edition}Brillantes{}, {C:dark_edition}Holographiques{},',
                    '{C:dark_edition}Polychromes{}, {C:dark_edition}Quantiques{} et {C:dark_edition}Plasma{}',
                    'apparaissent {C:attention}#1#x{} plus souvent',
                },
            },
            v_glow_up={
                name='Bonne mine',
                text={
                    'Les cartes {C:dark_edition}Brillantes{}, {C:dark_edition}Holographiques{},',
                    '{C:dark_edition}Polychromes{}, {C:dark_edition}Quantiques{} et {C:dark_edition}Plasma{}',
                    'apparaissent {C:attention}#1#x{} plus souvent',
                },
                unlock={
                    'Avoir au moins {C:attention}#1#',
                    'cartes {C:attention}Joker{} avec',
                    'l\'édition {C:dark_edition}Brillante{}, {C:dark_edition}Holographique{} ou',
                    '{C:dark_edition}Polychrome{}',
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_losted_magic_trick = 'Un Tour de Magie',
            c_losted_medieval_era = 'Ère Médiévale',
            c_losted_wall = 'Le Mur',
            c_losted_breakfast = 'Petit Déjeuner',
            c_losted_new_times = 'Temps Nouveaux',
            c_losted_only_jokers = 'Jokers Uniquement',
            c_losted_autopilot = 'Pilote Automatique',
            c_losted_mvp = 'M.V.P',
            c_losted_running_on_fumes = 'Sur la Réserve',
            c_losted_marathon = 'Marathon',
        },
        dictionary = {
            k_negative_ex = 'Négatif !',
            k_blind_selected_ex = 'Bonus de Blinde !',
            k_ante_increased_ex = 'Mise initiale augmentée !',
            k_ante_decreased_ex = 'Mise initiale réduite !',
            k_schrodinger_ex = 'Mort',
            k_suit_changed_ex = 'Couleur changée !',
            k_obsidian_awakened_ex = 'OBSIDIENNE RÉVEILLÉE',
            toast_eaten = 'Mangé',
            k_mod_c = 'JEU 1',
            k_mod_m = 'JEU 2',
            k_chips = 'Jetons',
            k_losted_enhancements_removed = 'Améliorations supprimées !',
            k_vandalism_ex = 'Vandalisé !',
            k_plus_toast = '+1 Grillée',
            k_even = 'paire',
            k_odd = 'impaire',
            k_nothing_ex = 'Rien pour Bêta',

        k_losted_config_game = 'Jeu',
        k_losted_config_audio_visual = 'Audio et visuels',
        k_losted_music_label = 'Bande-son',
            k_losted_music_ost1 = 'Lost Edition OST par Gulira',
            k_losted_music_ost2 = 'Balatro OST par LouisF',

            k_losted_themes_tab = 'Thèmes',
            k_losted_theme_label = 'Thème sélectionné',
            k_losted_apply_button = 'Appliquer le thème',
            k_losted_loading_themes = 'Chargement des thèmes...',

            k_fast_forward_label = 'Avance rapide',
            k_status_text_label = 'Pop-ups de texte',

            k_fast_forward_off = 'Désactivé',
            k_fast_forward_planets = 'Planètes seulement',
            k_fast_forward_on = 'Tout (Rapide)',
            k_fast_forward_unsafe = 'Tout Extrême (Instable)',
            k_status_text_all = 'Tous',
            k_status_text_less_annoying = 'Moins gênant',
            k_status_text_no_misc = 'Masquer divers',
            k_status_text_none = 'Aucun',
        },
        v_dictionary = {
            a_xchips = 'x#1# Jetons',
            a_powmult = '^#1# Multi.',
        },
        v_text = {
            ch_c_boss_rush = { 'Toutes les Blindes sont des {C:attention}Blindes Boss{}' },
            ch_c_no_tags = { 'Passer les Blindes est {C:attention}désactivé{}' },
            ch_c_new_times = { 'Les Jokers n\'appartenant pas à la {C:purple}Lost Edition{} sont bannis' },
            ch_c_only_jokers = { 'Seuls les Jokers peuvent être trouvés dans le {C:attention}magasin{} et les {C:attention}paquets{}' },
            ch_c_force_selection = { 'Force la sélection permanente d\'une carte' },
            ch_c_marathon = { 'La mise initiale finale est redirigée vers la mise {C:attention}16{}' }
        },
        labels = {
            losted_quantum = 'Quantique',
            losted_plasma = 'Plasma',
            losted_evolutionary = 'Évolutif',
            losted_chaotic = 'Chaotique',
            losted_medieval = 'Médiéval',
        },
        tutorial = {
            losted_intro_1 = {
                'Bienvenue dans la {C:purple}Lost Edition{} !'
            },
            losted_intro_2 = {
                'Peu de gens arrivent jusqu\'ici, vous savez ?',
            },
            losted_intro_3 = {
                'Prenez votre temps, explorez à votre rythme.',
            },
            losted_intro_4 = {
                'Peut-être trouverez-vous quelque chose de {C:attention}vraiment intéressant{} par ici...',
            }
        }
    },
}
