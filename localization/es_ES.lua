return {
    descriptions={
        Back = {
            b_losted_evolutionary = {
                name = 'Baraja Evolutiva',
                text = {
                    'Por cada {C:attention}apuesta inicial par{} mayor que 3,',
                    'gana {C:attention}+1{} de tamaño de mano',
                },
                unlock={
                    'Aumenta el tamaño de la mano',
                    'a {C:attention}#1#{} cartas',
                },
            },
            b_losted_fortune = {
                name = 'Baraja de la Fortuna',
                text = {
                    'Duplica {C:attention}todas las',
                    '{C:green,E:1,S:1.1}probabilidades',
                    '{C:inactive}(ej.: {C:green}1 de 3{C:inactive} -> {C:green}2 de 3{C:inactive})',
                },
                unlock = {
                    'Gana una partida con',
                    '{C:attention}#1#{}',
                    'en cualquier dificultad',
                }
            },
            b_losted_chaotic = {
                name = 'Baraja Caótica',
                text = {
                    'Todas las cartas son aleatorias,',
                    'limitadas a {C:attention}6 categorías{} y {C:attention}2 palos{}',
                    'Comienza la partida con {C:attention,T:v_overstock_norm}#1#{}',
                    '{C:red}X#2#{} de tamaño base de la Ciega',
                },
                unlock = {
                    'Gana una partida con',
                    '{C:attention}#1#{}',
                    'en cualquier dificultad',
                }
            },
            b_losted_medieval = {
                name = 'Baraja Medieval',
                text = {
                    '{C:attention}+#1#{} ranura de comodín',
                    'A partir de la apuesta inicial 2,',
                    '{C:attention}todas{} las ciegas son {C:attention}ciegas jefe{}',
                },
                unlock = {
                    'Completa el desafío',
                    '{E:1,C:attention}Era Medieval'
                }
            },
        },
        Blind = {
            bl_losted_all_ones = {
                name='¡Uy! Puros 1',
                text={
                    'Divide por 2 {C:attention}todas las',
                    '{C:green,E:1,S:1.1}probabilidades',
                    '{C:inactive}(ej.: {C:green}1 de 2{C:inactive} -> {C:green}0.5 de 2{C:inactive})',
                },
            },
            bl_losted_privilege = {
                name = 'Privilegio',
                text = {
                    '#1# de cada 8 cartas',
                    'son debilitadas',
                }
            },
            bl_losted_vampiric = {
                name = 'Vampírica',
                text = {
                    'Elimina las {C:attention}mejoras{}',
                    'de todas las {C:attention}cartas que puntúan{}',
                    '{C:inactive}(Se restauran al ser derrotado)'
                }
            },
            bl_losted_inversion = {
                name = 'Inversión',
                text = {
                    'Invierte el número de {C:attention}manos',
                    'y de {C:attention}descartes',
                }
            },
            bl_losted_amnesia = {
                name = 'La Amnesia',
                text = {
                    'Reinicia #1#',
                    'al nivel 1,',
                    'temporalmente',
                }
            },
            bl_losted_labyrinth = {
                name = 'El Laberinto',
                text = {
                    'Una {C:attention}mano de póker{} aleatoria',
                    'es debilitada.',
                    'Cambia con cada jugada',
                },
            },
            bl_losted_watchdog = {
                name = 'El Vigilante',
                text = {
                    'Se salta la próxima tienda',
                }
            },
            bl_losted_balance = {
                name = 'La Balanza',
                text = {
                    'Las cartas con categoría {C:attention}par{}',
                    'son debilitadas'
                }
            },
            bl_losted_solitude = {
                name = 'Soledad',
                text = {
                    'Las cartas con categoría {C:attention}impar{}',
                    'son debilitadas'
                }
            },
            bl_losted_annihilation = {
                name = 'Aniquilación',
                text = {
                    'Pierde una {C:attention}etiqueta{} aleatoria',
                    'con cada mano jugada',
                }
            }
        },
        Edition = {
            e_losted_plasma = {
                name = 'Plasma',
                text = {
                    '{X:purple,C:white}^#1#{} Multi',
                },
            },
            e_losted_quantum = {
                name = 'Cuántica',
                text = {
                    'Repite la {C:blue}puntuación{} y',
                    'efectos compatibles de esta carta',
                    '{C:blue}1{} vez adicional',
                },
            },
        },
        Enhanced = {
            m_losted_diamond = {
                name = 'Carta de Diamante',
                text = {
                    'Vuelve a puntuar si se juega {C:attention}adyacente{} a',
                    'otra {C:attention}Carta de Diamante{} que puntúa',
                    '{X:chips,C:white}X#1#{} fichas y {X:mult,C:white}X#2#{} multi',
                    'mientras esta carta permanece en la mano',
                },
            },
            m_losted_stellar = {
                name = 'Carta Estelar',
                text = {
                    'Gana {C:chips}+#1#{} fichas permanentes',
                    'cuando puntúa.',
                },
            },
            m_losted_toast = {
                name = 'Carta Tostada',
                text = {
                    '{X:mult,C:white}X#1#{} Multi',
                    'cuando puntúa,',
                    'se {C:attention}consume{} tras su uso',
                },
            },
            m_wild={
                name='Carta de Palo Versátil',
                text={
                    'Puede usarse',
                    'como cualquier palo.',
                    'No es afectada por',
                    'debilitaciones de palo'
                },
            },
        },
        Other = {
            losted_platinum_sticker = {
                name = 'Sticker de Platino',
                text= {
                    'Usaste este comodín',
                    'para ganar en la dificultad',
                    '{C:attention}Pozo de Platino{}'
                }
            },
            losted_diamond_sticker = {
                name = 'Sticker de Diamante',
                text= {
                    'Usaste este comodín',
                    'para ganar en la dificultad',
                    '{C:attention}Pozo de Diamante{}'
                }
            },
            artist = {
                text = {
                    '{C:inactive}Artista',
                },
            },
            artist_credit = {
                name = 'Artista',
                text = {
                    '{E:1}#1#{}'
                },
            },
            perfect_three_of_a_kind = {
                name = '{C:attention}Tercia Perfecta{}',
                text = {
                    'Se compone de {C:attention}exactamente{}',
                    '{C:attention}3{} cartas de la {C:attention}misma categoría{},'
                }
            },
            improvements_of_card = {
                name = '{C:dark_edition}Mejoras{}',
                text = {
                    'Son atributos especiales',
                    'que modifican una carta:',
                    '{C:dark_edition}Mejora{}, {C:dark_edition}Sello{} y {C:dark_edition}Edición{}.',
                }
            }
        },
        Joker={
            j_losted_jimball={
                name = 'Jimbolita',
                text = {
                    'Cuando se selecciona una {C:attention}Ciega{},',
                    'gana permanentemente',
                    '{C:mult}+#1#{} multi y {C:chips}+#2#{} fichas',
                    '{C:inactive}(Actual: {C:mult}+#3#{}{C:inactive} multi, {C:chips}+#4#{}{C:inactive} fichas)'
                }
            },
            j_losted_stake_out={
                name = 'Vigilante',
                text = {
                    '{X:mult,C:white}X#1#{} Multi,',
                    '{C:attention}pierde 1 mano{} si la mano jugada',
                    'activa la {C:attention}ciega jefe{}'
                }
            },
            j_losted_gothic={
                name = 'Comodín Gótico',
                text = {
                    'Las cartas jugadas con {C:attention}Palo Versátil{}',
                    'dan {C:mult}+#1#{} multi al puntuar'
                }
            },
            j_losted_lost_sock={
                name = 'Calcetín Perdido',
                text = {
                    'Este comodín gana {C:mult}+#1#{} multi',
                    'si la mano jugada contiene',
                    '{C:attention}#2#{} o menos cartas',
                    '{C:inactive}(Actual: {C:mult}+#3#{C:inactive} multi)',
                }
            },
            j_losted_perfect_split={
                name = 'División Perfecta',
                text = {
                    'Cada carta {C:attention}que puntúa{}',
                    'tiene una probabilidad de {C:green}#1# en #2#{}',
                    'de ganar {C:mult}+#3#{} multi permanentemente',
                }
            },
            j_losted_sticky={
                name = 'Comodín Pegajoso',
                text = {
                    'Después de {C:attention}#1#{} rondas,',
                    'vende esta carta para hacer',
                    '{C:dark_edition}Negativo{} a un comodín al azar',
                    '{C:inactive}(Actual: {C:attention}#2#{C:inactive}/#1#)',
                },
                unlock={
                    'Gana una partida con',
                    '{E:1,C:attention}8 o más comodines{}',
                },
            },
            j_losted_vip_pass={
                name = 'Pase V.I.P.',
                text = {
                    'Crea un {C:attention}Vale{} extra gratuito en la tienda',
                    'tras derrotar a una {C:attention}ciega jefe{}'
                }
            },
            j_losted_welder={
                name = 'Soldador',
                text = {
                    'Las {C:attention}cartas de acero{} dan',
                    '{X:mult,C:white}X#1#{} multi en vez',
                    'de {X:mult,C:white}X1.5{} multi'
                },
                unlock={
                    'Ten al menos {C:attention}#1#',
                    '{E:1,C:attention}#2#{} en',
                    'tu baraja',
                },
            },
            j_losted_triquetra = {
                name = 'Triqueta',
                text = {
                    'Las cartas que forman parte de una',
                    '{C:attention}Tercia Perfecta{} en la mano jugada,',
                    'se {C:attention}reactivan{} #1# veces adicionales',
                }
            },
            j_losted_the_passage = {
                name = 'El Pasaje',
                text = {
                    'Al {C:attention}vender{} esta carta,',
                    'la apuesta inicial cambia en {C:attention}1{}.',
                    '{C:green}50%{} de prob. de {C:blue}aumentar{}',
                    '{C:green}50%{} de prob. de {C:red}disminuir{}'
                },
                unlock = {
                    'Usa los vales',
                    '{C:attention}#1#{} y {C:attention}#2#{}',
                    'en una sola partida'
                }
            },
            j_losted_slot_machine = {
                name = 'Tragamonedas',
                text = {
                    'Cada {C:attention}7{} que puntúa tiene una prob. de',
                    '{C:green}#1# en 2{} de ganar {C:mult}+#2#{} multi,',
                    '{C:green}#1# en 4{} de ganar {C:gold}$#3#{},',
                    '{C:green}#1# en 8{} de ganar {X:mult,C:white}X#4#{} multi',
                    '{C:green}#1# en #5#{} de perder todo el {C:money}${}',
                },
                unlock = {
                    'Juega una tercia que contenga',
                    '3 {C:attention,E:1}Cartas de la Suerte{}',
                    'de categoría {C:attention,E:1}7{}',
                },
            },
            j_losted_strawberry_milkshake = {
                name = 'Batido de Fresa',
                text = {
                    '{X:chips,C:white}X#1#{} fichas,',
                    'pierde {X:chips,C:white}X#2#{} fichas',
                    'por ronda jugada.',
                    '{C:dark_edition}¡Mmm, qué cremoso!{}'
                }
            },
            j_losted_schrodinger = {
                name = 'Gato de Schrödinger',
                text = {
                    'Probabilidad de {C:green}#1# en #2#{}',
                    'de dar {C:chips}+#3#{} fichas',
                }
            },
            j_losted_mitosis = {
                name = 'Mitosis',
                text = {
                    'Si la {C:attention}primera mano{} de la ronda se compone',
                    'solo de cartas de la {C:attention}misma categoría{},',
                    'todas las cartas que puntúan copian las',
                    '{C:dark_edition}mejoras{} de la carta más a la derecha.',
                },
            },
            j_losted_last_resort = {
                name = 'Último Recurso',
                text = {
                    'Si el {C:attention}primer descarte{} de la ronda',
                    'tiene exactamente {C:attention}2 {}cartas, dispárales',
                    'y destrúyelas'
                }
            },
            j_losted_magician = {
                name = 'Comodín Mago',
                text = {
                    'Al usar una carta de {C:purple}Tarot{},',
                    'tiene una prob. de {C:green}#1# en #2#{} de',
                    'crear una carta {C:spectral}Espectral{}',
                    '{C:inactive}(Debe haber espacio){}'
                },
            },
            j_losted_disruption = {
                name = 'Disrupción',
                text = {
                    '{X:mult,C:white}X1{} multi,',
                    'gana {X:mult,C:white}X#1#{} multi por cada',
                    'vez que la {C:attention}mano de póker{}',
                    'se ha jugado en esta partida',
                }
            },
            j_losted_passion_fruit = {
                name = 'Maracuyá',
                text = {
                    'Gana {C:chips}+#2#{} fichas',
                    'por mano jugada',
                    '{C:green}#3# en #4#{} prob. de ser',
                    'destruido al final de la ronda',
                    '{C:inactive}(Actual: {C:chips}+#1#{}{C:inactive} fichas)'
                }
            },
            j_losted_passion_juice = {
                name = 'Jugo de Maracuyá',
                text = {
                    'Gana {X:chips,C:white}X#2#{} fichas',
                    'por mano jugada',
                    '{C:green}#3# en #4#{} prob. de ser',
                    'destruido al final de la ronda',
                    '{C:inactive}(Actual: {X:chips,C:white}X#1#{}{C:inactive} fichas)'
                }
            },
            j_losted_statue = {
                name = 'Estatua de Piedra',
                text = {
                    'Las {C:attention}Cartas de Piedra{} que puntúan',
                    'dan {X:chips,C:white}X#1#{} fichas'
                },
                unlock = {
                    'Juega una mano que contenga',
                    '5 {C:attention,E:1}Cartas de Piedra{}',
                }
            },
            j_losted_rule_book = {
                name = 'Libro de Reglas',
                text = {
                    'La {C:attention}última carta{} de la mano que puntúa',
                    'da {X:mult,C:white}X#1#{} multi',
                }
            },
            j_losted_toc_toc = {
                name = 'Toc Toc',
                text = {
                    'Al jugar una mano, gana',
                    '{C:money}${} igual al número de',
                    '{C:attention}descartes restantes{}',
                }
            },
            j_losted_advantage_addiction = {
                name = 'Adicción a la Ventaja',
                text = {
                    'Reactiva cartas con',
                    '{C:dark_edition}mejoras{}',
                    '#1#{} vez adicional',
                },
                unlock={
                    'Ten al menos {E:1,C:attention}#1#',
                    'cartas con {C:dark_edition}mejoras{}',
                    'en tu baraja',
                },
            },
            j_losted_jersey_10 = {
                name = 'Camiseta 10',
                text = {
                    'Si la mano jugada se compone de un solo {C:attention}10{},',
                    'le aplica una {C:dark_edition}edición{} aleatoria',
                }
            },
            j_losted_harlequin = {
                name = 'Arlequín',
                text = {
                    '{C:chips}+#1#{} fichas',
                }
            },
            j_losted_totem = {
                name = 'Tótem',
                text = {
                    'Tiene una prob. de {C:green}#1# en #2#{}',
                    'de {C:attention}duplicar{} cada ganancia de {C:money}${}',
                    },
                    unlock = {
                    'Completa el desafío',
                    '{E:1,C:attention}En Reserva'
                }
                },
            j_losted_duke = {
                name = 'Duque',
                text = {
                    'Reactiva la {C:attention}primera{} carta',
                    'jugada usada para puntuar',
                    '{C:attention}1{} vez adicional',
                    'por cada {C:attention}Jota{} en la mano'
                },
            },
            j_losted_mysterious = {
                name = '???',
                text = {
                    '{C:inactive}(#1#/#2#)',
                    '{C:inactive,s:0.7}Manos'
                },
                unlock = {
                    'Completa el desafío',
                    '{E:1,C:attention}Maratón'
                }
            },
            j_losted_rubiks_cube = {
                name = 'Cubo Mágico',
                text = {
                    'Cada {C:attention}6{} jugado da {C:mult}+#2#{} multi,',
                    'Cada {C:attention}9{} jugado da {C:chips}+#1#{} fichas',
                }
            },
            j_losted_demonic_joker = {
                name = 'Comodín Demoníaco',
                text = {
                    'Cada {C:attention}6{} jugado da {C:gold}$#1#{} de oro',
                    'Si la mano jugada contiene una {C:attention}Tercia{},',
                    'el oro por carta se {C:attention}duplica{}',
                    'Tiene una prob. de {C:green}#2# en #3#{} de no activarse',
                },
                unlock = {
                    'Juega una tercia que contenga',
                    '3 {C:attention,E:1}Cartas de Oro{}',
                    'de categoría {C:attention,E:1}6{}',
                },
            },
            j_losted_moist_cake = {
                name = 'Pastel Húmedo',
                text = {
                    'Las cartas jugadas con',
                    'palo de {V:1}#2#{} dan',
                    '{C:mult}+#1#{} multi al puntuar',
                    '{s:0.8}el palo cambia al final de la ronda',
                }
            },
            j_losted_rocker={
                name = 'Rockero',
                text = {
                    'Las {C:attention}Cartas de Piedra{} jugadas',
                    'dan {C:mult}+#1#{} multi al puntuar'
                }
            },
            j_losted_piggy_bank = {
                name = 'Alcancía',
                text = {
                    'Gana {C:chips}+#2#{} fichas por cada',
                    '{C:money}$1{} de interés recibido al',
                    'final de la ronda.',
                    '{C:inactive}(Actual: {C:chips}+#1#{C:inactive} fichas)'
                }
            },
            j_losted_hematophilia = {
                name = 'Hemofilia',
                text = {
                    'Gana {C:mult}+#2#{} multi permanentemente',
                    'por cada Carta o Comodín {C:attention}destruido{}',
                    '{C:inactive}(Actual: {C:mult}+#1#{}{C:inactive} multi)'
                }
            },
            j_losted_chicken_cleide = {
                name = 'Gallina Cleide',
                text = {
                    'Cuando se selecciona una {C:attention}Ciega Jefe{},',
                    'pone un {C:attention}Huevo{} {C:dark_edition}Negativo{}. Máx. {C:attention}#1#{} huevos',
                    '{C:inactive}(Actual: {C:attention}#2#{C:inactive}/#1#)',
                    '{C:inactive,s:0.9}(Se destruye después de poner los huevos)'
                },
                unlock = {
                    'Completa el desafío',
                    '{E:1,C:attention}El Omelet'
                }
            },
            j_losted_seal_stamp = {
                name = 'Sello',
                text = {
                    'Al derrotar a una {C:attention}Ciega Jefe{},',
                    'crea un {C:spectral}Espectro de Sello{} al azar',
                    '{C:inactive}(Debe haber espacio){}'
                }
            },
            j_losted_pot_of_greed = {
                name = 'Olla de la Codicia',
                text = {
                    'Al jugar o descartar,',
                    'roba {C:attention}1{} carta extra',
                },
                unlock={
                    'Alcanza el',
                    'Nivel de Apuesta {E:1,C:attention}#1#',
                },
            },
            j_losted_sarcophagus = {
                name = 'Sarcófago',
                text = {
                    'Al derrotar a una {C:attention}Ciega Jefe{},',
                    'crea un comodín {C:dark_edition}Negativo{} aleatorio',
                    '{C:uncommon}inusual{} o {C:rare}raro{}',
                    'y luego se {C:attention}destruye{}'
                },
                unlock = {
                    'Gana una partida con',
                    'al menos 2 comodines {C:dark_edition}negativos'
                }
            },
            j_losted_cosmos = {
                name = 'Cosmos',
                text = {
                    'Las cartas de {C:planet}Planeta{} en',
                    'tu área de {C:attention}consumibles{}',
                    'dan {X:mult,C:white}X#1#{} multi',
                },
                unlock={
                    'Compra un total de',
                    '{C:attention}#1#{} cartas de {C:planet}Planeta{}',
                    'en la tienda',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_error = {
                name = 'Error',
                text = {
                    'Si la {C:attention}primera mano{} de la ronda',
                    'tiene como máximo {C:attention}3{} cartas,',
                    'aleatoriza el {C:attention}palo{}, la {C:attention}categoría{}',
                    'y las {C:dark_edition}mejoras{}',
                    'de las {C:attention}cartas jugadas{}',
                },
                unlock={
                    'Derrota a una ciega jefe',
                    'con 1 {E:1,C:attention}#1#',
                },
            },
            j_losted_miner = {
                name = 'Comodín Minero',
                text = {
                    'Prob. de {C:green}#1# en #2#{} de crear',
                    'una carta {C:spectral}La Codicia{}',
                    'cuando una mano puntúa',
                    '{C:inactive}(Debe haber espacio){}'
                }
            },
            j_losted_toaster = {
                name = 'Tostadora',
                text = {
                    'Después de puntuar un {C:attention}Par{},',
                    'deja las cartas {C:attention}tostadas{}',
                    'y las devuelve a la baraja'
                }
            },
            j_losted_baker = {
                name = 'Comodín Panadero',
                text = {
                    'Añade una carta {C:attention}Tostada{}',
                    'a tu baraja cuando',
                    'se selecciona la {C:attention}Ciega{}',
                }
            },
            j_losted_spirit_box = {
                name = 'Caja Espiritual',
                text = {
                    'Gana {X:mult,C:white}X#1#{} multi',
                    'por cada carta {C:purple}Espectral{} usada',
                    '{C:inactive}(Actual: {X:mult,C:white}X#2#{}{C:inactive} multi)',
                }
            },
            j_losted_precious = {
                name = 'Comodín Precioso',
                text = {
                    'Este comodín gana {C:mult}+#1#{} multi',
                    'cada vez que una {C:attention}Carta de Diamante{}',
                    'vuelve a puntuar',
                    '{C:inactive}(Actual: {C:mult}+#2#{}{C:inactive} multi)',
                }
            },
            j_losted_laser_microjet = {
                name = 'Láser MicroJet',
                text = {
                    'Tiene una prob. de {C:green}#1# en #2#{}',
                    'de volver a puntuar {C:attention}Cartas de Diamante{}',
                    'ya puntuadas de nuevo',
                },
                unlock = {
                    'Juega una mano que contenga',
                    '5 {C:attention,E:1}Cartas de Diamante{}',
                }
            },
            j_losted_step_by_step = {
                name = 'Paso a Paso',
                text = {
                    'Este comodín gana {C:mult}+#1#{} multi',
                    'si la mano jugada contiene',
                    'una {C:attention}#2#',
                    '{C:inactive}(Actual: {C:mult}+#3#{C:inactive} multi)',
                }
            },
            j_losted_jimboy = {
                name = 'Jimboy',
                text = {
                    'Al {C:attention}descartar{}, cambia entre',
                    'dos juegos diferentes:',
                    'Actualmente: {V:1}#3# (+#5# #4#){}',
                }
            },
            j_losted_red_joker = {
                name='Comodín Rojo',
                text={
                    '{C:mult}+#1#{} multi por cada #2# cartas',
                    'restantes en la {C:attention}baraja',
                    '{C:inactive}(Actual: {C:mult}+#3#{C:inactive} multi)',
                },
            },
            j_losted_bank = {
                name='Banco',
                text={
                    'Este comodín gana {X:mult,C:white} X#1# {} multi',
                    'por cada {C:money}$#2#{} que tengas',
                    '{C:inactive}(Actual: {X:mult,C:white}X#3#{C:inactive} multi)',
                },
            },
            j_losted_big_bang = {
                name='Big Bang',
                text={
                    'Crea una carta de {C:planet}Planeta{}',
                    'cuando se selecciona la {C:attention}Ciega{}',
                    '{C:inactive}(Debe haber espacio)',
                },
            },
            j_losted_artist={
                name='Comodín Artista',
                text={
                    'Si la mano jugada contiene un {C:attention}Color{},',
                    'cada carta tiene una prob. de {C:green}#1# en #2#{}',
                    'de convertirse en una {C:attention}Carta de Palo Versátil{}',
                },
                unlock = {
                    'Juega una mano que contenga',
                    '5 {C:attention,E:1}Cartas de Palo Versátil{}',
                }
            },
            j_losted_shiny_gloves = {
                name = 'Guantes Brillantes',
                text = {
                    'Este comodín gana {C:mult}+#1#{} multi',
                    'si la mano jugada contiene',
                    'un {C:attention}#2#',
                    '{C:inactive}(Actual: {C:mult}+#3#{C:inactive} multi)',
                }
            },
            j_losted_fair_price = {
                name = 'Precio Justo',
                text = {
                    '{X:mult,C:white} X#1# {} multi,',
                    'paga {C:money}$#2#{} al',
                    'final de la ronda',
                    '{C:inactive}Se destruye si no puedes pagar{}',
                }
            },
            j_losted_paid_vacation = {
                name = 'Vacaciones Pagadas',
                text = {
                    'Gana {C:money}$#1#{} si',
                    'la ciega es derrotada',
                    'usando {C:attention}todas las manos{}'
                }
            },
            j_losted_joke_book = {
                name = 'Libro de Chistes',
                text = {
                    'Gana {X:mult,C:white}X#1#{} multi si la',
                    'mano jugada es {C:attention}#3#{},',
                    'Se reinicia si juegas otra {C:attention}mano de póker{}.',
                    'La {C:attention}mano de póker{} cambia en cada partida',
                    '{C:inactive}(Actual: {X:mult,C:white}X#2#{C:inactive} multi)',
                }
            },
            j_losted_vandalism = {
                name = 'Vandalismo',
                text = {
                    'Reduce la puntuación de todas las',
                    '{C:attention}Ciegas{} en un {C:attention}#1#%{}',
                    'cuando se seleccionan'
                }
            },
            j_losted_artwork = {
                name = 'Obra de Arte',
                text = {
                    'Gana {C:money}$#1#{} en',
                    '{C:attention}valor de venta{} al',
                    'final de la ronda',
                    '{C:green}#2# en #3#{} prob. de ser',
                    'destruido al final de la ronda',
                }
            },
            j_losted_silly_hat = {
                name = 'Sombrero Gracioso',
                text = {
                    'Este comodín gana {C:mult}+#1#{} multi',
                    'si la mano jugada contiene',
                    'una {C:attention}#2#',
                    '{C:inactive}(Actual: {C:mult}+#3#{C:inactive} multi)',
                }
            },
            j_losted_surprise_box = {
                name = 'Cajita Sorpresa',
                text = {
                    '' -- should be empty
                }
            },
            j_losted_critic_failure = {
                name = 'Fallo Crítico',
                text = {
                    '{C:attention}Divide{} todas las',
                    '{C:green,E:1,S:1.1}probabilidades{} por {C:green,E:1,S:1.1}4{}',
                    '{C:inactive}(ej.: {C:green}1 de 3{C:inactive} -> {C:green}0.25 de 3{C:inactive})',
                },
                unlock={
                    'En una mano,',
                    'gana al menos',
                    '{E:1,C:attention}#1#{} fichas',
                },

            },
            j_losted_limited_edition = {
                name = 'Edición Limitada',
                text = {
                    'Gana {X:mult,C:white}X#1#{} multi por cada',
                    '{C:money}$1{} de valor de venta',
                    'al vender otros comodines.',
                    '{C:inactive}(Actual: {X:mult,C:white}X#2#{C:inactive} multi)',
                },
                unlock={
                    'Vende un total de',
                    '{C:attention,E:1}#1#{} cartas de comodín',
                    '{C:inactive}(#2#)',
                },

            },
            j_losted_contract = {
                name = 'Contrato',
                text = {
                    'Mejora el nivel de {C:attention}#1#{}',
                    'en 2 al final de la ronda',
                    'Las otras {C:attention}manos de póker{} son debilitadas',
                    'No se puede vender hasta que expire',
                    'Expira en {C:attention}#2#{} rondas'
                },
            },
            j_losted_hoarding_joker = {
                name = 'Comodín Acaparador',
                text = {
                    '{C:dark_edition}+#1#{} ranura(s) de consumible',
                }
            },
            j_losted_glutton = {
                name = 'Comodín Acaparador',
                text = {
                    '{C:dark_edition}+#1#{} ranura(s) de consumible',
                }
            },
            j_losted_big_joker = {
                name = 'Comodín Grande',
                text = {
                    'Este comodín gana',
                    '{C:mult}+#2#{} multi cuando cada',
                    '{C:attention}10{} jugado puntúa',
                    '{C:inactive}(Actual: {C:mult}+#1#{C:inactive} multi)',
                }
            },
            j_losted_doodle = {
                name = 'Garabato',
                text = {
                    'Copia la habilidad',
                    'del {C:attention}Comodín{} a la izquierda',
                    '{C:green}#1# en #2#{} prob. de ser',
                    'destruido al final de la ronda',
                }
            },
            j_losted_booster = {
                name = 'Paquetito',
                text = {
                    'Gana {C:chips}+#2#{} fichas cuando cualquier',
                    '{C:attention}Paquete de Refuerzo{} se abre',
                    '{C:inactive}(Actual: {C:chips}+#1#{}{C:inactive} fichas)',
                }
            },
            j_losted_turntable = {
                name = 'Tocadiscos',
                text = {
                    'Las cartas jugadas que tienen',
                    'la misma {C:attention}categoría y palo{} que una',
                    'carta ya puntuada en esta ronda',
                    'dan {C:mult}+#1#{} multi'
                },
                unlock = {
                    'Juega un',
                    '{E:1,C:attention}Cinco de Color'
                }
            },
            j_losted_replay = {
                name = 'Repetición',
                text = {
                    'Reactiva la {C:attention}última{} carta',
                    'jugada usada para puntuar',
                    '{C:attention}#1#{} veces adicionales',
                }
            },
            j_losted_clown_car = {
                name = 'Auto de Payasos',
                text = {
                    'Cuando se selecciona una {C:attention}Ciega{},',
                    'crea {C:uncommon}#1# Comodín Inusual{}.',
                    'Crea hasta {C:attention}#2# comodines.',
                    '{C:inactive}({C:attention}#3#{}{C:inactive}/#2#){}',
                    '{C:inactive}(Debe haber espacio)',
                },
                unlock = {
                    'Completa el desafío',
                    '{E:1,C:attention}Solo Comodines'
                }
            },
            j_losted_the_joker = {
                name = 'El Comodín',
                text = {
                    'Cada {C:attention}#2#{} jugado da',
                    '{X:mult,C:white}X#1#{} multi al puntuar',
                    '{C:inactive}{s:0.7}Elige la categoría más común en la baraja{}{}',
                },
                unlock = {
                    'Cuando el {E:1,C:dark_edition}???{} complete',
                    'su acertijo, {C:dark_edition}él{} se revelará',
                }
            },
            j_losted_obsidian = {
                name = 'Obsidiana',
                text = {
                    'Las cartas jugadas con',
                    'palo de {V:1}#5#{} dan',
                    '{C:chips}+#1#{} fichas, {C:mult}+#2#{} multi, {X:mult,C:white}X#3#{} multi',
                    'y {C:gold}$#4#{} al puntuar',
                    '{s:0.7}el palo cambia al final de la ronda{}'
                },
                unlock = {
                    'Intercambia las {C:dark_edition}cuatro piedras{}',
                    'para despertarla',
                }
            },
            j_losted_jimbo_hood = {
                name = 'Jimbo Hood',
                text = {
                    'Al final de la puntuación,',
                    'equilibra {C:mult}multi{} y {C:chips}fichas{}',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_roland = {
                name = 'Roland',
                text = {
                    'Cuando se selecciona una {C:attention}Ciega{},',
                    'crea una carta {C:spectral}Espectral{}',
                    '{C:dark_edition}Negativa{} aleatoria',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_patati_patata = {
                name = '#1#',
                text = {
                    'Las cartas jugadas con categoría {C:attention}#2#{} dan',
                    '{B:1,C:white}X#3#{} #4# al puntuar', 
                    '{C:inactive}#5#', 
                    '{C:faded}Cambia a {V:2}#6#{} al jugar una mano{}' 
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_invisible = {
                name = '¡Hola, mundo!',
                text = {
                    '{C:purple,E:1,S:1.1}Soy un secreto <3{}'
                }
            },
        },
        Spectral={
            c_losted_mystery_soul = {
                name = '¿El Alma?',
                text = {
                    'Crea a {C:dark_edition}El Comodín{}',
                    '{C:inactive}¿Qué es esto?{}'
                }
            },
            c_losted_greed = {
                name = 'La Codicia',
                text = {
                    'Mejora {C:attention}2{}',
                    'cartas seleccionadas a',
                    '{C:attention}Cartas de Diamante{}',
                }
            },
            c_losted_aura = {
                name='Aura',
                text={
                    'Añade el efecto {C:dark_edition}Laminado{}, {C:dark_edition}Holográfico{},',
                    '{C:dark_edition}Polícromo{} o {C:dark_edition}Cuántico{}',
                    'a {C:attention}1{} carta seleccionada en tu mano',
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
                name='Ectoplasma',
                text={
                    'Añade {C:dark_edition}Negativo{} a',
                    'un {C:attention}Comodín{} aleatorio,',
                    '{C:red}-#1#{} de tamaño de mano',
                },
            },
        },
        Stake = {
            stake_losted_diamond = {
                name = 'Apuesta de Diamante',
                text = {
                    'Aumenta la {C:attention}Apuesta final{} a {C:attention}10{}',
                    '{s:0.8}Aplica todas las apuestas anteriores',
                }
            },
        },
        Tag = {
            tag_losted_quantum = {
                name='Etiqueta Cuántica',
                text={
                    'El próximo comodín de la tienda de',
                    'edición base es gratis',
                    'y se vuelve {C:dark_edition}Cuántico{}',
                },
            },
            tag_losted_plasma = {
                name='Etiqueta de Plasma',
                text={
                    'El próximo comodín de la tienda de',
                    'edición base es gratis',
                    'y se vuelve {C:dark_edition}Plasma{}',
                },
            },
        },
        Tarot = {
            c_losted_abyss={
                name = 'El Abismo',
                text = {
                    'Disminuye la categoría de {C:attention}#1#{} carta',
                    'seleccionada en {C:attention}1{}',
                }
            },
            c_losted_lily = {
                name = 'Lirio',
                text = {
                    'Mejora {C:attention}1{} carta',
                    'seleccionada a',
                    '{C:attention}Carta Estelar{}',
                }
            },
            c_losted_provider = {
                name = 'El Proveedor',
                text = {
                    'Mejora {C:attention}#1#{} carta',
                    'seleccionada a',
                    '{C:attention}Carta Tostada{}',
                }
            },
            c_losted_wheel_of_fortune = {
                name='La Rueda de la Fortuna',
                text={
                    'Prob. de {C:green}#1# en #2#{} de añadir',
                    'edición {C:dark_edition}Laminada{}, {C:dark_edition}Holográfica{},',
                    '{C:dark_edition}Polícroma{}, {C:dark_edition}Plasma{} o {C:dark_edition}Cuántica{}',
                    'a un {C:attention}Comodín{} aleatorio',
                },
            },
        },
        Voucher = {
            v_losted_negative_bias = {
                name = 'Sesgo Negativo',
                text = {
                    'Las cartas {C:dark_edition}Negativas{} aparecen',
                    '{C:attention}#1#X{} más frecuentemente',
                    'en la tienda',
                },
            },
            v_losted_negative_magnet = {
                name = 'Imán Negativo',
                text = {
                    'Las cartas {C:dark_edition}Negativas{} aparecen',
                    '{C:attention}#1#X{} más frecuentemente',
                    'en la tienda',
                },
                unlock={
                    'Ten al menos {C:attention}#1#',
                    'cartas de {C:attention}Comodín{} con',
                    'edición {C:dark_edition}Negativa{}',
                },
            },
            v_losted_stapler = {
                name = 'Grapadora',
                text = {
                    'Los comodines aparecen',
                    '{C:attention}2X{} más frecuentemente',
                    'en la tienda',
                },
            },
            v_losted_staple_gun = {
                name = 'Pistola de Grapas',
                text = {
                    'Reduce la frecuencia de aparición',
                    'de los comodines {C:common}Comunes{}',
                },
                unlock={
                    'Compra un total de',
                    '{E:1,C:attention}#1# {C:blue}Comodines{}',
                    'en la tienda',
                    '{C:inactive}(#2#)',
                },

            },
            v_losted_extra_bag = {
                name = 'Riñonera Extra',
                text = {
                    '{C:attention}+1 Paquete de Refuerzo{}',
                    'disponible por {C:attention}tienda{}'
                },
            },
            v_losted_booster_bag = {
                name = 'Riñonera de Refuerzo',
                text = {
                    '{C:attention}+2 Cartas Extra{} para',
                    'elegir en Paquetes de Refuerzo',
                },
                unlock = {
                    'Abre {E:1,C:attention}#1#',
                    'Paquetes de Refuerzo',
                    '{C:inactive}(#2#)'
                }
            },
            v_hone={
                name='Perfeccionamiento',
                text={
                    'Las cartas {C:dark_edition}Laminadas{}, {C:dark_edition}Holográficas{},',
                    '{C:dark_edition}Polícromas{}, {C:dark_edition}Cuánticas{} y {C:dark_edition}Plasma{}',
                    'aparecen {C:attention}#1#X{} más frecuentemente',
                },
            },
            v_glow_up={
                name='Resplandor',
                text={
                    'Las cartas {C:dark_edition}Laminadas{}, {C:dark_edition}Holográficas{},',
                    '{C:dark_edition}Polícromas{}, {C:dark_edition}Cuánticas{} y {C:dark_edition}Plasma{}',
                    'aparecen {C:attention}#1#X{} más frecuentemente',
                },
                unlock={
                    'Ten al menos {C:attention}#1#',
                    'cartas de {C:attention}Comodín{} con',
                    'edición {C:dark_edition}Laminada{}, {C:dark_edition}Holográfica{} o',
                    '{C:dark_edition}Polícroma{}',
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_losted_magic_trick = 'Un Truco de Magia',
            c_losted_medieval_era = 'Era Medieval',
            c_losted_wall = 'La Muralla',
            c_losted_breakfast = 'Desayuno',
            c_losted_new_times = 'Nuevos Tiempos',
            c_losted_only_jokers = 'Solo Comodines',
            c_losted_autopilot = 'Piloto Automático',
            c_losted_mvp = 'M.V.P',
            c_losted_running_on_fumes = 'En Reserva',
            c_losted_marathon = 'Maratón',
        },
        dictionary = {
            k_negative_ex = '¡Negativo!',
            k_blind_selected_ex = '¡Bono de Ciega!',
            k_ante_increased_ex = '¡Apuesta aumentada!',
            k_ante_decreased_ex = '¡Apuesta reducida!',
            k_schrodinger_ex = 'Muerto',
            k_suit_changed_ex = '¡Palo Cambiado!',
            k_obsidian_awakened_ex = 'OBSIDIANA DESPIERTA',
            toast_eaten = 'Comido',
            k_mod_c = 'JUEGO 1',
            k_mod_m = 'JUEGO 2',
            k_chips = 'Fichas',
            k_losted_enhancements_removed = '¡Mejoras Eliminadas!',
            k_vandalism_ex = '¡Vandalizado!',
            k_plus_toast = '+1 Tostada',
            k_even = 'par',
            k_odd = 'impar',
            k_nothing_ex = 'Nada para Beta',

        k_losted_config_game = 'Juego',
        k_losted_config_audio_visual = 'Audio y visuales',
        k_losted_music_label = 'Banda Sonora',
            k_losted_music_ost1 = 'Lost Edition OST por Gulira',
            k_losted_music_ost2 = 'Balatro OST por LouisF',

            k_losted_themes_tab = 'Temas',
            k_losted_theme_label = 'Tema Seleccionado',
            k_losted_apply_button = 'Aplicar Tema',
            k_losted_loading_themes = 'Cargando temas...',

            k_fast_forward_label = 'Avance Rápido',
            k_status_text_label = 'Pop-ups de Texto',

            k_fast_forward_off = 'Apagado',
            k_fast_forward_planets = 'Solo en Planetas',
            k_fast_forward_on = 'Todo (Rápido)',
            k_status_text_all = 'Todos',
            k_status_text_less_annoying = 'Menos Molesto',
            k_status_text_no_misc = 'Ocultar Extras',
            k_status_text_none = 'Ninguno',
        },
        v_dictionary = {
            a_xchips = 'X#1# Fichas',
            a_powmult = '^#1# Multi',
        },
        v_text = {
            ch_c_boss_rush = { 'Todas las Ciegas son {C:attention}Ciegas Jefe{}' },
            ch_c_no_tags = { 'Omitir Ciegas está {C:attention}desactivado{}' },
            ch_c_new_times = { 'Los comodines que no pertenecen a la {C:purple}Lost Edition{} están prohibidos' },
            ch_c_only_jokers = { 'Solo se pueden encontrar comodines en la {C:attention}tienda{} y en los {C:attention}paquetes{}' },
            ch_c_force_selection = { 'Obliga a que 1 carta esté siempre seleccionada' },
            ch_c_marathon = { 'La apuesta final se redirige a la apuesta {C:attention}16{}' }
        },
        labels = {
            losted_quantum = 'Cuántico',
            losted_plasma = 'Plasma',
            losted_evolutionary = 'Evolutivo',
            losted_chaotic = 'Caótico',
            losted_medieval = 'Medieval',
        },
        tutorial = {
            losted_intro_1 = {
                '¡Bienvenido a la {C:purple}Lost Edition{}!'
            },
            losted_intro_2 = {
                'Poca gente llega hasta aquí, ¿sabías?',
            },
            losted_intro_3 = {
                'Tómate tu tiempo, explora sin prisa.',
            },
            losted_intro_4 = {
                'Quizás encuentres algo {C:attention}realmente interesante{} por aquí...',
            }
        }
    },
}
