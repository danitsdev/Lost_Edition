return {
    descriptions={
        Back = {
            b_losted_evolutionary = {
                name = '진화 덱',
                text = {
                    '3보다 큰 모든 {C:attention}짝수 앤티{}마다,',
                    '핸드 크기 {C:attention}+1{} 획득',
                },
                unlock={
                    '핸드 크기를',
                    '{C:attention}#1#{}장으로 늘립니다',
                },
            },
            b_losted_fortune = {
                name = '포춘 덱',
                text = {
                    '모든 명시된 {C:attention}확률{}을',
                    '{C:green,E:1,S:1.1}두 배{}로 합니다',
                    '{C:inactive}(예: {C:green}3분의 1{C:inactive} -> {C:green}3분의 2{C:inactive})',
                },
                unlock = {
                    '{C:attention}#1#{}으로',
                    '어떤 난이도에서든',
                    '런에서 승리하세요',
                }
            },
            b_losted_chaotic = {
                name = '혼돈 덱',
                text = {
                    '모든 카드는 무작위이며',
                    '{C:attention}6개의 랭크{}와 {C:attention}2개의 수트{}로 제한됩니다',
                    '{C:attention,T:v_overstock_norm}#1#{}으로 런을 시작합니다',
                    '블라인드 기본 크기 {C:red}X#2#{}',
                },
                unlock = {
                    '{C:attention}#1#{}으로',
                    '어떤 난이도에서든',
                    '런에서 승리하세요',
                }
            },
            b_losted_medieval = {
                name = '중세 덱',
                text = {
                    '조커 슬롯 {C:attention}+#1#{}',
                    '앤티 2부터',
                    '{C:attention}모든{} 블라인드는 {C:attention}보스 블라인드{}입니다',
                },
                unlock = {
                    '챌린지를 완료하세요',
                    '{E:1,C:attention}중세 시대'
                }
            },
        },
        Blind = {
            bl_losted_all_ones = {
                name='이런! 모두 1이네',
                text={
                    '모든 명시된 {C:attention}확률{}을',
                    '{C:green,E:1,S:1.1}절반{}으로 줄입니다',
                    '{C:inactive}(예: {C:green}2분의 1{C:inactive} -> {C:green}2분의 0.5{C:inactive})',
                },
            },
            bl_losted_privilege = {
                name = '특권',
                text = {
                    '8장의 카드 중 #1#장이',
                    '디버프됩니다',
                }
            },
            bl_losted_vampiric = {
                name = '흡혈',
                text = {
                    '모든 {C:attention}점수 카드{}에서',
                    '{C:attention}강화{}를 제거합니다',
                    '{C:inactive}(처치 시 복원)'
                }
            },
            bl_losted_inversion = {
                name = '반전',
                text = {
                    '{C:attention}핸드{}와',
                    '{C:attention}버리기{}의 수를 바꿉니다',
                }
            },
            bl_losted_amnesia = {
                name = '기억상실',
                text = {
                    '#1#을(를) 일시적으로',
                    '레벨 1로',
                    '초기화합니다',
                }
            },
            bl_losted_labyrinth = {
                name = '미궁',
                text = {
                    '무작위 {C:attention}포커 핸드{}가',
                    '디버프됩니다.',
                    '플레이할 때마다 변경됩니다',
                },
            },
            bl_losted_watchdog = {
                name = '감시견',
                text = {
                    '다음 상점을 건너뜁니다',
                }
            },
            bl_losted_balance = {
                name = '균형',
                text = {
                    '{C:attention}짝수{} 랭크의 카드가',
                    '디버프됩니다'
                }
            },
            bl_losted_solitude = {
                name = '고독',
                text = {
                    '{C:attention}홀수{} 랭크의 카드가',
                    '디버프됩니다'
                }
            },
            bl_losted_annihilation = {
                name = '섬멸',
                text = {
                    '핸드를 플레이할 때마다',
                    '무작위 {C:attention}태그{} 하나를 잃습니다',
                }
            }
        },
        Edition = {
            e_losted_plasma = {
                name = '플라스마',
                text = {
                    '배수 {X:purple,C:white}^#1#{}',
                },
            },
            e_losted_quantum = {
                name = '양자',
                text = {
                    '이 카드의 {C:blue}모든 효과{}를',
                    '추가로 {C:blue}1회{} 반복합니다',
                },
            },
        },
        Enhanced = {
            m_losted_diamond = {
                name = '다이아몬드 카드',
                text = {
                    '다른 득점 중인 {C:attention}다이아몬드 카드{}에',
                    '{C:attention}인접{}하게 플레이하면 다시 득점합니다',
                    '이 카드가 핸드에 있는 동안',
                    '{X:chips,C:white}X#1#{} 칩 및 {X:mult,C:white}X#2#{} 배수',
                },
            },
            m_losted_stellar = {
                name = '항성 카드',
                text = {
                    '득점 시 영구적으로',
                    '{C:chips}+#1#{} 칩을 얻습니다.',
                },
            },
            m_losted_toast = {
                name = '토스트 카드',
                text = {
                    '득점 시',
                    '배수 {X:mult,C:white}X#1#{}',
                    '사용 후 {C:attention}소모{}됩니다',
                },
            },
            m_wild={
                name='와일드 수트 카드',
                text={
                    '어떤 수트로든',
                    '사용할 수 있습니다.',
                    '수트 디버프에',
                    '면역입니다'
                },
            },
        },
        Other = {
            losted_platinum_sticker = {
                name = '플래티넘 스티커',
                text= {
                    '이 조커를 사용하여',
                    '{C:attention}플래티넘 스테이크{}',
                    '난이도에서 승리했습니다'
                }
            },
			losted_diamond_sticker = {
                name = '다이아몬드 스티커',
                text= {
                    '이 조커를 사용하여',
                    '{C:attention}다이아몬드 스테이크{}',
                    '난이도에서 승리했습니다'
                }
            },
            artist = {
                text = {
                    '{C:inactive}아티스트',
                },
            },
            artist_credit = {
                name = '아티스트',
                text = {
                    '{E:1}#1#{}'
                },
            },
            perfect_three_of_a_kind = {
                name = '{C:attention}퍼펙트 트리플{}',
                text = {
                    '{C:attention}동일한 랭크{}의',
                    '{C:attention}정확히 3장{}의 카드로',
                    '구성됩니다',
                }
            },
            improvements_of_card = {
                name = '{C:dark_edition}개선 사항{}',
                text = {
                    '카드를 수정하는',
                    '특별한 속성입니다:',
                    '{C:dark_edition}강화{}, {C:dark_edition}봉인{} 및 {C:dark_edition}에디션{}',
                }
            }
        },
        Joker={
            j_losted_jimball={
                name = '짐볼리냐',
                text = {
                    '{C:attention}블라인드{} 선택 시,',
                    '영구적으로 {C:mult}+#1#{} 배수 및',
                    '{C:chips}+#2#{} 칩을 얻습니다',
                    '{C:inactive}(현재 {C:mult}+#3#{}{C:inactive} 배수, {C:chips}+#4#{}{C:inactive} 칩)'
                }
            },
            j_losted_stake_out={
                name = '잠복',
                text = {
                    '배수 {X:mult,C:white}X#1#{},',
                    '플레이한 핸드가 {C:attention}보스 블라인드{}를',
                    '발동시키면 {C:attention}핸드 1개를 잃습니다{}'
                }
            },
            j_losted_gothic={
                name = '고딕 조커',
                text = {
                    '{C:attention}와일드 수트{}로 플레이한 카드는',
                    '득점 시 {C:mult}+#1#{} 배수를 제공합니다'
                }
            },
            j_losted_lost_sock={
                name = '잃어버린 양말',
                text = {
                    '플레이한 핸드에',
                    '{C:attention}#2#{}장 이하의 카드가 포함된 경우',
                    '이 조커는 {C:mult}+#1#{} 배수를 얻습니다',
                    '{C:inactive}(현재 {C:mult}+#3#{C:inactive} 배수)',
                }
            },
            j_losted_perfect_split={
                name = '완벽한 분할',
                text = {
                    '각 {C:attention}점수 카드{}는',
                    '{C:green}#1#/#2#{}의 확률로',
                    '영구적으로 {C:mult}+#3#{} 배수를 얻습니다',
                }
            },
            j_losted_sticky={
                name = '끈끈이 조커',
                text = {
                    '{C:attention}#1#{} 라운드 후,',
                    '이 카드를 팔아 무작위 조커를',
                    '{C:dark_edition}네거티브{}로 만듭니다',
                    '{C:inactive}(현재 {C:attention}#2#{C:inactive}/#1#)',
                },
                unlock={
                    '{E:1,C:attention}8개 이상의 조커{}로',
                    '런에서 승리하세요',
                },
            },
            j_losted_vip_pass={
                name = 'V.I.P. 패스',
                text = {
                    '{C:attention}보스 블라인드{}를 물리친 후',
                    '상점에 무료 추가 {C:attention}바우처{}를',
                    '생성합니다'
                }
            },
            j_losted_welder={
                name = '용접공',
                text = {
                    '{C:attention}스틸 카드{}는',
                    '{X:mult,C:white}X1.5{} 배수 대신',
                    '{X:mult,C:white}X#1#{} 배수를 제공합니다'
                },
                unlock={
                    '덱에 최소',
                    '{C:attention}#1#{}개의',
                    '{E:1,C:attention}#2#{}를 보유하세요',
                },
            },
            j_losted_triquetra = {
                name = '트리퀘트라',
                text = {
                    '플레이한 핸드의 {C:attention}퍼펙트 트리플{}의',
                    '일부인 카드는 추가로',
                    '#1#번 {C:attention}재활성화{}됩니다',
                }
            },
            j_losted_the_passage = {
                name = '통로',
                text = {
                    '이 카드를 {C:attention}판매{}하면',
                    '앤티가 {C:attention}1{}만큼 변경됩니다.',
                    '{C:green}50%{} 확률로 {C:blue}증가{}',
                    '{C:green}50%{} 확률로 {C:red}감소{}'
                },
                unlock = {
                    '단일 런에서',
                    '{C:attention}#1#{} 및 {C:attention}#2#{}',
                    '바우처를 사용하세요'
                }
            },
            j_losted_slot_machine = {
                name = '슬롯머신',
                text = {
                    '각 득점된 {C:attention}7{}은 {C:green}1/2{} 확률로 {C:mult}+#2#{} 배수,',
                    '{C:green}1/4{} 확률로 {C:gold}$#3#{},',
                    '{C:green}1/8{} 확률로 {X:mult,C:white}X#4#{} 배수를 얻고,',
                    '{C:green}1/#5#{} 확률로 모든 {C:money}${}를 잃습니다',
                },
                unlock = {
                    '랭크 {C:attention,E:1}7{}의 {C:attention,E:1}럭키 카드{} 3장을',
                    '포함하는 트리플을',
                    '플레이하세요',
                },
            },
            j_losted_strawberry_milkshake = {
                name = '딸기 밀크셰이크',
                text = {
                    '칩 {X:chips,C:white}X#1#{},',
                    '플레이한 라운드마다',
                    '칩 {X:chips,C:white}X#2#{}을 잃습니다.',
                    '{C:dark_edition}오, 정말 크리미해!{}'
                }
            },
            j_losted_schrodinger = {
                name = '슈뢰딩거의 고양이',
                text = {
                    '{C:green}1/#2#{}의 확률로',
                    '{C:chips}+#3#{} 칩을 제공합니다',
                }
            },
            j_losted_mitosis = {
                name = '유사분열',
                text = {
                    '라운드의 {C:attention}첫 핸드{}가 {C:attention}동일한 랭크{}의',
                    '카드로만 구성된 경우,',
                    '모든 득점 카드는 가장 오른쪽 카드의',
                    '{C:dark_edition}개선 사항{}을 복사합니다.',
                },
            },
            j_losted_last_resort = {
                name = '최후의 수단',
                text = {
                    '라운드의 {C:attention}첫 번째 버리기{}에',
                    '정확히 {C:attention}2{}장의 카드가 있으면,',
                    '그 카드들을 쏘아 파괴합니다'
                }
            },
            j_losted_magician = {
                name = '마술사 조커',
                text = {
                    '{C:purple}타로{} 카드를 사용할 때,',
                    '{C:green}1/#2#{}의 확률로',
                    '{C:spectral}유령{} 카드를 생성합니다',
                    '{C:inactive}(공간이 있어야 합니다){}'
                },
            },
            j_losted_disruption = {
                name = '방해',
                text = {
                    '배수 {X:mult,C:white}X1{},',
                    '이 런에서 {C:attention}포커 핸드{}가',
                    '플레이될 때마다',
                    '배수 {X:mult,C:white}X#1#{}를 얻습니다',
                }
            },
            j_losted_passion_fruit = {
                name = '패션프루트',
                text = {
                    '플레이한 핸드당',
                    '칩 {C:chips}+#2#{}을 얻습니다',
                    '라운드 종료 시 {C:green}#3#/#4#{}의 확률로',
                    '파괴됩니다',
                    '{C:inactive}(현재 {C:chips}+#1#{}{C:inactive} 칩)'
                }
            },
            j_losted_passion_juice = {
                name = '패션프루트 주스',
                text = {
                    '플레이한 핸드당',
                    '칩 {X:chips,C:white}X#2#{}을 얻습니다',
                    '라운드 종료 시 {C:green}#3#/#4#{}의 확률로',
                    '파괴됩니다',
                    '{C:inactive}(현재 {X:chips,C:white}X#1#{}{C:inactive} 칩)'
                }
            },
            j_losted_statue = {
                name = '석상',
                text = {
                    '득점된 {C:attention}스톤 카드{}는',
                    '칩 {X:chips,C:white}X#1#{}을 제공합니다'
                },
                unlock = {
                    '{C:attention,E:1}스톤 카드{} 5장을',
                    '포함하는 핸드를 플레이하세요',
                }
            },
            j_losted_rule_book = {
                name = '규칙서',
                text = {
                    '핸드에서 {C:attention}마지막으로 득점한 카드{}는',
                    '배수 {X:mult,C:white}X#1#{}를 제공합니다',
                }
            },
            j_losted_toc_toc = {
                name = '똑똑',
                text = {
                    '핸드를 플레이할 때',
                    '{C:attention}남은 버리기{} 횟수만큼',
                    '{C:money}${}를 얻습니다',
                }
            },
            j_losted_advantage_addiction = {
                name = '강화 중독',
                text = {
                    '{C:dark_edition}개선 사항{}이 있는 카드를',
                    '추가로 #1#{}번',
                    '재활성화합니다',
                },
                unlock={
                    '덱에 최소',
                    '{E:1,C:attention}#1#{}장의 {C:dark_edition}개선 사항{}이',
                    '있는 카드를 보유하세요',
                },
            },
            j_losted_jersey_10 = {
                name = '10번 저지',
                text = {
                    '플레이한 핸드가 단일 {C:attention}10{}으로',
                    '구성된 경우,',
                    '무작위 {C:dark_edition}에디션{}을 적용합니다',
                }
            },
            j_losted_harlequin = {
                name = '할리퀸',
                text = {
                    '칩 {C:chips}+#1#{}',
                }
            },
            j_losted_totem = {
                name = '토템',
                text = {
                    '{C:green}1/#2#{}의 확률로',
                    '모든 {C:money}${} 획득을 {C:attention}두 배{}로 합니다',
                },
                unlock = {
                    '챌린지를 완료하세요',
                    '{E:1,C:attention}예비 연료로 달리기'
                }
            },
            j_losted_duke = {
                name = '듀크',
                text = {
                    '핸드에 있는 {C:attention}잭{}마다',
                    '득점에 사용된 {C:attention}첫 번째{} 플레이한 카드를',
                    '추가로 {C:attention}1{}번 재활성화합니다',
                },
            },
            j_losted_mysterious = {
                name = '???',
                text = {
                    '{C:inactive}(#1#/#2#)',
                    '{C:inactive,s:0.7}핸드'
                },
                unlock = {
                    '챌린지를 완료하세요',
                    '{E:1,C:attention}마라톤'
                }
            },
            j_losted_rubiks_cube = {
                name = '마법 큐브',
                text = {
                    '플레이한 각 {C:attention}6{}은 배수 {C:mult}+#2#{}를 제공하고,',
                    '플레이한 각 {C:attention}9{}는 칩 {C:chips}+#1#{}를 제공합니다',
                }
            },
            j_losted_demonic_joker = {
                name = '악마 조커',
                text = {
                    '플레이한 각 {C:attention}6{}은 {C:gold}$#1#{}를 제공합니다',
                    '플레이한 핸드에 {C:attention}트리플{}이 포함된 경우,',
                    '카드당 골드가 {C:attention}두 배{}가 됩니다',
                    '{C:green}#2#/#3#{}의 확률로 발동하지 않습니다',
                },
                unlock = {
                    '랭크 {C:attention,E:1}6{}의',
                    '{C:attention,E:1}골드 카드{} 3장을 포함하는',
                    '트리플을 플레이하세요',
                },
            },
            j_losted_moist_cake = {
                name = '촉촉한 케이크',
                text = {
                    '{V:1}#2#{} 수트로',
                    '플레이한 카드는 득점 시',
                    '배수 {C:mult}+#1#{}를 제공합니다',
                    '{s:0.8}라운드 종료 시 수트가 변경됩니다',
                }
            },
            j_losted_rocker={
                name = '로커',
                text = {
                    '플레이한 {C:attention}스톤 카드{}는',
                    '득점 시 배수 {C:mult}+#1#{}를 제공합니다'
                }
            },
            j_losted_piggy_bank = {
                name = '돼지 저금통',
                text = {
                    '라운드 종료 시 받은',
                    '이자 {C:money}$1{}당',
                    '칩 {C:chips}+#2#{}을 얻습니다.',
                    '{C:inactive}(현재 {C:chips}+#1#{C:inactive} 칩)'
                }
            },
            j_losted_hematophilia = {
                name = '혈우병',
                text = {
                    '{C:attention}파괴된{} 카드나 조커마다',
                    '영구적으로 배수 {C:mult}+#2#{}를 얻습니다',
                    '{C:inactive}(현재 {C:mult}+#1#{}{C:inactive} 배수)'
                }
            },
            j_losted_chicken_cleide = {
                name = '암탉 클레이드',
                text = {
                    '{C:attention}보스 블라인드{} 선택 시,',
                    '{C:dark_edition}네거티브{} {C:attention}알{}을 낳습니다. 최대 {C:attention}#1#{}개',
                    '{C:inactive}(현재 {C:attention}#2#{C:inactive}/#1#)',
                    '{C:inactive,s:0.9}(알을 낳은 후 파괴됩니다)'
                },
                unlock = {
                    '챌린지를 완료하세요',
                    '{E:1,C:attention}오믈렛'
                }
            },
            j_losted_seal_stamp = {
                name = '봉인 도장',
                text = {
                    '{C:attention}보스 블라인드{}를 물리치면,',
                    '무작위 {C:spectral}봉인 유령{}을',
                    '생성합니다',
                    '{C:inactive}(공간이 있어야 합니다){}'
                }
            },
            j_losted_pot_of_greed = {
                name = '욕망의 항아리',
                text = {
                    '플레이 또는 버릴 때,',
                    '추가 카드 {C:attention}1{}장을 뽑습니다',
                },
                unlock={
                    '스테이크 레벨',
                    '{E:1,C:attention}#1#{}에',
                    '도달하세요',
                },
            },
            j_losted_sarcophagus = {
                name = '석관',
                text = {
                    '{C:attention}보스 블라인드{}를 물리치면,',
                    '무작위 {C:dark_edition}네거티브{}',
                    '{C:uncommon}희귀{} 또는 {C:rare}레어{} 조커를 생성하고',
                    '그 후 {C:attention}자가 파괴{}됩니다',
                },
                unlock = {
                    '최소 2개의 {C:dark_edition}네거티브{} 조커로',
                    '런에서 승리하세요',
                }
            },
            j_losted_cosmos = {
                name = '코스모스',
                text = {
                    '{C:attention}소모품{} 영역에 있는',
                    '{C:planet}행성{} 카드는',
                    '배수 {X:mult,C:white}X#1#{}를 제공합니다',
                },
                unlock={
                    '상점에서 총',
                    '{C:attention}#1#{}개의 {C:planet}행성 카드{}를',
                    '구매하세요',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_error = {
                name = '오류',
                text = {
                    '라운드의 {C:attention}첫 핸드{}에',
                    '카드가 최대 {C:attention}3{}장인 경우,',
                    '{C:attention}플레이한 카드{}의 {C:attention}수트{}, {C:attention}랭크{} 및',
                    '{C:dark_edition}개선 사항{}을 무작위로 변경합니다',
                },
                unlock={
                    '{E:1,C:attention}#1#{} (으)로',
                    '보스 블라인드를 물리칩니다',
                },
            },
            j_losted_miner = {
                name = '광부 조커',
                text = {
                    '핸드가 득점될 때',
                    '{C:green}1/#2#{}의 확률로',
                    '{C:spectral}탐욕{} 유령 카드를',
                    '생성합니다',
                    '{C:inactive}(공간이 있어야 합니다){}'
                }
            },
            j_losted_toaster = {
                name = '토스터',
                text = {
                    '{C:attention}페어{}를 득점한 후,',
                    '카드를 {C:attention}토스트{}하고',
                    '덱으로 돌려보냅니다'
                }
            },
            j_losted_baker = {
                name = '제빵사 조커',
                text = {
                    '{C:attention}블라인드{}가 선택될 때',
                    '덱에 {C:attention}토스트{} 카드',
                    '하나를 추가합니다',
                }
            },
            j_losted_spirit_box = {
                name = '영혼 상자',
                text = {
                    '사용한 {C:purple}유령{} 카드마다',
                    '배수 {X:mult,C:white}X#1#{}를 얻습니다',
                    '{C:inactive}(현재 {X:mult,C:white}X#2#{}{C:inactive} 배수)',
                }
            },
            j_losted_precious = {
                name = '귀중한 조커',
                text = {
                    '{C:attention}다이아몬드 카드{}가',
                    '다시 득점될 때마다',
                    '이 조커는 배수 {C:mult}+#1#{}를 얻습니다',
                    '{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)',
                }
            },
            j_losted_laser_microjet = {
                name = '마이크로젯 레이저',
                text = {
                    '{C:green}1/#2#{}의 확률로',
                    '이미 다시 득점된',
                    '{C:attention}다이아몬드 카드{}를 다시 득점합니다',
                },
                unlock = {
                    '{C:attention,E:1}다이아몬드 카드{} 5장을',
                    '포함하는 핸드를 플레이하세요',
                }
            },
            j_losted_step_by_step = {
                name = '단계별',
                text = {
                    '플레이한 핸드에',
                    '{C:attention}#2#{}가 포함된 경우',
                    '이 조커는 배수 {C:mult}+#1#{}를 얻습니다',
                    '{C:inactive}(현재 {C:mult}+#3#{C:inactive} 배수)',
                }
            },
            j_losted_jimboy = {
                name = '짐보이',
                text = {
                    '{C:attention}버릴 때{}마다',
                    '두 가지 다른 게임 간에 전환됩니다:',
                    '현재: {V:1}#3# (+#5# #4#){}',
                }
            },
            j_losted_red_joker = {
                name='레드 조커',
                text={
                    '{C:attention}덱{}에 남은 카드 #2#장마다',
                    '배수 {C:mult}+#1#{}',
                    '{C:inactive}(현재 {C:mult}+#3#{C:inactive} 배수)',
                },
            },
            j_losted_bank = {
                name='은행',
                text={
                    '보유한 {C:money}$#2#{}마다',
                    '이 조커는 배수 {X:mult,C:white}X#1#{}를 얻습니다',
                    '{C:inactive}(현재 {X:mult,C:white}X#3#{C:inactive} 배수)',
                },
            },
            j_losted_big_bang = {
                name='빅뱅',
                text={
                    '{C:attention}블라인드{}가 선택될 때',
                    '{C:planet}행성{} 카드를',
                    '생성합니다',
                    '{C:inactive}(공간이 있어야 합니다)',
                },
            },
            j_losted_artist={
                name='아티스트 조커',
                text={
                    '플레이한 핸드에 {C:attention}플러시{}가 포함된 경우,',
                    '각 카드는 {C:green}1/#2#{}의 확률로',
                    '{C:attention}와일드 수트 카드{}가 됩니다',
                },
                unlock = {
                    '{C:attention,E:1}와일드 수트 카드{} 5장을',
                    '포함하는 핸드를 플레이하세요',
                }
            },
            j_losted_shiny_gloves = {
                name = '빛나는 장갑',
                text = {
                    '플레이한 핸드에',
                    '{C:attention}#2#{}가 포함된 경우',
                    '이 조커는 배수 {C:mult}+#1#{}를 얻습니다',
                    '{C:inactive}(현재 {C:mult}+#3#{C:inactive} 배수)',
                }
            },
            j_losted_fair_price = {
                name = '공정한 가격',
                text = {
                    '배수 {X:mult,C:white}X#1#{},',
                    '라운드 종료 시',
                    '{C:money}$#2#{}를 지불합니다',
                    '{C:inactive}지불할 수 없으면 파괴됩니다{}',
                }
            },
            j_losted_paid_vacation = {
                name = '유급 휴가',
                text = {
                    '{C:attention}모든 핸드{}를 사용하여',
                    '블라인드를 물리치면',
                    '{C:money}$#1#{}를 얻습니다'
                }
            },
            j_losted_joke_book = {
                name = '농담 책',
                text = {
                    '플레이한 핸드가 {C:attention}#3#{}인 경우',
                    '배수 {X:mult,C:white}X#1#{}를 얻습니다.',
                    '다른 {C:attention}포커 핸드{}를 플레이하면 초기화됩니다.',
                    '{C:attention}포커 핸드{}는 런마다 변경됩니다',
                    '{C:inactive}(현재 {X:mult,C:white}X#2#{C:inactive} 배수)',
                }
            },
            j_losted_vandalism = {
                name = '기물 파손',
                text = {
                    '선택 시 모든 {C:attention}블라인드{}의',
                    '점수 요구 사항을',
                    '{C:attention}#1#%{}만큼 감소시킵니다'
                }
            },
            j_losted_artwork = {
                name = '예술 작품',
                text = {
                    '라운드 종료 시',
                    '{C:attention}판매 가치{}가',
                    '{C:money}$#1#{}만큼 증가합니다',
                    '{C:green}#2#/#3#{}의 확률로',
                    '라운드 종료 시 파괴됩니다',
                }
            },
            j_losted_silly_hat = {
                name = '우스꽝스러운 모자',
                text = {
                    '플레이한 핸드에',
                    '{C:attention}#2#{}가 포함된 경우',
                    '이 조커는 배수 {C:mult}+#1#{}를 얻습니다',
                    '{C:inactive}(현재 {C:mult}+#3#{C:inactive} 배수)',
                }
            },
            j_losted_surprise_box = {
                name = '깜짝 상자',
                text = {
                    ''
                }
            },
            j_losted_critic_failure = {
                name = '치명적인 실패',
                text = {
                    '모든 {C:green,E:1,S:1.1}확률{}을',
                    '{C:attention}{C:green,E:1,S:1.1}4{}로 나눕니다',
                    '{C:inactive}(예: {C:green}1/3{C:inactive} -> {C:green}0.25/3{C:inactive})',
                },
                unlock={
                    '한 번의 핸드에서',
                    '최소 {E:1,C:attention}#1#{}개의 칩을',
                    '획득하세요',
                },
            },
            j_losted_limited_edition = {
                name = '한정판',
                text = {
                    '다른 조커를 판매할 때',
                    '판매 가치 {C:money}$1{}당',
                    '배수 {X:mult,C:white}X#1#{}를 얻습니다.',
                    '{C:inactive}(현재 {X:mult,C:white}X#2#{C:inactive} 배수)',
                },
                unlock={
                    '총 {C:attention,E:1}#1#{}장의 조커 카드를',
                    '판매하세요',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_contract = {
                name = '계약',
                text = {
                    '라운드 종료 시',
                    '{C:attention}#1#{}의 레벨을 2만큼',
                    '업그레이드합니다',
                    '다른 {C:attention}포커 핸드{}는 디버프됩니다',
                    '만료될 때까지 판매할 수 없습니다',
                    '{C:attention}#2#{} 라운드 후에 만료됩니다'
                },
            },
            j_losted_hoarding_joker = {
                name = '수집가 조커',
                text = {
                    '{C:dark_edition}+#1#{} 소모품 슬롯',
                }
            },
            j_losted_glutton = {
                name = '수집가 조커',
                text = {
                    '{C:dark_edition}+#1#{} 소모품 슬롯',
                }
            },
            j_losted_big_joker = {
                name = '빅 조커',
                text = {
                    '플레이한 각 {C:attention}10{}이 득점될 때마다',
                    '이 조커는',
                    '배수 {C:mult}+#2#{}를 얻습니다',
                    '{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수)',
                }
            },
            j_losted_doodle = {
                name = '낙서',
                text = {
                    '왼쪽 {C:attention}조커{}의',
                    '능력을 복사합니다',
                    '{C:green}1/#2#{}의 확률로',
                    '라운드 종료 시 파괴됩니다',
                }
            },
            j_losted_booster = {
                name = '부스터',
                text = {
                    '어떤 {C:attention}부스터 팩{}이든 열 때',
                    '칩 {C:chips}+#2#{}을 얻습니다',
                    '{C:inactive}(현재 {C:chips}+#1#{}{C:inactive} 칩)',
                }
            },
            j_losted_turntable = {
                name = '턴테이블',
                text = {
                    '이 라운드에서 이미 득점된 카드와',
                    '동일한 {C:attention}랭크와 수트{}를 가진',
                    '플레이한 카드는',
                    '배수 {C:mult}+#1#{}를 제공합니다'
                },
                unlock = {
                    '{E:1,C:attention}플러시 파이브{}를',
                    '플레이하세요'
                }
            },
            j_losted_replay = {
                name = '리플레이',
                text = {
                    '득점에 사용된 {C:attention}마지막{}',
                    '플레이한 카드를 추가로',
                    '{C:attention}#1#{}번 재활성화합니다',
                }
            },
            j_losted_clown_car = {
                name = '광대 자동차',
                text = {
                    '{C:attention}블라인드{}가 선택되면,',
                    '{C:uncommon}#1#{} 희귀 조커를 생성합니다.',
                    '최대 {C:attention}#2#{}개의 조커를 생성합니다.',
                    '{C:inactive}({C:attention}#3#{}{C:inactive}/#2#){}',
                    '{C:inactive}(공간이 있어야 합니다)',
                },
                unlock = {
                    '챌린지를 완료하세요',
                    '{E:1,C:attention}조커만'
                }
            },
            j_losted_the_joker = {
                name = '“조커”',
                text = {
                    '플레이한 각 {C:attention}#2#{}는 득점 시',
                    '배수 {X:mult,C:white}X#1#{}를 제공합니다',
                    '{C:inactive}{s:0.7}덱에서 가장 흔한 랭크를 선택합니다{}{}',
                },
                unlock = {
                    '{E:1,C:dark_edition}???{}가 수수께끼를 풀면',
                    '{C:dark_edition}그것{}이 모습을 드러냅니다',
                }
            },
            j_losted_obsidian = {
                name = '흑요석',
                text = {
                    '{V:1}#5#{} 수트로',
                    '플레이한 카드는 득점 시',
                    '칩 {C:chips}+#1#{}, 배수 {C:mult}+#2#{}, 배수 {X:mult,C:white}X#3#{} 및',
                    '{C:gold}$#4#{}를 제공합니다',
                    '{s:0.7}라운드 종료 시 수트가 변경됩니다{}'
                },
                unlock = {
                    '{C:dark_edition}네 개의 돌{}을 교환하여',
                    '깨우세요',
                }
            },
            j_losted_jimbo_hood = {
                name = '짐보 후드',
                text = {
                    '득점 종료 시,',
                    '{C:mult}배수{}와 {C:chips}칩{}의',
                    '균형을 맞춥니다',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_roland = {
                name = '롤랑',
                text = {
                    '{C:attention}블라인드{}가 선택되면,',
                    '무작위 {C:dark_edition}네거티브{}',
                    '{C:spectral}유령{} 카드를 생성합니다',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_patati_patata = {
                name = '#1#',
                text = {
                    '랭크 {C:attention}#2#{}로 플레이한 카드는 득점 시',
                    '배수 {B:1,C:white}X#3#{} #4#를 제공합니다',
                    '{C:inactive}#5#',
                    '{C:faded}핸드를 플레이하면 {V:2}#6#{}로 전환됩니다{}'
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_invisible = {
                name = '헬로 월드!',
                text = {
                    '{C:purple,E:1,S:1.1}나는 비밀이야 <3{}'
                }
            },
        },
        Spectral={
            c_losted_mystery_soul = {
                name = '영혼?',
                text = {
                    '{C:dark_edition}“조커”{}를 생성합니다',
                    '{C:inactive}이게 뭐지?{}'
                }
            },
            c_losted_greed = {
                name = '탐욕',
                text = {
                    '선택한 {C:attention}2{}장의 카드를',
                    '{C:attention}다이아몬드 카드{}로',
                    '강화합니다',
                }
            },
            c_losted_aura = {
                name='아우라',
                text={
                    '핸드에 있는 {C:attention}1{}장의 선택된 카드에',
                    '{C:dark_edition}포일{}, {C:dark_edition}홀로그래픽{},',
                    '{C:dark_edition}폴리크롬{} 또는 {C:dark_edition}양자{} 효과를 추가합니다',
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
                name='심령체',
                text={
                    '{C:dark_edition}네거티브{}를',
                    '무작위 {C:attention}조커{}에 추가하고,',
                    '{C:red}-#1#{} 핸드 크기',
                },
            },
        },
        Stake = {
            stake_losted_diamond = {
                name = '다이아몬드 스테이크',
                text = {
                    '{C:attention}최종 앤티{}를 {C:attention}10{}으로',
                    '증가시킵니다',
                    '{s:0.8}이전 스테이크를 모두 적용합니다',
                }
            },
        },
        Tag = {
            tag_losted_quantum = {
                name='양자 태그',
                text={
                    '다음 기본 에디션 상점',
                    '조커가 무료이며',
                    '{C:dark_edition}양자{}가 됩니다',
                },
            },
            tag_losted_plasma = {
                name='플라스마 태그',
                text={
                    '다음 기본 에디션 상점',
                    '조커가 무료이며',
                    '{C:dark_edition}플라스마{}가 됩니다',
                },
            },
        },
        Tarot = {
            c_losted_abyss={
                name = '심연',
                text = {
                    '선택한 {C:attention}#1#{}장의',
                    '카드 랭크를 {C:attention}1{}만큼',
                    '감소시킵니다',
                }
            },
            c_losted_lily = {
                name = '백합',
                text = {
                    '선택한 {C:attention}1{}장의',
                    '카드를 {C:attention}항성 카드{}로',
                    '강화합니다',
                }
            },
            c_losted_provider = {
                name = '제공자',
                text = {
                    '선택한 {C:attention}#1#{}장의',
                    '카드를 {C:attention}토스트 카드{}로',
                    '강화합니다',
                }
            },
            c_losted_wheel_of_fortune = {
                name='운명의 수레바퀴',
                text={
                    '{C:green}1/#2#{}의 확률로',
                    '무작위 {C:attention}조커{}에 {C:dark_edition}포일{}, {C:dark_edition}홀로그래픽{},',
                    '{C:dark_edition}폴리크롬{}, {C:dark_edition}플라스마{} 또는 {C:dark_edition}양자{}',
                    '에디션을 추가합니다',
                },
            },
        },
        Voucher = {
            v_losted_negative_bias = {
                name = '네거티브 편향',
                text = {
                    '{C:dark_edition}네거티브{} 카드가',
                    '상점에 {C:attention}#1#X{}배 더',
                    '자주 나타납니다',
                },
            },
            v_losted_negative_magnet = {
                name = '네거티브 자석',
                text = {
                    '{C:dark_edition}네거티브{} 카드가',
                    '상점에 {C:attention}#1#X{}배 더',
                    '자주 나타납니다',
                },
                unlock={
                    '{C:dark_edition}네거티브{} 에디션의',
                    '{C:attention}조커{} 카드를 최소',
                    '{C:attention}#1#{}장 보유하세요',
                },
            },
            v_losted_stapler = {
                name = '스테이플러',
                text = {
                    '조커가 상점에',
                    '{C:attention}2X{}배 더',
                    '자주 나타납니다',
                },
            },
            v_losted_staple_gun = {
                name = '스테이플 건',
                text = {
                    '{C:common}일반{} 조커의',
                    '출현 빈도를',
                    '줄입니다',
                },
                unlock={
                    '상점에서 총',
                    '{E:1,C:attention}#1#{}개의 {C:blue}조커{}를',
                    '구매하세요',
                    '{C:inactive}(#2#)',
                },
            },
            v_losted_extra_bag = {
                name = '추가 가방',
                text = {
                    '상점당 {C:attention}부스터 팩+1{}이',
                    '가능합니다'
                },
            },
            v_losted_booster_bag = {
                name = '부스터 가방',
                text = {
                    '부스터 팩에서 선택할 수 있는',
                    '추가 카드{C:attention}+2{}',
                },
                unlock = {
                    '{E:1,C:attention}#1#{}개의',
                    '부스터 팩을',
                    '여세요',
                    '{C:inactive}(#2#)'
                }
            },
            v_hone={
                name='연마',
                text={
                    '{C:dark_edition}포일{}, {C:dark_edition}홀로그래픽{},',
                    '{C:dark_edition}폴리크롬{}, {C:dark_edition}양자{} 및 {C:dark_edition}플라스마{} 카드는',
                    '{C:attention}#1#X{}배 더 자주 나타납니다',
                },
            },
            v_glow_up={
                name='글로우 업',
                text={
                    '{C:dark_edition}포일{}, {C:dark_edition}홀로그래픽{},',
                    '{C:dark_edition}폴리크롬{}, {C:dark_edition}양자{} 및 {C:dark_edition}플라스마{} 카드는',
                    '{C:attention}#1#X{}배 더 자주 나타납니다',
                },
                unlock={
                    '{C:dark_edition}포일{}, {C:dark_edition}홀로그래픽{} 또는',
                    '{C:dark_edition}폴리크롬{} 에디션의',
                    '{C:attention}조커{} 카드를 최소',
                    '{C:attention}#1#{}장 보유하세요',
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_losted_magic_trick = '마술',
            c_losted_medieval_era = '중세 시대',
            c_losted_wall = '벽',
            c_losted_breakfast = '아침 식사',
            c_losted_new_times = '새로운 시대',
            c_losted_only_jokers = '조커만',
            c_losted_autopilot = '자동 조종',
            c_losted_mvp = 'M.V.P',
            c_losted_running_on_fumes = '예비 연료로 달리기',
            c_losted_marathon = '마라톤',
        },
        dictionary = {
            k_negative_ex = '네거티브!',
            k_blind_selected_ex = '블라인드 보너스!',
            k_ante_increased_ex = '앤티 증가!',
            k_ante_decreased_ex = '앤티 감소!',
            k_schrodinger_ex = '죽음',
            k_suit_changed_ex = '수트 변경!',
            k_obsidian_awakened_ex = '흑요석 각성',
            toast_eaten = '먹음',
            k_mod_c = '게임 1',
            k_mod_m = '게임 2',
            k_chips = '칩',
            k_losted_enhancements_removed = '강화 제거됨!',
            k_vandalism_ex = '파괴됨!',
            k_plus_toast = '+1 토스트',
            k_even = '짝수',
            k_odd = '홀수',
            k_nothing_ex = '베타는 아무것도 없음',

        k_losted_config_game = '게임',
        k_losted_config_audio_visual = '오디오 및 비주얼',
        k_losted_music_label = '사운드트랙',
            k_losted_music_ost1 = 'Lost Edition OST by Gulira',
            k_losted_music_ost2 = 'Balatro OST by LouisF',

            k_losted_themes_tab = '테마',
            k_losted_theme_label = '선택된 테마',
            k_losted_apply_button = '테마 적용',
            k_losted_loading_themes = '테마 로딩 중...',

            k_fast_forward_label = '빨리 감기',
            k_status_text_label = '텍스트 팝업',

            k_fast_forward_off = '꺼짐',
            k_fast_forward_planets = '행성만',
            k_fast_forward_on = '모두 (빠름)',
            k_fast_forward_unsafe = '모두 극한 (불안정)',
            k_status_text_all = '모두',
            k_status_text_less_annoying = '덜 거슬림',
            k_status_text_no_misc = '기타 숨기기',
            k_status_text_none = '없음',
        },
        v_dictionary = {
            a_xchips = 'X#1# 칩',
            a_powmult = '^#1# 배수',
        },
        v_text = {
            ch_c_boss_rush = { '모든 블라인드는 {C:attention}보스 블라인드{}입니다' },
            ch_c_no_tags = { '블라인드 건너뛰기가 {C:attention}비활성화{}됩니다' },
            ch_c_new_times = { '{C:purple}Lost Edition{}에 속하지 않는 조커는 금지됩니다' },
            ch_c_only_jokers = { '{C:attention}상점{}과 {C:attention}팩{}에서는 조커만 찾을 수 있습니다' },
            ch_c_force_selection = { '항상 카드 1장을 강제로 선택하게 합니다' },
            ch_c_marathon = { '최종 앤티가 앤티 {C:attention}16{}으로 리디렉션됩니다' }
        },
        labels = {
            losted_quantum = '양자',
            losted_plasma = '플라스마',
            losted_evolutionary = '진화',
            losted_chaotic = '혼돈',
            losted_medieval = '중세',
        },
        tutorial = {
            losted_intro_1 = {
                '{C:purple}Lost Edition{}에 오신 것을 환영합니다!'
            },
            losted_intro_2 = {
                '여기까지 오는 사람은 많지 않다는 걸 아시나요?',
            },
            losted_intro_3 = {
                '자유롭게 자신의 속도로 탐험하세요.',
            },
            losted_intro_4 = {
                '여기서 {C:attention}정말 흥미로운 것{}을 발견할 수도 있습니다...',
            }
        }
    },
}
