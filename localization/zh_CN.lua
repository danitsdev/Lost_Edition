return {
    descriptions={
        Back = {
            b_losted_evolutionary = {
                name = '进化牌组',
                text = {
                    '底注大于3的每个{C:attention}偶数底注{}后，',
                    '手牌上限{C:attention}+1{}',
                },
                unlock={
                    '将手牌上限提升至',
                    '{C:attention}#1#{}张',
                },
            },
            b_losted_fortune = {
                name = '幸运牌组',
                text = {
                    '使所有{C:attention}已列出的',
                    '{C:green,E:1,S:1.1}概率{}翻倍',
                    '{C:inactive}(例如：{C:green}1/3{C:inactive} -> {C:green}2/3{C:inactive})',
                },
                unlock = {
                    '使用{C:attention}#1#{}',
                    '在任意难度下',
                    '赢得一局游戏',
                }
            },
            b_losted_chaotic = {
                name = '混乱牌组',
                text = {
                    '所有牌均为随机',
                    '限于{C:attention}6种点数{}和{C:attention}2种花色{}',
                    '开局时拥有{C:attention,T:v_overstock_norm}#1#{}',
                    '盲注基础大小{C:red}X#2#{}',
                },
                unlock = {
                    '使用{C:attention}#1#{}',
                    '在任意难度下',
                    '赢得一局游戏',
                }
            },
            b_losted_medieval = {
                name = '中世纪牌组',
                text = {
                    '小丑牌槽位{C:attention}+#1#{}',
                    '从底注2开始',
                    '{C:attention}所有{}盲注均为{C:attention}Boss盲注{}',
                },
                unlock = {
                    '完成挑战',
                    '{E:1,C:attention}中世纪时代'
                }
            },
        },
        Blind = {
            bl_losted_all_ones = {
                name='全是1！',
                text={
                    '将所有{C:attention}已列出的',
                    '{C:green,E:1,S:1.1}概率{}减半',
                    '{C:inactive}(例如：{C:green}1/2{C:inactive} -> {C:green}0.5/2{C:inactive})',
                },
            },
            bl_losted_privilege = {
                name = '特权',
                text = {
                    '每8张牌中',
                    '有#1#张被削弱',
                }
            },
            bl_losted_vampiric = {
                name = '吸血鬼',
                text = {
                    '移除所有{C:attention}计分牌{}的',
                    '{C:attention}增强效果{}',
                    '{C:inactive}(击败后恢复)'
                }
            },
            bl_losted_inversion = {
                name = '反转',
                text = {
                    '交换{C:attention}出牌次数{}',
                    '和{C:attention}弃牌次数{}',
                }
            },
            bl_losted_amnesia = {
                name = '遗忘',
                text = {
                    '暂时将#1#的',
                    '等级重置为1',
                }
            },
            bl_losted_labyrinth = {
                name = '迷宫',
                text = {
                    '随机一种{C:attention}牌型{}',
                    '被削弱。',
                    '每次出牌后改变',
                },
            },
            bl_losted_watchdog = {
                name = '看门狗',
                text = {
                    '跳过下一家商店',
                }
            },
            bl_losted_balance = {
                name = '天平',
                text = {
                    '点数为{C:attention}偶数{}的牌',
                    '被削弱'
                }
            },
            bl_losted_solitude = {
                name = '孤独',
                text = {
                    '点数为{C:attention}奇数{}的牌',
                    '被削弱'
                }
            },
            bl_losted_annihilation = {
                name = '湮灭',
                text = {
                    '每打出一手牌',
                    '失去一个随机{C:attention}标签{}',
                }
            }
        },
        Edition = {
            e_losted_plasma = {
                name = '等离子',
                text = {
                    '{X:purple,C:white}^#1#{}倍率',
                },
            },
            e_losted_quantum = {
                name = '量子',
                text = {
                    '额外重复此牌的{C:blue}计分{}',
                    '和兼容效果',
                    '{C:blue}1{}次',
                },
            },
        },
        Enhanced = {
            m_losted_diamond = {
                name = '钻石牌',
                text = {
                    '若与另一张计分的{C:attention}钻石牌{}',
                    '{C:attention}相邻{}打出，则重新计分',
                    '此牌在手牌中时提供',
                    '{X:chips,C:white}X#1#{}筹码和{X:mult,C:white}X#2#{}倍率',
                },
            },
            m_losted_stellar = {
                name = '星辰牌',
                text = {
                    '计分时，永久获得',
                    '{C:chips}+#1#{}筹码。',
                },
            },
            m_losted_toast = {
                name = '吐司牌',
                text = {
                    '计分时提供{X:mult,C:white}X#1#{}倍率，',
                    '使用后{C:attention}消耗{}',
                },
            },
            m_wild={
                name='万能花色牌',
                text={
                    '可作为',
                    '任意花色使用。',
                    '免疫花色',
                    '相关的削弱效果'
                },
            },
        },
        Other = {
            losted_platinum_sticker = {
                name = '白金标贴',
                text= {
                    '使用这张小丑牌',
                    '在{C:attention}白金注{}难度下获胜',
                }
            },
			losted_diamond_sticker = {
                name = '钻石标贴',
                text= {
                    '使用这张小丑牌',
                    '在{C:attention}钻石注{}难度下获胜',
                }
            },
            artist = {
                text = {
                    '{C:inactive}艺术家',
                },
            },
            artist_credit = {
                name = '艺术家',
                text = {
                    '{E:1}#1#{}'
                },
            },
            perfect_three_of_a_kind = {
                name = '{C:attention}完美三条{}',
                text = {
                    '由{C:attention}恰好{}',
                    '{C:attention}3{}张{C:attention}相同点数{}的牌组成',
                }
            },
            improvements_of_card = {
                name = '{C:dark_edition}改进{}',
                text = {
                    '是修改卡牌的',
                    '特殊属性：',
                    '{C:dark_edition}增强{}, {C:dark_edition}蜡封{}和{C:dark_edition}版本{}。',
                }
            }
        },
        Joker={
            j_losted_jimball={
                name = '小金宝',
                text = {
                    '选中{C:attention}盲注{}时，',
                    '永久获得',
                    '{C:mult}+#1#{}倍率和{C:chips}+#2#{}筹码',
                    '{C:inactive}(当前为{C:mult}+#3#{}{C:inactive}倍率，{C:chips}+#4#{}{C:inactive}筹码)'
                }
            },
            j_losted_stake_out={
                name = '监视',
                text = {
                    '{X:mult,C:white}X#1#{}倍率，',
                    '若打出的牌触发了{C:attention}Boss盲注{}，',
                    '则失去{C:attention}1次出牌次数{}'
                }
            },
            j_losted_gothic={
                name = '哥特小丑',
                text = {
                    '打出的{C:attention}万能花色牌{}计分时',
                    '提供{C:mult}+#1#{}倍率'
                }
            },
            j_losted_lost_sock={
                name = '丢失的袜子',
                text = {
                    '如果打出的牌包含',
                    '{C:attention}#2#{}张或更少，',
                    '此小丑获得{C:mult}+#1#{}倍率',
                    '{C:inactive}(当前为{C:mult}+#3#{C:inactive}倍率)',
                }
            },
            j_losted_perfect_split={
                name = '完美分裂',
                text = {
                    '每张{C:attention}计分牌{}',
                    '有{C:green}#1#/#2#{}的概率',
                    '永久获得{C:mult}+#3#{}倍率',
                }
            },
            j_losted_sticky={
                name = '黏糊糊的小丑',
                text = {
                    '{C:attention}#1#{}回合后，',
                    '售出此牌可使一个',
                    '随机小丑变为{C:dark_edition}负片{}',
                    '{C:inactive}(当前为{C:attention}#2#{C:inactive}/#1#)',
                },
                unlock={
                    '在一局游戏中拥有',
                    '{E:1,C:attention}8个或更多小丑{}并获胜',
                },
            },
            j_losted_vip_pass={
                name = 'V.I.P.通行证',
                text = {
                    '击败{C:attention}Boss盲注{}后，',
                    '在商店中生成一个额外的',
                    '免费{C:attention}优惠券{}'
                }
            },
            j_losted_welder={
                name = '焊接工',
                text = {
                    '{C:attention}钢铁牌{}提供',
                    '{X:mult,C:white}X#1#{}倍率，',
                    '而非{X:mult,C:white}X1.5{}倍率'
                },
                unlock={
                    '牌组中至少拥有',
                    '{C:attention}#1#{}张',
                    '{E:1,C:attention}#2#{}',
                },
            },
            j_losted_triquetra = {
                name = '三曲枝图',
                text = {
                    '作为{C:attention}完美三条{}一部分的',
                    '已打出牌，会被额外',
                    '{C:attention}重新触发{}#1#次',
                }
            },
            j_losted_the_passage = {
                name = '通道',
                text = {
                    '{C:attention}售出{}此牌时，',
                    '底注等级会改变{C:attention}1{}。',
                    '有{C:green}50%{}的概率{C:blue}增加{}',
                    '有{C:green}50%{}的概率{C:red}减少{}'
                },
                unlock = {
                    '在单局游戏中使用',
                    '{C:attention}#1#{}和{C:attention}#2#{}',
                    '优惠券'
                }
            },
            j_losted_slot_machine = {
                name = '老虎机',
                text = {
                    '每张计分的{C:attention}7{}有',
                    '{C:green}#1#/#2#{}概率赢得{C:mult}+#2#{}倍率,',
                    '{C:green}#1#/#4#{}概率赢得{C:gold}$#3#{},',
                    '{C:green}#1#/#8#{}概率赢得{X:mult,C:white}X#4#{}倍率',
                    '{C:green}#1#/#5#{}概率失去所有{C:money}${}',
                },
                unlock = {
                    '打出包含3张',
                    '{C:attention,E:1}幸运牌{}的',
                    '点数为{C:attention,E:1}7{}的三条',
                },
            },
            j_losted_strawberry_milkshake = {
                name = '草莓奶昔',
                text = {
                    '{X:chips,C:white}X#1#{}筹码,',
                    '每打出一回合',
                    '失去{X:chips,C:white}X#2#{}筹码。',
                    '{C:dark_edition}哦，太丝滑了！{}'
                }
            },
            j_losted_schrodinger = {
                name = '薛定谔的猫',
                text = {
                    '有{C:green}#1#/#2#{}的概率',
                    '获得{C:chips}+#3#{}筹码',
                }
            },
            j_losted_mitosis = {
                name = '有丝分裂',
                text = {
                    '如果回合的{C:attention}第一手牌{}仅由',
                    '{C:attention}相同点数{}的牌组成，',
                    '所有计分牌复制最右边牌的',
                    '{C:dark_edition}改进{}。',
                },
            },
            j_losted_last_resort = {
                name = '最后手段',
                text = {
                    '如果回合的{C:attention}第一次弃牌{}',
                    '恰好有{C:attention}2{}张牌，',
                    '射击并摧毁它们'
                }
            },
            j_losted_magician = {
                name = '魔术师小丑',
                text = {
                    '使用{C:purple}塔罗牌{}时，',
                    '有{C:green}#1#/#2#{}的概率',
                    '生成一张{C:spectral}幻灵牌{}',
                    '{C:inactive}(必须有空位){}'
                },
            },
            j_losted_disruption = {
                name = '干扰',
                text = {
                    '{X:mult,C:white}X1{}倍率,',
                    '此局中每打出一次',
                    '该{C:attention}牌型{}，',
                    '获得{X:mult,C:white}X#1#{}倍率',
                }
            },
            j_losted_passion_fruit = {
                name = '百香果',
                text = {
                    '每次出牌',
                    '获得{C:chips}+#2#{}筹码',
                    '回合结束时有{C:green}#3#/#4#{}的概率',
                    '被摧毁',
                    '{C:inactive}(当前为{C:chips}+#1#{}{C:inactive}筹码)'
                }
            },
            j_losted_passion_juice = {
                name = '百香果汁',
                text = {
                    '每次出牌',
                    '获得{X:chips,C:white}X#2#{}筹码',
                    '回合结束时有{C:green}#3#/#4#{}的概率',
                    '被摧毁',
                    '{C:inactive}(当前为{X:chips,C:white}X#1#{}{C:inactive}筹码)'
                }
            },
            j_losted_statue = {
                name = '石像',
                text = {
                    '计分的{C:attention}石头牌{}',
                    '提供{X:chips,C:white}X#1#{}筹码'
                },
                unlock = {
                    '打出一手包含',
                    '5张{C:attention,E:1}石头牌{}的牌',
                }
            },
            j_losted_rule_book = {
                name = '规则书',
                text = {
                    '手中{C:attention}最后一张计分牌{}',
                    '提供{X:mult,C:white}X#1#{}倍率',
                }
            },
            j_losted_toc_toc = {
                name = '叩叩',
                text = {
                    '打出一手牌时，获得',
                    '等同于{C:attention}剩余弃牌次数{}',
                    '的{C:money}${}',
                }
            },
            j_losted_advantage_addiction = {
                name = '优势成瘾',
                text = {
                    '额外重新触发',
                    '带有{C:dark_edition}改进{}的牌',
                    '#1#{}次',
                },
                unlock={
                    '牌组中至少有',
                    '{E:1,C:attention}#1#{}张',
                    '带有{C:dark_edition}改进{}的牌',
                },
            },
            j_losted_jersey_10 = {
                name = '10号球衣',
                text = {
                    '如果打出的牌是单张{C:attention}10{}，',
                    '为其添加一个随机的{C:dark_edition}版本{}',
                }
            },
            j_losted_harlequin = {
                name = '丑角',
                text = {
                    '{C:chips}+#1#{}筹码',
                }
            },
            j_losted_totem = {
                name = '图腾',
                text = {
                    '有{C:green}#1#/#2#{}的概率',
                    '{C:attention}使{}所有获得的{C:money}${}加倍',
                },
                unlock = {
                    '完成挑战',
                    '{E:1,C:attention}油尽灯枯'
                }
            },
            j_losted_duke = {
                name = '公爵',
                text = {
                    '每有一张{C:attention}J{}在手牌中，',
                    '额外重新触发',
                    '打出的{C:attention}第一张{}计分牌',
                    '{C:attention}1{}次'
                },
            },
            j_losted_mysterious = {
                name = '???',
                text = {
                    '{C:inactive}(#1#/#2#)',
                    '{C:inactive,s:0.7}牌型'
                },
                unlock = {
                    '完成挑战',
                    '{E:1,C:attention}马拉松'
                }
            },
            j_losted_rubiks_cube = {
                name = '魔方',
                text = {
                    '每打出一张{C:attention}6{}，获得{C:mult}+#2#{}倍率',
                    '每打出一张{C:attention}9{}，获得{C:chips}+#1#{}筹码',
                }
            },
            j_losted_demonic_joker = {
                name = '恶魔小丑',
                text = {
                    '每打出一张{C:attention}6{}，获得{C:gold}$#1#{}',
                    '若打出的牌包含{C:attention}三条{}，',
                    '每张牌的金币{C:attention}翻倍{}',
                    '有{C:green}#2#/#3#{}的概率不触发',
                },
                unlock = {
                    '打出包含3张',
                    '{C:attention,E:1}黄金牌{}的',
                    '点数为{C:attention,E:1}6{}的三条',
                },
            },
            j_losted_moist_cake = {
                name = '湿润蛋糕',
                text = {
                    '打出的{V:1}#2#{}花色牌',
                    '计分时提供',
                    '{C:mult}+#1#{}倍率',
                    '{s:0.8}回合结束时花色改变',
                }
            },
            j_losted_rocker={
                name = '摇滚乐手',
                text = {
                    '打出的{C:attention}石头牌{}',
                    '计分时提供{C:mult}+#1#{}倍率'
                }
            },
            j_losted_piggy_bank = {
                name = '储钱罐',
                text = {
                    '回合结束时每收到',
                    '{C:money}$1{}的利息，',
                    '获得{C:chips}+#2#{}筹码。',
                    '{C:inactive}(当前为{C:chips}+#1#{C:inactive}筹码)'
                }
            },
            j_losted_hematophilia = {
                name = '血友病',
                text = {
                    '每{C:attention}摧毁{}一张牌或小丑，',
                    '永久获得{C:mult}+#2#{}倍率',
                    '{C:inactive}(当前为{C:mult}+#1#{}{C:inactive}倍率)'
                }
            },
            j_losted_chicken_cleide = {
                name = '母鸡克莱德',
                text = {
                    '选中{C:attention}Boss盲注{}时，',
                    '产下一个{C:dark_edition}负片{}的{C:attention}蛋{}。最多{C:attention}#1#{}个蛋',
                    '{C:inactive}(当前{C:attention}#2#{C:inactive}/#1#)',
                    '{C:inactive,s:0.9}(下完蛋后被摧毁)'
                },
                unlock = {
                    '完成挑战',
                    '{E:1,C:attention}煎蛋卷'
                }
            },
            j_losted_seal_stamp = {
                name = '蜡封印章',
                text = {
                    '击败{C:attention}Boss盲注{}时，',
                    '生成一张随机的{C:spectral}蜡封幻灵牌{}',
                    '{C:inactive}(必须有空位){}'
                }
            },
            j_losted_pot_of_greed = {
                name = '强欲之壶',
                text = {
                    '出牌或弃牌时，',
                    '额外抽取{C:attention}1{}张牌',
                },
                unlock={
                    '达到',
                    '赌注等级{E:1,C:attention}#1#',
                },
            },
            j_losted_sarcophagus = {
                name = '石棺',
                text = {
                    '击败{C:attention}Boss盲注{}时，',
                    '生成一张随机的{C:dark_edition}负片{}',
                    '{C:uncommon}罕见{}或{C:rare}稀有{}小丑，',
                    '然后{C:attention}自我摧毁{}'
                },
                unlock = {
                    '在一局游戏中拥有',
                    '至少2张{C:dark_edition}负片{}小丑并获胜'
                }
            },
            j_losted_cosmos = {
                name = '宇宙',
                text = {
                    '{C:planet}星球牌{}在你',
                    '的{C:attention}消耗品{}区域时',
                    '提供{X:mult,C:white}X#1#{}倍率',
                },
                unlock={
                    '在商店中',
                    '总共购买',
                    '{C:attention}#1#{}张{C:planet}星球牌{}',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_error = {
                name = '错误',
                text = {
                    '如果回合的{C:attention}第一手牌{}',
                    '最多有{C:attention}3{}张牌，',
                    '则随机化已打出牌的',
                    '{C:attention}花色{}、{C:attention}点数{}和{C:dark_edition}改进{}',
                },
                 unlock={
                    '用{E:1,C:attention}#1#',
                    '打赢Boss盲注',
                },
            },
            j_losted_miner = {
                name = '矿工小丑',
                text = {
                    '计分时有{C:green}#1#/#2#{}的概率',
                    '生成一张{C:spectral}贪婪{}幻灵牌',
                    '{C:inactive}(必须有空位){}'
                }
            },
            j_losted_toaster = {
                name = '烤面包机',
                text = {
                    '计分{C:attention}对子{}后，',
                    '将牌{C:attention}烤焦{}',
                    '并返回牌组'
                }
            },
            j_losted_baker = {
                name = '面包师小丑',
                text = {
                    '选中{C:attention}盲注{}时，',
                    '向你的牌组中',
                    '添加一张{C:attention}吐司{}牌',
                }
            },
            j_losted_spirit_box = {
                name = '通灵盒',
                text = {
                    '每使用一张{C:purple}幻灵牌{}',
                    '获得{X:mult,C:white}X#1#{}倍率',
                    '{C:inactive}(当前为{X:mult,C:white}X#2#{}{C:inactive}倍率)',
                }
            },
            j_losted_precious = {
                name = '珍贵小丑',
                text = {
                    '每当一张{C:attention}钻石牌{}',
                    '被重新计分时，',
                    '此小丑获得{C:mult}+#1#{}倍率',
                    '{C:inactive}(当前为{C:mult}+#2#{}{C:inactive}倍率)',
                }
            },
            j_losted_laser_microjet = {
                name = '微喷激光',
                text = {
                    '有{C:green}#1#/#2#{}的概率',
                    '重新计分已经',
                    '被重新计分的{C:attention}钻石牌{}',
                },
                unlock = {
                    '打出一手包含',
                    '5张{C:attention,E:1}钻石牌{}的牌',
                }
            },
            j_losted_step_by_step = {
                name = '循序渐进',
                text = {
                    '如果打出的牌包含',
                    '一个{C:attention}#2#{}，',
                    '此小丑获得{C:mult}+#1#{}倍率',
                    '{C:inactive}(当前为{C:mult}+#3#{C:inactive}倍率)',
                }
            },
            j_losted_jimboy = {
                name = 'Jimboy',
                text = {
                    '{C:attention}弃牌{}时，在',
                    '两种不同游戏间切换：',
                    '当前：{V:1}#3# (+#5# #4#){}',
                }
            },
            j_losted_red_joker = {
                name='红色小丑',
                text={
                    '{C:attention}牌组{}中每剩下#2#张牌，',
                    '提供{C:mult}+#1#{}倍率',
                    '{C:inactive}(当前为{C:mult}+#3#{C:inactive}倍率)',
                },
            },
            j_losted_bank = {
                name='银行',
                text={
                    '每拥有{C:money}$#2#{}，',
                    '此小丑获得{X:mult,C:white}X#1#{}倍率',
                    '{C:inactive}(当前为{X:mult,C:white}X#3#{C:inactive}倍率)',
                },
            },
            j_losted_big_bang = {
                name='大爆炸',
                text={
                    '选中{C:attention}盲注{}时',
                    '生成一张{C:planet}星球牌{}',
                    '{C:inactive}(必须有空位)',
                },
            },
            j_losted_artist={
                name='艺术家小丑',
                text={
                    '如果打出的牌包含{C:attention}同花{}，',
                    '每张牌有{C:green}#1#/#2#{}的概率',
                    '变为{C:attention}万能花色牌{}',
                },
                unlock = {
                    '打出一手包含',
                    '5张{C:attention,E:1}万能花色牌{}的牌',
                }
            },
            j_losted_shiny_gloves = {
                name = '闪亮手套',
                text = {
                    '如果打出的牌包含',
                    '一个{C:attention}#2#{}，',
                    '此小丑获得{C:mult}+#1#{}倍率',
                    '{C:inactive}(当前为{C:mult}+#3#{C:inactive}倍率)',
                }
            },
            j_losted_fair_price = {
                name = '公道价',
                text = {
                    '{X:mult,C:white}X#1#{}倍率，',
                    '回合结束时',
                    '支付{C:money}$#2#{}',
                    '{C:inactive}无法支付则摧毁{}',
                }
            },
            j_losted_paid_vacation = {
                name = '带薪休假',
                text = {
                    '如果用完{C:attention}所有出牌次数{}',
                    '击败盲注，',
                    '获得{C:money}$#1#{}'
                }
            },
            j_losted_joke_book = {
                name = '笑话书',
                text = {
                    '若打出{C:attention}#3#{}，',
                    '获得{X:mult,C:white}X#1#{}倍率',
                    '打出其他{C:attention}牌型{}则重置。',
                    '{C:attention}牌型{}每局游戏改变',
                    '{C:inactive}(当前为{X:mult,C:white}X#2#{C:inactive}倍率)',
                }
            },
            j_losted_vandalism = {
                name = '破坏行为',
                text = {
                    '选中所有{C:attention}盲注{}时，',
                    '其分数要求',
                    '降低{C:attention}#1#%{}'
                }
            },
            j_losted_artwork = {
                name = '艺术品',
                text = {
                    '回合结束时',
                    '{C:attention}售价{}增加{C:money}$#1#{}',
                    '有{C:green}#2#/#3#{}的概率在',
                    '回合结束时被摧毁',
                }
            },
            j_losted_silly_hat = {
                name = '傻瓜帽',
                text = {
                    '如果打出的牌包含',
                    '一个{C:attention}#2#{}，',
                    '此小丑获得{C:mult}+#1#{}倍率',
                    '{C:inactive}(当前为{C:mult}+#3#{C:inactive}倍率)',
                }
            },
            j_losted_surprise_box = {
                name = '惊喜盒子',
                text = {
                    ''
                }
            },
            j_losted_critic_failure = {
                name = '大失败',
                text = {
                    '将所有{C:green,E:1,S:1.1}概率{}',
                    '{C:attention}除以{C:green,E:1,S:1.1}4{}',
                    '{C:inactive}(例如：{C:green}1/3{C:inactive} -> {C:green}0.25/3{C:inactive})',
                },
                unlock={
                    '单次出牌',
                    '获得至少',
                    '{E:1,C:attention}#1#{}筹码',
                },
            },
            j_losted_limited_edition = {
                name = '限定版',
                text = {
                    '售出其他小丑时，',
                    '每{C:money}$1{}的售价',
                    '获得{X:mult,C:white}X#1#{}倍率。',
                    '{C:inactive}(当前为{X:mult,C:white}X#2#{C:inactive}倍率)',
                },
                unlock={
                    '总共售出',
                    '{C:attention,E:1}#1#{}张小丑牌',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_contract = {
                name = '契约',
                text = {
                    '回合结束时，',
                    '将{C:attention}#1#{}的等级提升2级',
                    '其他{C:attention}牌型{}被削弱',
                    '到期前无法售出',
                    '在{C:attention}#2#{}回合后到期'
                },
            },
            j_losted_hoarding_joker = {
                name = '囤积小丑',
                text = {
                    '{C:dark_edition}+#1#{}个消耗品槽位',
                }
            },
            j_losted_glutton = {
                name = '囤积小丑',
                text = {
                    '{C:dark_edition}+#1#{}个消耗品槽位',
                }
            },
            j_losted_big_joker = {
                name = '大小丑',
                text = {
                    '每打出一张{C:attention}10{}并计分时，',
                    '此小丑获得',
                    '{C:mult}+#2#{}倍率',
                    '{C:inactive}(当前为{C:mult}+#1#{C:inactive}倍率)',
                }
            },
            j_losted_doodle = {
                name = '涂鸦',
                text = {
                    '复制左侧',
                    '{C:attention}小丑{}的能力',
                    '有{C:green}#1#/#2#{}的概率在',
                    '回合结束时被摧毁',
                }
            },
            j_losted_booster = {
                name = '补充包爱好者',
                text = {
                    '打开任意{C:attention}补充包{}时',
                    '获得{C:chips}+#2#{}筹码',
                    '{C:inactive}(当前为{C:chips}+#1#{}{C:inactive}筹码)',
                }
            },
            j_losted_turntable = {
                name = '唱片机',
                text = {
                    '打出的牌与本回合已计分的',
                    '某张牌{C:attention}点数和花色{}相同时，',
                    '提供{C:mult}+#1#{}倍率'
                },
                unlock = {
                    '打出',
                    '{E:1,C:attention}同花五条'
                }
            },
            j_losted_replay = {
                name = '重播',
                text = {
                    '额外重新触发',
                    '打出的{C:attention}最后一张{}',
                    '计分牌{C:attention}#1#{}次',
                }
            },
            j_losted_clown_car = {
                name = '小丑车',
                text = {
                    '选中{C:attention}盲注{}时，',
                    '生成{C:uncommon}#1#个罕见小丑{}。',
                    '最多生成{C:attention}#2#个小丑。',
                    '{C:inactive}({C:attention}#3#{}{C:inactive}/#2#){}',
                    '{C:inactive}(必须有空位)',
                },
                unlock = {
                    '完成挑战',
                    '{E:1,C:attention}只有小丑'
                }
            },
            j_losted_the_joker = {
                name = '“小丑”',
                text = {
                    '每打出一张{C:attention}#2#{}计分时，',
                    '提供{X:mult,C:white}X#1#{}倍率',
                    '{C:inactive}{s:0.7}选择牌组中最常见的点数{}{}',
                },
                unlock = {
                    '当{E:1,C:dark_edition}???{}完成',
                    '它的谜题时，{C:dark_edition}它{}将揭示真身',
                }
            },
            j_losted_obsidian = {
                name = '黑曜石',
                text = {
                    '打出的{V:1}#5#{}花色牌',
                    '计分时提供',
                    '{C:chips}+#1#{}筹码, {C:mult}+#2#{}倍率, {X:mult,C:white}X#3#{}倍率',
                    '和{C:gold}$#4#{}',
                    '{s:0.7}回合结束时花色改变{}'
                },
                unlock = {
                    '交易{C:dark_edition}四块石头{}',
                    '来唤醒它',
                }
            },
            j_losted_jimbo_hood = {
                name = '金宝·胡德',
                text = {
                    '计分结束时，',
                    '平衡{C:mult}倍率{}和{C:chips}筹码{}',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_roland = {
                name = '罗兰',
                text = {
                    '选中{C:attention}盲注{}时，',
                    '生成一张随机的{C:dark_edition}负片{}',
                    '{C:spectral}幻灵牌{}',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_patati_patata = {
                name = '#1#',
                text = {
                    '打出的点数为{C:attention}#2#{}的牌计分时，',
                    '提供{B:1,C:white}X#3#{}#4#',
                    '{C:inactive}#5#',
                    '{C:faded}出牌后切换为{V:2}#6#{}'
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_invisible = {
                name = '你好，世界！',
                text = {
                    '{C:purple,E:1,S:1.1}我是一个秘密 <3{}'
                }
            },
        },
        Spectral={
            c_losted_mystery_soul = {
                name = '灵魂？',
                text = {
                    '生成{C:dark_edition}“小丑”{}',
                    '{C:inactive}这是什么？{}'
                }
            },
            c_losted_greed = {
                name = '贪婪',
                text = {
                    '将{C:attention}2{}张',
                    '选中的牌增强为',
                    '{C:attention}钻石牌{}',
                }
            },
            c_losted_aura = {
                name='光环',
                text={
                    '为手中的{C:attention}1{}张选定牌添加',
                    '{C:dark_edition}闪箔{}, {C:dark_edition}镭射{},',
                    '{C:dark_edition}多彩{}或{C:dark_edition}量子{}效果',
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
                name='灵质',
                text={
                    '为随机一个{C:attention}小丑{}添加',
                    '{C:dark_edition}负片{}效果，',
                    '手牌上限{C:red}-#1#{}',
                },
            },
        },
        Stake = {
            stake_losted_diamond = {
                name = '钻石注',
                text = {
                    '将{C:attention}最终底注{}增加到{C:attention}10{}',
                    '{s:0.8}应用所有之前的赌注效果',
                }
            },
        },
        Tag = {
            tag_losted_quantum = {
                name='量子标签',
                text={
                    '商店里的下一张',
                    '基础版本小丑牌免费',
                    '并变为{C:dark_edition}量子{}',
                },
            },
            tag_losted_plasma = {
                name='等离子标签',
                text={
                    '商店里的下一张',
                    '基础版本小丑牌免费',
                    '并变为{C:dark_edition}等离子{}',
                },
            },
        },
        Tarot = {
            c_losted_abyss={
                name = '深渊',
                text = {
                    '将{C:attention}#1#{}张选定牌的',
                    '点数减少{C:attention}1{}',
                }
            },
            c_losted_lily = {
                name = '百合',
                text = {
                    '将{C:attention}1{}张选定牌',
                    '增强为',
                    '{C:attention}星辰牌{}',
                }
            },
            c_losted_provider = {
                name = '供应者',
                text = {
                    '将{C:attention}#1#{}张选定牌',
                    '增强为',
                    '{C:attention}吐司牌{}',
                }
            },
            c_losted_wheel_of_fortune = {
                name='命运之轮',
                text={
                    '有{C:green}#1#/#2#{}的概率为',
                    '随机一个小丑添加',
                    '{C:dark_edition}闪箔{}, {C:dark_edition}镭射{}, {C:dark_edition}多彩{},',
                    '{C:dark_edition}等离子{},或{C:dark_edition}量子{}版本',
                },
            },
        },
        Voucher = {
            v_losted_negative_bias = {
                name = '负片偏好',
                text = {
                    '{C:dark_edition}负片{}牌在商店中',
                    '出现的频率提高',
                    '{C:attention}#1#X{}',
                },
            },
            v_losted_negative_magnet = {
                name = '负片磁铁',
                text = {
                    '{C:dark_edition}负片{}牌在商店中',
                    '出现的频率提高',
                    '{C:attention}#1#X{}',
                },
                unlock={
                    '拥有至少{C:attention}#1#{}张',
                    '带有{C:dark_edition}负片{}版本的',
                    '{C:attention}小丑{}牌',
                },
            },
            v_losted_stapler = {
                name = '订书机',
                text = {
                    '小丑在商店中',
                    '出现的频率提高',
                    '{C:attention}2X{}',
                },
            },
            v_losted_staple_gun = {
                name = '订书枪',
                text = {
                    '降低{C:common}普通{}小丑',
                    '的出现频率',
                },
                unlock={
                    '在商店中',
                    '总共购买',
                    '{E:1,C:attention}#1#{}个{C:blue}小丑{}',
                    '{C:inactive}(#2#)',
                },

            },
            v_losted_extra_bag = {
                name = '额外腰包',
                text = {
                    '每个{C:attention}商店{}可获得',
                    '{C:attention}+1个补充包{}'
                },
            },
            v_losted_booster_bag = {
                name = '补充包腰包',
                text = {
                    '补充包中可供选择的',
                    '卡牌{C:attention}+2{}',
                },
                unlock = {
                    '打开{E:1,C:attention}#1#{}个',
                    '补充包',
                    '{C:inactive}(#2#)'
                }
            },
            v_hone={
                name='磨砺',
                text={
                    '{C:dark_edition}闪箔{}, {C:dark_edition}镭射{},',
                    '{C:dark_edition}多彩{}, {C:dark_edition}量子{}和{C:dark_edition}等离子{}',
                    '牌的出现频率提高{C:attention}#1#X{}',
                },
            },
            v_glow_up={
                name='发光',
                text={
                    '{C:dark_edition}闪箔{}, {C:dark_edition}镭射{},',
                    '{C:dark_edition}多彩{}, {C:dark_edition}量子{}和{C:dark_edition}等离子{}',
                    '牌的出现频率提高{C:attention}#1#X{}',
                },
                unlock={
                    '拥有至少{C:attention}#1#{}张',
                    '带有{C:dark_edition}闪箔{}, {C:dark_edition}镭射{},或',
                    '{C:dark_edition}多彩{}版本的{C:attention}小丑{}牌',
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_losted_magic_trick = '一个魔术',
            c_losted_medieval_era = '中世纪时代',
            c_losted_wall = '高墙',
            c_losted_breakfast = '早餐',
            c_losted_new_times = '新时代',
            c_losted_only_jokers = '只有小丑',
            c_losted_autopilot = '自动驾驶',
            c_losted_mvp = 'M.V.P',
            c_losted_running_on_fumes = '油尽灯枯',
            c_losted_marathon = '马拉松',
        },
        dictionary = {
            k_negative_ex = '负片！',
            k_blind_selected_ex = '盲注奖励！',
            k_ante_increased_ex = '底注增加！',
            k_ante_decreased_ex = '底注减少！',
            k_schrodinger_ex = '死了',
            k_suit_changed_ex = '花色已变！',
            k_obsidian_awakened_ex = '黑曜石觉醒',
            toast_eaten = '已吃掉',
            k_mod_c = '游戏1',
            k_mod_m = '游戏2',
            k_chips = '筹码',
            k_losted_enhancements_removed = '增强已移除！',
            k_vandalism_ex = '已破坏！',
            k_plus_toast = '+1吐司',
            k_even = '偶数',
            k_odd = '奇数',
            k_nothing_ex = '贝塔什么也没得到',

        k_losted_config_game = '游戏',
        k_losted_config_audio_visual = '音频与视觉',
        k_losted_music_label = '原声带',
            k_losted_music_ost1 = '失落版OST - Gulira',
            k_losted_music_ost2 = 'Balatro OST - LouisF',

            k_losted_themes_tab = '主题',
            k_losted_theme_label = '已选主题',
            k_losted_apply_button = '应用主题',
            k_losted_loading_themes = '正在加载主题...',

            k_fast_forward_label = '快进',
            k_status_text_label = '文本弹出窗口',

            k_fast_forward_off = '关闭',
            k_fast_forward_planets = '仅星球牌',
            k_fast_forward_on = '全部（快速）',
            k_status_text_all = '全部',
            k_status_text_less_annoying = '减少干扰',
            k_status_text_no_misc = '隐藏杂项',
            k_status_text_none = '无',
        },
        v_dictionary = {
            a_xchips = 'X#1#筹码',
            a_powmult = '^#1#倍率',
        },
        v_text = {
            ch_c_boss_rush = { '所有盲注都是{C:attention}Boss盲注{}' },
            ch_c_no_tags = { '{C:attention}跳过盲注{}已禁用' },
            ch_c_new_times = { '不属于{C:purple}失落版{}的小丑被禁用' },
            ch_c_only_jokers = { '只能在{C:attention}商店{}和{C:attention}补充包{}中找到小丑' },
            ch_c_force_selection = { '强制始终选择1张牌' },
            ch_c_marathon = { '最终底注重定向到底注{C:attention}16{}' }
        },
        labels = {
            losted_quantum = '量子',
            losted_plasma = '等离子',
            losted_evolutionary = '进化',
            losted_chaotic = '混乱',
            losted_medieval = '中世纪',
        },
        tutorial = {
            losted_intro_1 = {
                '欢迎来到{C:purple}失落版{}！'
            },
            losted_intro_2 = {
                '你知道吗，很少有人能来到这里。',
            },
            losted_intro_3 = {
                '慢慢来，按自己的节奏探索。',
            },
            losted_intro_4 = {
                '也许你会在这里发现一些{C:attention}真正有趣的东西{}...',
            }
        }
    },
}
