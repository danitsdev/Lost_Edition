return {
    descriptions={
        Back = {
            b_losted_evolutionary = {
                name = 'Baralho Evolutivo',
                text = {
                    'A cada {C:attention}aposta par{} maior que 3,',
                    'ganha {C:attention}+1{} de tamanho de mão',
                },
                unlock={
                    'Aumente o tamanho da mão',
                    'para {C:attention}#1#{} cartas',
                },

            },
            b_losted_fortune = {
                name = 'Baralho da Fortuna',
                text = {
                    'Dobra {C:attention}todas as',
                    '{C:green,E:1,S:1.1}probabilidades',
                    '{C:inactive}(ex: {C:green}1 em 3{C:inactive} -> {C:green}2 em 3{C:inactive})',
                },
                unlock = {
                    'Vença uma tentativa com',
                    '{C:attention}#1#{}',
                    'em qualquer dificuldade',
                }
            },
            b_losted_chaotic = {
                name = 'Baralho Caótico',
                text = {
                    'Todas as cartas são aleatórias',
                    'limitadas a {C:attention}6 classes{} e {C:attention}2 naipes{}',
                    'Comece a tentativa com {C:attention,T:v_overstock_norm}#1#{}',
                    '{C:red}X#2#{} de tamanho base do Blind',
                },
                unlock = {
                    'Vença uma tentativa com',
                    '{C:attention}#1#{}',
                    'em qualquer dificuldade',
                }
            },
            b_losted_medieval = {
                name = 'Baralho Medieval',
                text = {
                    '{C:attention}+#1#{} Espaço de curinga',
                    'A partir da aposta 2',
                    '{C:attention}Todos{} os Blinds são {C:attention}Blinds de Chefe{}',
                },
                unlock = {
                    'Complete o desafio',
                    '{E:1,C:attention}Era Medieval'
                }
            },
        },
        Sleeve = {
            sleeve_losted_evolutionary = {
                name = 'Manga Evolutiva',
                text = {
                    'A cada {C:attention}aposta par{} maior que 3,',
                    'ganha {C:attention}+1{} de tamanho de mão',
                },
            },
            sleeve_losted_fortune = {
                name = 'Manga da Fortuna',
                text = {
                    'Dobra {C:attention}todas as',
                    '{C:green,E:1,S:1.1}probabilidades',
                    '{C:inactive}(ex: {C:green}1 em 3{C:inactive} -> {C:green}2 em 3{C:inactive})',
                },
            },
            sleeve_losted_chaotic = {
                name = 'Manga Caótica',
                text = {
                    'Todas as cartas são aleatórias',
                    'limitadas a {C:attention}6 classes{} e {C:attention}2 naipes{}',
                    'Comece a tentativa com {C:attention,T:v_overstock_norm}#1#{}',
                    '{C:red}X#2#{} de tamanho base do Blind',
                },
            },
            sleeve_losted_medieval = {
                name = 'Manga Medieval',
                text = {
                    '{C:attention}+#1#{} Espaço de curinga',
                    'A partir da aposta 2',
                    '{C:attention}Todos{} os Blinds são {C:attention}Blinds de Chefe{}',
                },
            },
        },
        Blind = {
            bl_losted_all_ones = {
                name='Opa! Tudo 1',
                text={
                    'Divide por 2 {C:attention}todas as',
                    '{C:green,E:1,S:1.1}probabilidades',
                    '{C:inactive}(ex: {C:green}1 em 2{C:inactive} -> {C:green}0.5 em 2{C:inactive})',
                },
            },
            bl_losted_privilege = {
                name = 'Privilégio',
                text = {
                    '#1# em 8 cartas',
                    'recebem desvantagem',
                }
            },
            bl_losted_vampiric = {
                name = 'Vampírico',
                text = {
                    'Remove {C:attention}Aprimoramentos{}',
                    'das {C:attention}cartas pontuadas{}',
                    '{C:inactive}(Devolve ao ser derrotado)'
                }
            },
            bl_losted_inversion = {
                name = 'Inversão',
                text = {
                    'Inverte o número de {C:attention}Mãos',
                    'e de {C:attention}Descartes',
                }
            },
            bl_losted_amnesia = {
                name = 'A Amnésia',
                text = {
                    'Reseta #1#',
                    'para o nível 1,',
                    'temporariamente',
                }
            },
            bl_losted_labyrinth = {
                name = 'O Labirinto',
                text = {
                    '{C:attention}Mão de pôquer{} aleatória',
                    'recebe desvantagem.',
                    'Muda a cada jogada',
                },
            },
            bl_losted_watchdog = {
                name = 'O Fiscal',
                text = {
                    'Pula a próxima loja',
                }
            },
            bl_losted_balance = {
                name = 'A Balança',
                text = {
                    'Cartas com classe {C:attention}par{}',
                    'recebem desvantagem'
                }
            },
            bl_losted_solitude = {
                name = 'Solitude',
                text = {
                    'Cartas com classe {C:attention}ímpar{}',
                    'recebem desvantagem'
                }
            },
            bl_losted_annihilation = {
                name = 'Aniquilação',
                text = {
                    'Perde uma {C:attention}marca{} aleatória',
                    'a cada mão jogada',
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
                name = 'Quântico',
                text = {
                    'Repete os {C:blue}efeitos{}',
                    'desta carta',
                    '{C:blue}1{} vez adicional',
                },
            },
        },
        Enhanced = {
            m_losted_diamond = {
                name = 'Carta de Diamante',
                text = {
                    'Repontua se jogada {C:attention}adjacente{} a',
                    'outra {C:attention}Carta de Diamante{} pontuada',
                    '{X:chips,C:white}X#1#{} Fichas e {X:mult,C:white}X#2#{} Multi',
                    'enquanto esta carta permanece na mão',
                },
            },
            m_losted_stellar = {
                name = 'Carta Estelar',
                text = {
                    'Ganha {C:chips}+#1#{} Fichas permanentes',
                    'quando pontuada.',
                },
            },
            m_losted_toast = {
                name = 'Carta Torrada',
                text = {
                    '{X:mult,C:white}X#1#{} Multi',
                    'quando pontuada,',
                    'é {C:attention}consumida{} após o uso',
                },
            },
            m_wild={
                name='Carta Naipe Curinga',
                text={
                    'Pode ser usada',
                    'como qualquer naipe.',
                    'Não recebe desvantagem',
                    'causadas em Naipes'
                },
            },

        },
        Other = {
			losted_diamond_sticker = {
                name = 'Adesivo Diamantado',
                text= {
                    'Usou este Curinga',
                    'para vencer na dificuldade',
                    '{C:attention}Aposta Diamantada{}'
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
                name = '{C:attention}Trinca Perfeita{}',
                text = {
                    'É composta por {C:attention}exatamente{}',
                    '{C:attention}3{} cartas da {C:attention}mesma classe{},'
                }
            },
            improvements_of_card = {
                name = '{C:dark_edition}Melhorias{}',
                text = {
                    'São atributos especiais',
                    'que modificam uma carta:',
                    '{C:dark_edition}Aprimoramento{}, {C:dark_edition}Selo{} e {C:dark_edition}Edição{}.',
                }
            }
        },
        Joker={
            j_losted_jimball={
                name = 'Jimbolinha',
                text = {
                    'Quando um {C:attention}Blind{} é selecionado,',
                    'ganha permanentemente',
                    '{C:mult}+#1#{} Multi e {C:chips}+#2#{} Fichas',
                    '{C:inactive}(No momento {C:mult}+#3#{}{C:inactive} Multi, {C:chips}+#4#{}{C:inactive} Fichas)'
                }
            },
            j_losted_stake_out={
                name = 'Tô de Olho',
                text = {
                    '{X:mult,C:white}X#1#{} Multi,',
                    '{C:attention}perde 1 mão{} caso a mão jogada',
                    'ative o {C:attention}Blind de Chefe{}'
                }
            },
            j_losted_gothic={
                name = 'Curinga Gótico',
                text = {
                    'Cartas jogadas com {C:attention}Naipe Curinga{}',
                    'dão {C:mult}+#1#{} Multi quando pontuadas'
                }
            },
            j_losted_lost_sock={
                name = 'Meia Perdida',
                text = {
                    'Este Curinga ganha {C:mult}+#1#{} Multi',
                    'se a mão jogada contém',
                    '{C:attention}#2#{} ou menos cartas',
                    '{C:inactive}(No momento, {C:mult}+#3#{C:inactive} Multi)',
                }
            },
            j_losted_perfect_split={
                name = 'Divisão Perfeita',
                text = {
                    'Cada carta {C:attention}pontuada{}',
                    'tem uma chance de {C:green}#1# em #2#{}',
                    'de ganhar {C:mult}+#3#{} Multi permanente',
                }
            },
            j_losted_sticky={
                name = 'Curinga Melado',
                text = {
                    'Após {C:attention}#1#{} rodadas,',
                    'venda esta carta para tornar',
                    '{C:dark_edition}Negativo{} um Curinga aleatório',
                    '{C:inactive}(No momento {C:attention}#2#{C:inactive}/#1#)',
                },
                unlock={
                    'Vença uma tentativa com',
                    '{E:1,C:attention}8 Curingas{}',
                    'ou mais',
                },
            },
            j_losted_vip_pass={
                name = 'Passe V.I.P',
                text = {
                    'Cria um {C:attention}Cupom{} extra gratuito na loja',
                    'após derrotar um {C:attention}Blind de Chefe{}'
                }
            },
            j_losted_welder={
                name = 'Soldador',
                text = {
                    '{C:attention}Cartas de Aço{} dão',
                    '{X:mult,C:white}X#1#{} Multi em vez',
                    'de {X:mult,C:white}X1.5{} Multi'
                },
                unlock={
                    'Tenha pelo menos {C:attention}#1#',
                    '{E:1,C:attention}#2#{} no',
                    'seu baralho',
                },
            },
            j_losted_triquetra = {
                name = 'Triquetra',
                text = {
                    'Cartas que fazem parte de uma',
                    '{C:attention}Trinca Perfeita{}, da mão jogada,',
                    'são {C:attention}reativadas{} #1# vezes adicionais',
                }
            },
            j_losted_the_passage = {
                name = 'A Passagem',
                text = {
                    'Ao {C:attention}vender{} esta carta,',
                    'a aposta é alterada em {C:attention}1{}.',
                    '{C:green}50%{} de chance de {C:blue}aumentar{}',
                    '{C:green}50%{} de chance de {C:red}diminuir{}'
                },
                unlock = {
                    'Use os vouchers',
                    '{C:attention}#1#{} e {C:attention}#2#{}',
                    'em uma única partida'
                }
            },
            j_losted_slot_machine = {
                name = 'Caça-Níquel',
                text = {
                    'Cada {C:attention}7{} pontuado tem uma chance de',
                    '{C:green}#1# em 2{} de ganhar {C:mult}+#2#{} Multi,',
                    '{C:green}#1# em 4{} de ganhar {C:gold}$#3#{},',
                    '{C:green}#1# em 8{} de ganhar {X:mult,C:white}X#4#{} Multi',
                    '{C:green}#1# em #5#{} de perder todo o {C:money}${}',
                },
                unlock = {
                    'Jogue uma trinca contendo',
                    '3 {C:attention,E:1}Cartas de Sorte{}',
                    'de classe {C:attention,E:1}7{}',
                },
            },
            j_losted_strawberry_milkshake = {
                name = 'Milk-shake de Morango',
                text = {
                    '{X:chips,C:white}X#1#{} Fichas,',
                    'perde {X:chips,C:white}X#2#{} Fichas',
                    'por rodada jogada.',
                    '{C:dark_edition}Nooh é muito cremoso!{}'
                }
            },
            j_losted_schrodinger = {
                name = 'Gato de Schrödinger',
                text = {
                    'Chance de {C:green}#1# em #2#{}',
                    'de dar {C:chips}+#3#{} Fichas',
                }
            },
            j_losted_mitosis = {
                name = 'Mitose',
                text = {
                    'Se a {C:attention}primeira mão{} da rodada for composta',
                    'apenas por cartas da {C:attention}mesma classe{},',
                    'as cartas pontuadas recebem as',
                    '{C:dark_edition}melhorias{} da carta mais à direita',
                    'ao pontuar.',
                },
            },
            j_losted_last_resort = {
                name = 'Medida Desesperada',
                text = {
                    'Se o {C:attention}primeiro descarte{} da rodada',
                    'tiver exatamente {C:attention}2 {}cartas, atira',
                    'nas mesmas e as destrói'
                }
            },
            j_losted_magician = {
                name = 'Curinga Mágico',
                text = {
                    'Ao usar uma carta de {C:purple}Tarô{},',
                    'possui uma chance de {C:green}#1# em #2#{} de',
                    'criar uma carta {C:spectral}Espectral{}',
                    '{C:inactive}(Deve ter espaço){}'
                },

            },
            j_losted_disruption = {
                name = 'Disrupção',
                text = {
                    '{X:mult,C:white}X1{} Multi,',
                    'ganha {X:mult,C:white}X#1#{} Multi para cada',
                    'vez que a {C:attention}mão de pôquer{}',
                    'foi jogada nesta tentativa',
                }
            },
            j_losted_passion_fruit = {
                name = 'Maracujá',
                text = {
                    'Ganha {C:chips}+#2#{} Fichas',
                    'por mão jogada',
                    '{C:green}#3# em #4#{} chance de ser',
                    'destruído ao final da rodada',
                    '{C:inactive}(No momento {C:chips}+#1#{}{C:inactive} Fichas)'
                }
            },
            j_losted_passion_juice = {
                name = 'Suco de Maracujá',
                text = {
                    'Ganha {X:chips,C:white}X#2#{} Fichas',
                    'por mão jogada',
                    '{C:green}#3# em #4#{} chance de ser',
                    'destruído ao final da rodada',
                    '{C:inactive}(No momento {X:chips,C:white}X#1#{}{C:inactive} Fichas)'
                }
            },
            j_losted_statue = {
                name = 'Estátua de Pedra',
                text = {
                    '{C:attention}Cartas de Pedra{} pontuadas',
                    'dão {X:chips,C:white}X#1#{} Fichas'
                },
                unlock = {
                    'Jogue uma mão que contém',
                    '5 {C:attention,E:1}Cartas de Pedra{}',
                }
            },
            j_losted_rule_book = {
                name = 'Livro de Regras',
                text = {
                    'A {C:attention}última carta{} pontuadora da mão',
                    'dá {X:mult,C:white}X#1#{} Multi',
                }
            },
            j_losted_toc_toc = {
                name = 'Toc Toc',
                text = {
                    'Ao jogar uma mão dá {C:money}${}',
                    'igual a quantidade de',
                    '{C:attention}descartes restantes{}',
                }
            },
            j_losted_advantage_addiction = {
                name = 'Vício em Vantagem',
                text = {
                    'Reativa cartas com',
                    '{C:dark_edition}melhorias{}',
                    '#1#{} vez adicional',
                },
                unlock={
                    'Tenha pelo menos {E:1,C:attention}#1#',
                    'cartas com {C:dark_edition}melhorias{}',
                    'no seu baralho',
                },
            },
            j_losted_jersey_10 = {
                name = 'Camisa 10',
                text = {
                    'Se a mão jogada for composta por um único {C:attention}10{},',
                    'aplica uma {C:dark_edition}edição{} aleatória a ele',
                }
            },
            j_losted_harlequin = {
                name = 'Arlequina',
                text = {
                    '{C:chips}+#1#{} Fichas',
                }
            },
            j_losted_totem = {
                name = 'Totem',
                text = {
                    'Possui uma chance de {C:green}#1# em #2#{}',
                    'de {C:attention}dobrar{} cada ganho de {C:money}${}',
                    },
                    unlock = {
                    'Complete o desafio',
                    '{E:1,C:attention}Na Reserva'
                }
                },
            j_losted_duke = {
            name = 'Duque',
            text = {
                'Reativa a {C:attention}primeira{} carta',
                'jogada usada em pontuação',
                '{C:attention}1{} vez adicional',
                'por {C:attention}Valete{} na mão'
            },
        },
            j_losted_mysterious = {
                name = '???',
                text = {
                    '{C:inactive}(#1#/#2#)',
                    '{C:inactive,s:0.7}Mãos'
                },
                unlock = {
                    'Complete o desafio',
                    '{E:1,C:attention}Maratona'
                }
            },
            j_losted_rubiks_cube = {
                name = 'Cubo Mágico',
                text = {
                    'Cada {C:attention}6{} jogado dá {C:mult}+#2#{} Multi,',
                    'Cada {C:attention}9{} jogado dá {C:chips}+#1#{} Fichas',
                }
            },
            j_losted_demonic_joker = {
                name = 'Curinga Demoníaco',
                text = {
                    'Cada {C:attention}6{} jogado dá {C:gold}$#1#{} ouros',
                    'Se a mão jogada conter uma {C:attention}Trinca{},',
                    'o ouro por carta é {C:attention}dobrado{}',
                    'Possui uma chance de {C:green}#2# em #3#{} de não ativar',
                },
                unlock = {
                    'Jogue uma trinca contendo',
                    '3 {C:attention,E:1}Cartas Douradas{}',
                    'de classe {C:attention,E:1}6{}',
                },
            },
            j_losted_moist_cake = {
                name = 'Bolo Molhadinho',
                text = {
                    'Cartas jogadas com',
                    'naipe de {V:1}#2#{} dão',
                    '{C:mult}+#1#{} Multi quando pontuadas',
                    '{s:0.8}naipe muda no fim da rodada',
                }
            },
            j_losted_rocker={
                name = 'Rockeiro',
                text = {
                    '{C:attention}Cartas de Pedra {}jogadas',
                    'dão {C:mult}+#1#{} Multi quando pontuadas'
                }
            },
            j_losted_piggy_bank = {
                name = 'Cofrinho',
                text = {
                    'Ganha {C:chips}+#2#{} Fichas para cada',
                    '{C:money}$1{} de juros recebido no',
                    'final da rodada.',
                    '{C:inactive}(No momento {C:chips}+#1#{C:inactive} Fichas)'
                }
            },
            j_losted_hematophilia = {
                name = 'Hematofilia',
                text = {
                    'Ganha {C:mult}+#2#{} Multi permanentemente',
                    'para cada Carta ou Curinga {C:attention}destruído{}',
                    '{C:inactive}(No momento {C:mult}+#1#{}{C:inactive} Multi)'
                }
            },
            j_losted_chicken_cleide = {
                name = 'Galinha Cleide',
                text = {
                    'Quando um {C:attention}Blind de Chefe{} é selecionado,',
                    'põe um {C:attention}Ovo{} {C:dark_edition}Negativo{}. Máximo {C:attention}#1#{} ovos',
                    '{C:inactive}(No momento {C:attention}#2#{C:inactive}/#1#)',
                    '{C:inactive,s:0.9}(Destruída após botar os ovos)'
                },
                unlock = {
                    'Complete o desafio',
                    '{E:1,C:attention}A Omelete'
                }
            },
            j_losted_seal_stamp = {
                name = 'Carimbo',
                text = {
                    'Ao derrotar um {C:attention}Blind de Chefe{},',
                    'cria um {C:spectral}Espectro de Selo{} aleatório',
                    '{C:inactive}(Deve ter espaço){}'
                }
            },
            j_losted_pot_of_greed = {
                name = 'Pote da Ganância',
                text = {
                    'Ao jogar ou descartar,',
                    'saque {C:attention}1{} carta extra',
                },
                unlock={
                    'Alcance',
                    'Nível de Aposta {E:1,C:attention}#1#',
                },

            },
            j_losted_sarcophagus = {
                name = 'Sarcófago',
                text = {
                    'Ao derrotar um {C:attention}Blind de Chefe{},',
                    'cria um Curinga {C:dark_edition}Negativo{} aleatório',
                    '{C:uncommon}Incomum{} ou {C:rare}Raro{}',
                    'e então se {C:attention}destrói{}'
                },
                unlock = {
                    'Vença uma tentativa com',
                    'pelo menos 2 curingas {C:dark_edition}negativos'
                }
            },
            j_losted_cosmos = {
                name = 'Cosmos',
                text = {
                    'Cartas de {C:planet}Planeta{} na',
					'sua área de {C:attention}consumíveis{}',
					'dão {X:mult,C:white}X#1#{} Multi',
                },
                unlock={
                    'Compre um total de',
                    '{C:attention}#1#{C:planet} cartas de Planeta{}',
                    'na loja',
                    '{C:inactive}(#2#)',
                },

            },
            j_losted_error = {
                name = 'Erro',
                text = {
                    'Se a {C:attention}primeira mão{} da rodada',
                    'tiver no maximo {C:attention}3{} cartas,',
                    'randomiza o {C:attention}naipe{}, a {C:attention}classe{}',
                    'e as {C:dark_edition}melhorias{}',
                    'das {C:attention}cartas jogadas{}',
                },
                unlock={
                    'Acabe com o Blind de Chefe',
                    'com uma {E:1,C:attention}#1#',
                },
            },
            j_losted_miner = {
                name = 'Curinga Minerador',
                text = {
                    '{C:green}#1# em #2#{} chance de criar',
                    'uma carta {C:spectral}A Ganância{}',
                    'quando uma mão é pontuada',
                    '{C:inactive}(Deve ter espaço){}'
                }
            },
            j_losted_toaster = {
                name = 'Torradeira',
                text = {
                    'Após pontuar um {C:attention}Par{},',
                    'deixa as cartas {C:attention}torradas{}',
                    'e devolve-as ao baralho'
                }
            },
            j_losted_baker = {
                name = 'Curinga Padeiro',
                text = {
                    'Adiciona uma carta {C:attention}Torrada{}',
                    'ao seu baralho quando',
                    'o {C:attention}Blind{} é selecionado',
                }
            },
            j_losted_spirit_box = {
                name = 'Caixa Espiritual',
                text = {
                    'Ganha {X:mult,C:white}X#1#{} Multi',
                    'para cada carta {C:purple}Espectral{} usada',
                    '{C:inactive}(No momento {X:mult,C:white}X#2#{}{C:inactive} Multi)',
                }
            },
            j_losted_precious = {
                name = 'Curinga Precioso',
                text = {
                    'Este Curinga ganha {C:mult}+#1#{} Multi',
                    'toda vez que uma {C:attention}Carta de Diamante{}',
                    'for repontuada',
                    '{C:inactive}(No momento {C:mult}+#2#{}{C:inactive} Multi)',
                }
            },
            j_losted_laser_microjet = {
                name = 'Laser MicroJet',
                text = {
                    'Possui uma chance de {C:green}#1# em #2#{}',
                    'de repontuar {C:attention}Cartas de Diamante{}',
                    'já repontuadas',
                },
                unlock = {
                    'Jogue uma mão que contém',
                    '5 {C:attention,E:1}Cartas de Diamante{}',
                }
            },
            j_losted_step_by_step = {
                name = 'Passo a Passo',
                text = {
                    'Este Curinga ganha {C:mult}+#1#{} Multi',
                    'se a mão jogada contém',
                    'uma {C:attention}#2#',
                    '{C:inactive}(No momento, {C:mult}+#3#{C:inactive} Multi)',
                }
            },
            j_losted_jimboy = {
                name = 'Jimboy',
                text = {
                    'Ao {C:attention}descartar{}, troca entre',
                    'dois jogos diferentes:',
                    'Atualmente: {V:1}#3# (+#5# #4#){}',
                }
            },
            j_losted_red_joker = {
                name='Curinga Vermelho',
                text={
                    '{C:mult}+#1#{} Multi para cada #2# cartas',
                    'restantes no {C:attention}baralho',
                    '{C:inactive}(No momento {C:mult}+#3#{C:inactive} Multi)',
                },
            },
            j_losted_bank = {
                name='Banco',
                text={
                    'Este Curinga ganha {X:mult,C:white} X#1# {} Multi',
                    'para cada {C:money}$#2#{} que você tem',
                    '{C:inactive}(No momento, {X:mult,C:white}X#3#{C:inactive} Multi)',
                },
            },
            j_losted_big_bang = {
                name='Big Bang',
                text={
                    'Cria uma carta de {C:planet}Planeta{}',
                    'quando o {C:attention}Blind{} é selecionado',
                    '{C:inactive}(Deve ter espaço)',
                },
            },
            j_losted_artist={
                name='Curinga Artista',
                text={
                    'Se a mão jogada contém um {C:attention}Flush{},',
                    'cada carta tem uma chance de {C:green}#1# em #2#{}',
                    'de se tornar uma {C:attention}Carta Naipe Curinga{}',
                },
                unlock = {
                    'Jogue uma mão que contém',
                    '5 {C:attention,E:1}Cartas Naipe Curinga{}',
                }
            },
            j_losted_shiny_gloves = {
                name = 'Luvas Brilhantes',
                text = {
                    'Este Curinga ganha {C:mult}+#1#{} Multi',
                    'se a mão jogada contém',
                    'um {C:attention}#2#',
                    '{C:inactive}(No momento, {C:mult}+#3#{C:inactive} Multi)',
                }
            },
            j_losted_fair_price = {
                name = 'Preço justo',
                text = {
                    '{X:mult,C:white} X#1# {} Multi,',
                    'pague {C:money}$#2#{} no',
                    'fim da rodada',
                    '{C:inactive}Destruído se não puder pagar{}',
                }
            },
            j_losted_paid_vacation = {
                name = 'Férias Remuneradas',
                text = {
                    'Ganhe {C:money}$#1#{} se',
                    'o blind for vencido',
                    'usando {C:attention}todas as mãos{}'
                }
            },
            j_losted_joke_book = {
                name = 'Livro de Piadas',
                text = {
                    'Ganha {X:mult,C:white}X#1#{} Multi se a',
                    'mão jogada for {C:attention}#3#{},',
                    'Reseta se jogar outra {C:attention}mão de pôquer{}.',
                    '{C:attention}Mão de pôquer{} muda a cada partida',
                    '{C:inactive}(No momento, {X:mult,C:white}X#2#{C:inactive} Multi)',
                }
            },
            j_losted_vandalism = {
                name = 'Vandalismo',
                text = {
                    'Reduz a pontuação de todos os',
                    '{C:attention}Blinds{} em {C:attention}#1#%{}',
                    'quando selecionados'
                }
            },
            j_losted_artwork = {
                name = 'Obra de Arte',
                text = {
                    'Ganha {C:money}$#1#{} no',
                    '{C:attention}valor de venda{} ao',
                    'fim da rodada',
                    '{C:green}#2# em #3#{} chance de ser',
                    'destruído ao final da rodada',
                }
            },
            j_losted_silly_hat = {
                name = 'Chapéu Engraçado',
                text = {
                    'Este Curinga ganha {C:mult}+#1#{} Multi',
                    'se a mão jogada contém',
                    'uma {C:attention}#2#',
                    '{C:inactive}(No momento, {C:mult}+#3#{C:inactive} Multi)',
                }
            },
            j_losted_surprise_box = {
                name = 'Caixinha Surpresa',
                text = {
                    '' -- should be empty
                }
            },
            j_losted_critic_failure = {
                name = 'Falha Crítica',
                text = {
                    '{C:attention}Divide{} todas as',
                    '{C:green,E:1,S:1.1}probabilidades{} por {C:green,E:1,S:1.1}4{}',
                    '{C:inactive}(ex: {C:green}1 em 3{C:inactive} -> {C:green}0.25 em 3{C:inactive})',
                },
                unlock={
                    'Em uma mão,',
                    'ganhe pelo menos',
                    '{E:1,C:attention}#1#{} fichas',
                },

            },
            j_losted_limited_edition = {
                name = 'Edição Limitada',
                text = {
                    'Ganha {X:mult,C:white}X#1#{} Multi para cada',
                    '{C:money}$1{} de valor de venda',
                    'ao vender outros Curingas.',
                    '{C:inactive}(No momento, {X:mult,C:white}X#2#{C:inactive} Multi)',
                },
                unlock={
                    'Venda um total de',
                    '{C:attention,E:1}#1#{} cartas Curinga',
                    '{C:inactive}(#2#)',
                },

            },
            j_losted_contract = {
                name = 'Contrato',
                text = {
                    'Aprimore o nível de {C:attention}#1#{}',
                    'em 2 no final da rodada',
                    'As outras {C:attention}mãos de pôquer{} levam desvantagem',
                    'Não pode ser vendido, até expirar',
                    'Expira em {C:attention}#2#{} rodadas'
                },
            },
            j_losted_hoarding_joker = {
                name = 'Curinga Acumulador',
                text = {
                    '{C:dark_edition}+#1#{} espaço(s) de consumível',
                }
            },
            j_losted_glutton = {
                name = 'Curinga Acumulador',
                text = {
                    '{C:dark_edition}+#1#{} espaço(s) de consumível',
                }
            },
            j_losted_big_joker = {
                name = 'Curingão',
                text = {
                    'Este Curinga ganha',
                    '{C:mult}+#2#{} Multi quando cada',
                    '{C:attention}10{} jogado pontua',
                    '{C:inactive}(No momento {C:mult}+#1#{C:inactive} Multi)',
                }
            },
            j_losted_doodle = {
                name = 'Rabisco',
                text = {
                    'Copia a habilidade',
                    'do {C:attention}Curinga{} à esquerda',
                    '{C:green}#1# em #2#{} chance de ser',
                    'destruído ao final da rodada',
                }
            },
            j_losted_booster = {
                name = 'Pacotin',
                text = {
                    'Ganha {C:chips}+#2#{} Fichas quando qualquer',
                    '{C:attention}Pacote de Reforço{} for aberto',
                    '{C:inactive}(No momento {C:chips}+#1#{}{C:inactive} Fichas)',
                }
            },
            j_losted_turntable = {
                name = 'Toca Discos',
                text = {
                    'Cartas jogadas que possuem',
                    'a mesma {C:attention}classe e naipe{} de uma',
                    'carta já pontuada nesta rodada',
                    'dão {C:mult}+#1#{} Multi'
                },
                unlock = {
                    'Jogue um',
                    '{E:1,C:attention}Flush Five'
                }
            },
            j_losted_replay = {
                name = 'Replay',
                text = {
                    'Reativa a {C:attention}última{} carta',
                    'jogada usada em pontuação',
                    '{C:attention}#1#{} vezes adicionais',
                }
            },
            j_losted_clown_car = {
                name = 'Carro dos Palhaços',
                text = {
                    'Quando um {C:attention}Blind{} é selecionado,',
                    'cria {C:uncommon}#1# Curinga Incomum{}.',
                    'Cria até {C:attention}#2# Curingas.',
                    '{C:inactive}({C:attention}#3#{}{C:inactive}/#2#){}',
                    '{C:inactive}(Deve ter espaço)',
                },
                unlock = {
                    'Complete o desafio',
                    '{E:1,C:attention}Só Curingas'
                }
            },
            j_losted_the_joker = {
                name = 'O Coringa',
                text = {
                    'Cada {C:attention}#2#{} jogado dá',
                    '{X:mult,C:white}X#1#{} Multi ao pontuar',
                    '{C:inactive}{s:0.7}Escolhe a classe mais comum no baralho{}{}',
                },
                unlock = {
                    'Quando o {E:1,C:dark_edition}???{} concluir',
                    'seu enigma, {C:dark_edition}ele{} se revelará',
                }
            },
            j_losted_obsidian = {
                name = 'Obsidiana',
                text = {
                    'Cartas jogadas com',
                    'naipe de {V:1}#5#{} dão',
                    '{C:chips}+#1#{} Fichas, {C:mult}+#2#{} Multi, {X:mult,C:white}X#3#{} Multi',
                    'e {C:gold}$#4#{} quando pontuadas',
                    '{s:0.7}naipe muda no fim da rodada{}'
                },
                unlock = {
                    'Negocie as {C:dark_edition}quatro pedras{}',
                    'para despertá-la',
                }
            },
            j_losted_jimbo_hood = {
                name = 'Jimbo Hood',
                text = {
                    'Ao final da pontuação,',
                    'equilibra {C:mult}Multi{} e {C:chips}Fichas{}',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_roland = {
                name = 'Roland',
                text = {
                    'Quando um {C:attention}Blind{} é selecionado,',
                    'cria uma carta {C:spectral}Espectral{}',
                    '{C:dark_edition}Negativa{} aleatória',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_patati_patata = {
                name = '#1#',
                text = {
                    'Cartas jogadas com classe {C:attention}#2#{} dão',
                    '{B:1,C:white}X#3#{} #4# quando pontuadas', 
                    '{C:inactive}#5#', 
                    '{C:faded}Muda para {V:2}#6#{} ao jogar uma mão{}' 
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_invisible = {
                name = 'Olá, mundo!',
                text = {
                    '{C:purple,E:1,S:1.1}Eu sou um segredo <3{}'
                }
            },
        },
        Spectral={
            c_losted_mystery_soul = {
                name = 'A Alma?',
                text = {
                    'Cria {C:dark_edition}O Coringa{}',
                    '{C:inactive}O que é isso?{}'
                }
            },
            c_losted_greed = {
                name = 'A Ganância',
                text = {
                    'Aprimora {C:attention}2{}',
                    'cartas selecionadas para',
                    '{C:attention}Cartas de Diamantes{}',
                }
            },
            c_losted_aura = {
                name='Aura',
                text={
                    'Adiciona o efeito {C:dark_edition}Laminado{}, {C:dark_edition}Holográfico{},',
                    '{C:dark_edition}Policromático{} ou {C:dark_edition}Quântico{}',
                    'a {C:attention}1{} carta selecionada na sua mão',
                },
            },
            c_losted_aura_bunco = {
                name='Aura',
                text={
                    'Adiciona o efeito {C:dark_edition}Laminado{}, {C:dark_edition}HologrÃ¡fico{},',
                    '{C:dark_edition}PolicromÃ¡tico{}, {C:dark_edition}QuÃ¢ntico{} ou {C:dark_edition}Glitter{}',
                    'a {C:attention}1{} carta selecionada na sua mÃ£o',
                },
            },
            c_ectoplasm={ -- fixed wrong translation in portuguese base game
                name='Ectoplasma',
                text={
                    'Adiciona {C:dark_edition}Negativo{} a',
                    'um {C:attention}Curinga aleatório,',
                    '{C:red}-#1#{} de tamanho de mão',
                },
            },
        },
        Stake = {
            stake_losted_diamond = {
                name = 'Aposta Diamantada',
                text = {
                    'Aumenta a {C:attention}Aposta final{} para {C:attention}10{}',
                    '{s:0.8}Aplica todas as apostas anteriores',
                }
            },
        },
        Tag = {
            tag_losted_quantum = {
                name='Marca Quântica',
                text={
                    'O próximo Curinga da loja de',
                    'edição de base é grátis',
                    'e torna-se {C:dark_edition}Quântico{}',
                },
            },
            tag_losted_plasma = {
                name='Marca de Plasma',
                text={
                    'O próximo Curinga da loja de',
                    'edição de base é grátis',
                    'e torna-se {C:dark_edition}Plasma{}',
                },
            },
        },
        Tarot = {
            c_losted_abyss={
                name = 'O Abismo',
                text = {
                    'Diminui a classe de {C:attention}#1#{} carta',
                    'selecionada em {C:attention}1{}',
                }
            },
            c_losted_lily = {
                name = 'Lírio',
                text = {
                    'Aprimora {C:attention}1{} carta',
                    'selecionada para',
                    '{C:attention}Carta Estelar{}',
                }
            },
            c_losted_provider = {
                name = 'O Provedor',
                text = {
                    'Aprimora {C:attention}#1#{} carta',
                    'selecionada para',
                    '{C:attention}Carta Torrada{}',
                }
            },
            c_losted_wheel_of_fortune = {
                name='A Roda da Fortuna',
                text={
                    'Chance de {C:green}#1# em #2#{} de adicionar',
                    'edição {C:dark_edition}Laminada{}, {C:dark_edition}Holográfica{},',
                    '{C:dark_edition}Policromática{}, {C:dark_edition}Plasma{} ou {C:dark_edition}Quântica{}',
                    'a um {C:attention}Curinga aleatório',
                },
            },
        },
        Voucher = {
            v_losted_negative_bias = {
                name = 'Tendência Negativa',
                text = {
                    'Cartas {C:dark_edition}Negativas{} aparecem',
                    '{C:attention}#1#X{} mais frequentemente',
                    'na loja',
                },
            },
            v_losted_negative_magnet = {
                name = 'Ímã Negativo',
                text = {
                    'Cartas {C:dark_edition}Negativas{} aparecem',
                    '{C:attention}#1#X{} mais frequentemente',
                    'na loja',
                },
                unlock={
                    'Tenha pelo menos {C:attention}#1#',
                    'cartas de {C:attention}Curinga{} com',
                    'edição {C:dark_edition}Negativa{}',
                },
            },
            v_losted_stapler = {
                name = 'Grampeador',
                text = {
                    'Curingas aparecem',
                    '{C:attention}2X{} mais frequentemente',
                    'na loja',
                },
            },
            v_losted_staple_gun = {
                name = 'Grampeador Pneumático',
                text = {
                    'Reduz a frequência de aparição',
                    'dos Curingas {C:common}Comuns{}',
                },
                unlock={
                    'Compre um total de',
                    '{E:1,C:attention}#1# {C:blue}Curingas{}',
                    'na loja',
                    '{C:inactive}(#2#)',
                },

            },
            v_losted_extra_bag = {
                name = 'Pochete Extra',
                text = {
                    '{C:attention}+1 Pacote de Reforço{}',
                    'disponível por {C:attention}loja{}'
                },
            },
            v_losted_booster_bag = {
                name = 'Pochete de Reforço',
                text = {
                    '{C:attention}+2 Cartas Extras{} para',
                    'escolher em Pacotes de Reforço',
                },
                unlock = {
                    'Abra {E:1,C:attention}#1#',
                    'Pacotes de Reforço',
                    '{C:inactive}(#2#)'
                }
            },
            v_hone={
                name='Apuramento',
                text={
                    'Cartas {C:dark_edition}Laminadas{}, {C:dark_edition}Holográficas{},',
                    '{C:dark_edition}Policromáticas{}, {C:dark_edition}Quânticas{} e {C:dark_edition}Plasma{}',
                    'aparecem {C:attention}#1#X{} mais frequentemente',
                },
            },
            v_glow_up={
                name='Brilhando',
                text={
                    'Cartas {C:dark_edition}Laminadas{}, {C:dark_edition}Holográficas{},',
                    '{C:dark_edition}Policromáticas{}, {C:dark_edition}Quânticas{} e {C:dark_edition}Plasma{}',
                    'aparecem {C:attention}#1#X{} mais frequentemente',
                },
                unlock={
                    'Tenha pelo menos {C:attention}#1#',
                    'cartas de {C:attention}Curinga{} com',
                    'edição {C:dark_edition}Laminada{}, {C:dark_edition}Holográfica{} ou',
                    '{C:dark_edition}Policromática{}',
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_losted_magic_trick = 'Um Passe de Mágica',
            c_losted_medieval_era = 'Era Medieval',
            c_losted_wall = 'A Muralha',
            c_losted_breakfast = 'Café da Manhã',
            c_losted_new_times = 'Novos Tempos',
            c_losted_only_jokers = 'Só Curingas',
            c_losted_autopilot = 'Piloto Automático',
            c_losted_mvp = 'M.V.P',
            c_losted_running_on_fumes = 'Na Reserva',
            c_losted_marathon = 'Maratona',
        },
        dictionary = {
            k_negative_ex = 'Negativo!',
            k_blind_selected_ex = 'Bônus de Blind!',
            k_ante_increased_ex = 'Aposta aumentada!',
            k_ante_decreased_ex = 'Aposta reduzida!',
            k_schrodinger_ex = 'Morto',
            k_suit_changed_ex = 'Naipe Alterado!',
            k_obsidian_awakened_ex = 'OBSIDIANA DESPERTA',
            toast_eaten = 'Comido',
            k_mod_c = 'JOGO 1',
            k_mod_m = 'JOGO 2',
            k_chips = 'Fichas',
            k_losted_enhancements_removed = 'Aprimoramentos Removidos!',
            k_vandalism_ex = 'Vandalizado!',
            k_plus_toast = '+1 Torrada',
            k_even = 'par',
            k_odd = 'ímpar',
            k_nothing_ex = 'Nada pro Beta',

            k_losted_music_label = 'Trilha Sonora',
            k_losted_music_ost1 = 'Lost Edition OST por Gulira',
            k_losted_music_ost2 = 'Balatro OST por LouisF',





            -- Lost Edition: rótulos da seção de créditos
            le_credits_direction = 'Direção',
            le_credits_music = 'Música',
            le_credits_artists = 'Artistas',
            le_credits_coding = 'Programação',
            le_credits_beta = 'Testadores Beta',
            le_credits_thanks = 'Agradecimentos',
            le_credits_subtitle = 'Uma expansao nao oficial',
            le_credits_community = 'Comunidade',
        },
        v_dictionary = {
            a_xchips = 'X#1# Fichas',
            a_xchips_minus = '-X#1# Fichas',
            a_powmult = '^#1# Multi',
        },
        v_text = {
            ch_c_boss_rush = { 'Todos os Blinds são {C:attention}Blinds de Chefe{}' },
            ch_c_no_tags = { 'Ignorar Blinds é {C:attention}desativado{}' },
            ch_c_new_times = { 'Curingas não pertencentes a {C:purple}Lost Edition{} são banidos' },
            ch_c_only_jokers = { 'Somente Curingas podem ser encontrados na {C:attention}loja{} e nos {C:attention}pacotes{}' },
            ch_c_force_selection = { 'Obriga 1 carta a sempre ser selecionada' },
            ch_c_marathon = { 'Aposta final redirecionada para a aposta {C:attention}16{}' }
        },
        labels = {
            losted_quantum = 'Quântico',
            losted_plasma = 'Plasma',
            losted_evolutionary = 'Evolutivo',
            losted_chaotic = 'Caótico',
            losted_medieval = 'Medieval',
        },
        tutorial = {
            losted_intro_1 = {
                'Bem-vindo à {C:purple}Lost Edition{}!'
            },
            losted_intro_2 = {
                'Poucos jogadores chegam até aqui, sabia?',
            },
            losted_intro_3 = {
                'Fique à vontade para explorar, não tenha pressa.',
            },
            losted_intro_4 = {
                'Talvez você encontre algo {C:attention}realmente interessante{} por aqui...',
            }
        }
    },
}
