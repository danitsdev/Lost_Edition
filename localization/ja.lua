return {
    descriptions={
        Back = {
            b_losted_evolutionary = {
                name = 'エボリューショナリーデッキ',
                text = {
                    '3より大きい偶数の{C:attention}アンティ{}ごとに、',
                    'ハンドサイズが{C:attention}+1{}される',
                },
                unlock={
                    'ハンドサイズを',
                    '{C:attention}#1#{}枚に増やす',
                },
            },
            b_losted_fortune = {
                name = 'フォーチュンデッキ',
                text = {
                    '記載されているすべての',
                    '{C:attention}確率{}を{C:green,E:1,S:1.1}2倍{}にする',
                    '{C:inactive}(例: {C:green}3分の1{C:inactive} -> {C:green}3分の2{C:inactive})',
                },
                unlock = {
                    '{C:attention}#1#{}で',
                    'いずれかの難易度で',
                    'ランに勝利する',
                }
            },
            b_losted_chaotic = {
                name = 'カオティックデッキ',
                text = {
                    'すべてのカードはランダム化され、',
                    '{C:attention}6ランク{}と{C:attention}2スーツ{}に限定される',
                    '{C:attention,T:v_overstock_norm}#1#{}でランをスタート',
                    'ブラインドの基本サイズ{C:red}X#2#{}',
                },
                unlock = {
                    '{C:attention}#1#{}で',
                    'いずれかの難易度で',
                    'ランに勝利する',
                }
            },
            b_losted_medieval = {
                name = 'メディーバルデッキ',
                text = {
                    'ジョーカースロット {C:attention}+#1#{}',
                    'アンティ2から',
                    '{C:attention}すべての{}ブラインドが{C:attention}ボスブラインド{}になる',
                },
                unlock = {
                    'チャレンジをクリアする',
                    '{E:1,C:attention}中世の時代'
                }
            },
        },
        Blind = {
            bl_losted_all_ones = {
                name='おっと！全部1だ',
                text={
                    '記載されているすべての',
                    '{C:attention}確率{}を{C:green,E:1,S:1.1}半分{}にする',
                    '{C:inactive}(例: {C:green}2分の1{C:inactive} -> {C:green}2分の0.5{C:inactive})',
                },
            },
            bl_losted_privilege = {
                name = '特権',
                text = {
                    '8枚中#1#枚のカードに',
                    'デバフがかかる',
                }
            },
            bl_losted_vampiric = {
                name = 'ヴァンパイアリック',
                text = {
                    'スコアされたすべてのカードから',
                    '{C:attention}強化{}を取り除く',
                    '{C:inactive}(撃破時に復元)'
                }
            },
            bl_losted_inversion = {
                name = '反転',
                text = {
                    '{C:attention}ハンド{}と',
                    '{C:attention}ディスカード{}の数を入れ替える',
                }
            },
            bl_losted_amnesia = {
                name = 'アムネジア',
                text = {
                    '一時的に#1#を',
                    'レベル1に',
                    'リセットする',
                }
            },
            bl_losted_labyrinth = {
                name = 'ラビリンス',
                text = {
                    'ランダムな{C:attention}ポーカーハンド{}に',
                    'デバフがかかる。',
                    'プレイごとに変化する',
                },
            },
            bl_losted_watchdog = {
                name = '番犬',
                text = {
                    '次のショップをスキップする',
                }
            },
            bl_losted_balance = {
                name = 'バランス',
                text = {
                    '{C:attention}偶数{}ランクのカードに',
                    'デバフがかかる'
                }
            },
            bl_losted_solitude = {
                name = '孤独',
                text = {
                    '{C:attention}奇数{}ランクのカードに',
                    'デバフがかかる'
                }
            },
            bl_losted_annihilation = {
                name = '殲滅',
                text = {
                    'ハンドをプレイするたびに',
                    'ランダムな{C:attention}タグ{}を失う',
                }
            }
        },
        Edition = {
            e_losted_plasma = {
                name = 'プラズマ',
                text = {
                    '倍率 {X:purple,C:white}^#1#{}',
                },
            },
            e_losted_quantum = {
                name = 'クォンタム',
                text = {
                    'このカードの{C:blue}全効果{}を',
                    '追加で{C:blue}1回{}繰り返す',
                },
            },
        },
        Enhanced = {
            m_losted_diamond = {
                name = 'ダイヤモンドカード',
                text = {
                    'スコアされた他の{C:attention}ダイヤモンドカード{}に',
                    '{C:attention}隣接{}してプレイされた場合、再スコアする',
                    '手札にある間、チップ{X:chips,C:white}X#1#{}と倍率{X:mult,C:white}X#2#{}',
                },
            },
            m_losted_stellar = {
                name = 'ステラカード',
                text = {
                    'スコアされた時、',
                    '永久にチップ{C:chips}+#1#{}を得る。',
                },
            },
            m_losted_toast = {
                name = 'トーストカード',
                text = {
                    'スコアされた時、',
                    '倍率{X:mult,C:white}X#1#{}',
                    '使用後に{C:attention}消費{}される',
                },
            },
            m_wild={
                name='ワイルドスーツカード',
                text={
                    'どのスーツとしても',
                    '使用できる。',
                    'スーツのデバフを',
                    '受けない'
                },
            },
        },
        Other = {
            losted_platinum_sticker = {
                name = 'プラチナステッカー',
                text= {
                    'このジョーカーを使用して',
                    '{C:attention}プラチナステーク{}の',
                    '難易度で勝利した'
                }
            },
			losted_diamond_sticker = {
                name = 'ダイヤモンドステッカー',
                text= {
                    'このジョーカーを使用して',
                    '{C:attention}ダイヤモンドステーク{}の',
                    '難易度で勝利した'
                }
            },
            artist = {
                text = {
                    '{C:inactive}アーティスト',
                },
            },
            artist_credit = {
                name = 'アーティスト',
                text = {
                    '{E:1}#1#{}'
                },
            },
            perfect_three_of_a_kind = {
                name = '{C:attention}パーフェクトスリーカード{}',
                text = {
                    '{C:attention}同じランク{}のカード',
                    '{C:attention}ちょうど3枚{}で',
                    '構成される',
                }
            },
            improvements_of_card = {
                name = '{C:dark_edition}改良{}',
                text = {
                    'カードを修正する',
                    '特別な属性：',
                    '{C:dark_edition}強化{}、{C:dark_edition}シール{}、{C:dark_edition}エディション{}。',
                }
            }
        },
        Joker={
            j_losted_jimball={
                name = 'ジンボリーニョ',
                text = {
                    '{C:attention}ブラインド{}が選択された時、',
                    '永久に',
                    '{C:mult}+#1#{}倍率と{C:chips}+#2#{}チップを得る',
                    '{C:inactive}(現在、倍率{C:mult}+#3#{}, チップ{C:chips}+#4#{}{C:inactive})'
                }
            },
            j_losted_stake_out={
                name = '見張り番',
                text = {
                    '倍率{X:mult,C:white}X#1#{}、',
                    'プレイしたハンドが{C:attention}ボスブラインド{}を',
                    '発動させた場合、{C:attention}ハンドを1失う{}'
                }
            },
            j_losted_gothic={
                name = 'ゴシックジョーカー',
                text = {
                    '{C:attention}ワイルドスーツ{}でプレイされたカードは',
                    'スコアされた時に倍率{C:mult}+#1#{}を与える'
                }
            },
            j_losted_lost_sock={
                name = '失くした靴下',
                text = {
                    'プレイしたハンドに{C:attention}#2#{}枚以下の',
                    'カードが含まれている場合、',
                    'このジョーカーは倍率{C:mult}+#1#{}を得る',
                    '{C:inactive}(現在、倍率{C:mult}+#3#{C:inactive})',
                }
            },
            j_losted_perfect_split={
                name = 'パーフェクトスプリット',
                text = {
                    'スコアされた各カードは',
                    '{C:green}#2#分の#1#{}の確率で',
                    '永久に倍率{C:mult}+#3#{}を得る',
                }
            },
            j_losted_sticky={
                name = 'スティッキージョーカー',
                text = {
                    '{C:attention}#1#{}ラウンド後、',
                    'このカードを売ると',
                    'ランダムなジョーカーが{C:dark_edition}ネガティブ{}になる',
                    '{C:inactive}(現在 {C:attention}#2#{C:inactive}/#1#)',
                },
                unlock={
                    '{E:1,C:attention}8枚以上のジョーカー{}で',
                    'ランに勝利する',
                },
            },
            j_losted_vip_pass={
                name = 'V.I.P.パス',
                text = {
                    '{C:attention}ボスブラインド{}を倒した後、',
                    'ショップに追加の無料{C:attention}バウチャー{}を',
                    '作成する'
                }
            },
            j_losted_welder={
                name = 'ウェルダー',
                text = {
                    '{C:attention}スチールカード{}は',
                    '倍率{X:mult,C:white}X1.5{}の代わりに',
                    '倍率{X:mult,C:white}X#1#{}を与える'
                },
                unlock={
                    'デッキに少なくとも',
                    '{C:attention}#1#{}枚の',
                    '{E:1,C:attention}#2#{}を持つ',
                },
            },
            j_losted_triquetra = {
                name = 'トリケトラ',
                text = {
                    'プレイされたハンドの',
                    '{C:attention}パーフェクトスリーカード{}の一部であるカードは',
                    '追加で#1#回{C:attention}再発動{}する',
                }
            },
            j_losted_the_passage = {
                name = 'パッセージ',
                text = {
                    'このカードを{C:attention}売却{}すると、',
                    'アンティが{C:attention}1{}変化する。',
                    '{C:green}50%{}の確率で{C:blue}増加{}',
                    '{C:green}50%{}の確率で{C:red}減少{}'
                },
                unlock = {
                    'バウチャー',
                    '{C:attention}#1#{}と{C:attention}#2#{}を',
                    '1回のランで使用する'
                }
            },
            j_losted_slot_machine = {
                name = 'スロットマシン',
                text = {
                    'スコアされた各{C:attention}7{}は',
                    '{C:green}2分の1{}の確率で倍率{C:mult}+#2#{}、',
                    '{C:green}4分の1{}の確率で{C:gold}$#3#{}、',
                    '{C:green}8分の1{}の確率で倍率{X:mult,C:white}X#4#{}を得て、',
                    '{C:green}#5#分の1{}の確率で全ての{C:money}${}を失う',
                },
                unlock = {
                    '3枚の{C:attention,E:1}ラッキーカード{}で',
                    'ランク{C:attention,E:1}7{}の',
                    'スリーカードをプレイする',
                },
            },
            j_losted_strawberry_milkshake = {
                name = 'ストロベリーミルクシェイク',
                text = {
                    'チップ{X:chips,C:white}X#1#{},',
                    'プレイされたラウンドごとに',
                    'チップ{X:chips,C:white}X#2#{}を失う。',
                    '{C:dark_edition}ああ、なんてクリーミー！{}'
                }
            },
            j_losted_schrodinger = {
                name = 'シュレーディンガーの猫',
                text = {
                    '{C:green}#2#分の#1#{}の確率で',
                    'チップ{C:chips}+#3#{}を与える',
                }
            },
            j_losted_mitosis = {
                name = 'マイトーシス',
                text = {
                    'ラウンドの{C:attention}最初のハンド{}が{C:attention}同じランク{}の',
                    'カードのみで構成されている場合、スコアされた',
                    'すべてのカードが一番右のカードの',
                    '{C:dark_edition}改良{}をコピーする。',
                },
            },
            j_losted_last_resort = {
                name = '最後の手段',
                text = {
                    'ラウンドの{C:attention}最初のディスカード{}に',
                    'ちょうど{C:attention}2枚{}のカードがある場合、',
                    'それらを撃ち抜いて破壊する'
                }
            },
            j_losted_magician = {
                name = 'マジシャンジョーカー',
                text = {
                    '{C:purple}タロット{}カードを使用すると、',
                    '{C:green}#2#分の#1#{}の確率で',
                    '{C:spectral}スペクトル{}カードを生成する',
                    '{C:inactive}(空きが必要){}'
                },
            },
            j_losted_disruption = {
                name = 'ディスラプション',
                text = {
                    '倍率{X:mult,C:white}X1{},',
                    'このランで{C:attention}ポーカーハンド{}が',
                    'プレイされた回数ごとに',
                    '倍率{X:mult,C:white}X#1#{}を得る',
                }
            },
            j_losted_passion_fruit = {
                name = 'パッションフルーツ',
                text = {
                    'プレイされたハンドごとに',
                    'チップ{C:chips}+#2#{}を得る',
                    'ラウンド終了時に{C:green}#4#分の#3#{}の確率で',
                    '破壊される',
                    '{C:inactive}(現在、チップ{C:chips}+#1#{}{C:inactive})'
                }
            },
            j_losted_passion_juice = {
                name = 'パッションフルーツジュース',
                text = {
                    'プレイされたハンドごとに',
                    'チップ{X:chips,C:white}X#2#{}を得る',
                    'ラウンド終了時に{C:green}#4#分の#3#{}の確率で',
                    '破壊される',
                    '{C:inactive}(現在、チップ{X:chips,C:white}X#1#{}{C:inactive})'
                }
            },
            j_losted_statue = {
                name = '石像',
                text = {
                    'スコアされた{C:attention}ストーンカード{}は',
                    'チップ{X:chips,C:white}X#1#{}を与える'
                },
                unlock = {
                    '5枚の{C:attention,E:1}ストーンカード{}を',
                    '含むハンドをプレイする',
                }
            },
            j_losted_rule_book = {
                name = 'ルールブック',
                text = {
                    'ハンドの{C:attention}最後のスコアリングカード{}は',
                    '倍率{X:mult,C:white}X#1#{}を与える',
                }
            },
            j_losted_toc_toc = {
                name = 'トック・トック',
                text = {
                    'ハンドをプレイすると、',
                    '{C:attention}残りのディスカード{}数と',
                    '等しい{C:money}${}を得る',
                }
            },
            j_losted_advantage_addiction = {
                name = 'アドバンテージ中毒',
                text = {
                    '{C:dark_edition}改良{}されたカードを',
                    '追加で#1#{}回',
                    '再発動させる',
                },
                unlock={
                    'デッキに少なくとも',
                    '{E:1,C:attention}#1#{}枚の',
                    '{C:dark_edition}改良{}されたカードを持つ',
                },
            },
            j_losted_jersey_10 = {
                name = 'ジャージ10番',
                text = {
                    'プレイしたハンドが1枚の{C:attention}10{}のみで',
                    '構成されている場合、',
                    'それにランダムな{C:dark_edition}エディション{}を適用する',
                }
            },
            j_losted_harlequin = {
                name = 'ハーレクイン',
                text = {
                    'チップ{C:chips}+#1#{}',
                }
            },
            j_losted_totem = {
                name = 'トーテム',
                text = {
                    '{C:green}#2#分の#1#{}の確率で',
                    '得られるすべての{C:money}${}を{C:attention}2倍{}にする',
                },
                unlock = {
                    'チャレンジをクリアする',
                    '{E:1,C:attention}予備で実行中'
                }
            },
            j_losted_duke = {
                name = 'デューク',
                text = {
                    '手札にある{C:attention}ジャック{}1枚につき',
                    'スコアされた最初のプレイカードを',
                    '追加で{C:attention}1{}回再発動させる'
                },
            },
            j_losted_mysterious = {
                name = '???',
                text = {
                    '{C:inactive}(#1#/#2#)',
                    '{C:inactive,s:0.7}プレイしたハンドタイプ'
                },
                unlock = {
                    'チャレンジをクリアする',
                    '{E:1,C:attention}マラソン'
                }
            },
            j_losted_rubiks_cube = {
                name = 'マジックキューブ',
                text = {
                    'プレイされた各{C:attention}6{}は倍率{C:mult}+#2#{}を与え、',
                    'プレイされた各{C:attention}9{}はチップ{C:chips}+#1#{}を与える',
                }
            },
            j_losted_demonic_joker = {
                name = 'デモニックジョーカー',
                text = {
                    'プレイされた各{C:attention}6{}は{C:gold}$#1#{}を与える',
                    'プレイされたハンドに{C:attention}スリーカード{}が含まれる場合、',
                    'カードごとのゴールドは{C:attention}2倍{}になる',
                    '{C:green}#3#分の#2#{}の確率で発動しない',
                },
                unlock = {
                    '3枚の{C:attention,E:1}ゴールドカード{}で',
                    'ランク{C:attention,E:1}6{}の',
                    'スリーカードをプレイする',
                },
            },
            j_losted_moist_cake = {
                name = 'モイストケーキ',
                text = {
                    '{V:1}#2#{}スーツで',
                    'プレイされたカードは、スコアされた時に',
                    '倍率{C:mult}+#1#{}を与える',
                    '{s:0.8}ラウンド終了時にスーツが変わる',
                }
            },
            j_losted_rocker={
                name = 'ロッカー',
                text = {
                    'プレイされた{C:attention}ストーンカード{}は',
                    'スコアされた時に倍率{C:mult}+#1#{}を与える'
                }
            },
            j_losted_piggy_bank = {
                name = '貯金箱',
                text = {
                    'ラウンド終了時に受け取った',
                    '利息{C:money}$1{}ごとに',
                    'チップ{C:chips}+#2#{}を得る。',
                    '{C:inactive}(現在、チップ{C:chips}+#1#{C:inactive})'
                }
            },
            j_losted_hematophilia = {
                name = '血友病',
                text = {
                    '{C:attention}破壊{}されたカードまたはジョーカーごとに',
                    '永久に倍率{C:mult}+#2#{}を得る',
                    '{C:inactive}(現在、倍率{C:mult}+#1#{}{C:inactive})'
                }
            },
            j_losted_chicken_cleide = {
                name = 'ニワトリのクレイデ',
                text = {
                    '{C:attention}ボスブラインド{}が選択された時、',
                    '{C:dark_edition}ネガティブ{}の{C:attention}卵{}を産む。最大{C:attention}#1#{}個',
                    '{C:inactive}(現在 {C:attention}#2#{C:inactive}/#1#)',
                    '{C:inactive,s:0.9}(卵を産んだ後に破壊される)'
                },
                unlock = {
                    'チャレンジをクリアする',
                    '{E:1,C:attention}オムレツ'
                }
            },
            j_losted_seal_stamp = {
                name = 'シールスタンプ',
                text = {
                    '{C:attention}ボスブラインド{}を倒すと、',
                    'ランダムな{C:spectral}シールスペクトル{}を',
                    '作成する',
                    '{C:inactive}(空きが必要){}'
                }
            },
            j_losted_pot_of_greed = {
                name = '強欲な壺',
                text = {
                    'プレイまたはディスカード時、',
                    '追加で{C:attention}1{}枚のカードを',
                    'ドローする',
                },
                unlock={
                    'ステークレベル',
                    '{E:1,C:attention}#1#{}に',
                    '到達する',
                },
            },
            j_losted_sarcophagus = {
                name = 'サルコファガス',
                text = {
                    '{C:attention}ボスブラインド{}を倒すと、',
                    'ランダムな{C:dark_edition}ネガティブ{}の',
                    '{C:uncommon}アンコモン{}または{C:rare}レア{}のジョーカーを作成し、',
                    'その後{C:attention}自己破壊{}する'
                },
                unlock = {
                    '少なくとも2枚の{C:dark_edition}ネガティブ{}ジョーカーで',
                    'ランに勝利する',
                }
            },
            j_losted_cosmos = {
                name = 'コスモス',
                text = {
                    '{C:attention}消耗{}エリアにある',
                    '{C:planet}惑星{}カードは',
                    '倍率{X:mult,C:white}X#1#{}を与える',
                },
                unlock={
                    'ショップで合計',
                    '{C:attention}#1#{}枚の{C:planet}惑星カード{}を',
                    '購入する',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_error = {
                name = 'エラー',
                text = {
                    'ラウンドの{C:attention}最初のハンド{}に',
                    '最大{C:attention}3{}枚のカードがある場合、',
                    '{C:attention}プレイされたカード{}の{C:attention}スーツ{}、{C:attention}ランク{}、',
                    'および{C:dark_edition}改良{}をランダム化する',
                },
                unlock={
                    '{E:1,C:attention}#1#{} で',
                    'ボスブラインドを倒す',
                },
            },
            j_losted_miner = {
                name = 'マイナージョーカー',
                text = {
                    'ハンドがスコアされた時、',
                    '{C:green}#2#分の#1#{}の確率で',
                    '{C:spectral}グリード{}スペクトルカードを',
                    '作成する',
                    '{C:inactive}(空きが必要){}'
                }
            },
            j_losted_toaster = {
                name = 'トースター',
                text = {
                    '{C:attention}ワンペア{}をスコアした後、',
                    'カードを{C:attention}トースト{}し、',
                    'デッキに戻す'
                }
            },
            j_losted_baker = {
                name = 'ベイカージョーカー',
                text = {
                    '{C:attention}ブラインド{}が選択された時、',
                    'デッキに{C:attention}トースト{}カードを',
                    '1枚追加する',
                }
            },
            j_losted_spirit_box = {
                name = 'スピリットボックス',
                text = {
                    '使用された{C:purple}スペクトル{}カードごとに',
                    '倍率{X:mult,C:white}X#1#{}を得る',
                    '{C:inactive}(現在、倍率{X:mult,C:white}X#2#{}{C:inactive})',
                }
            },
            j_losted_precious = {
                name = 'プレシャスジョーカー',
                text = {
                    '{C:attention}ダイヤモンドカード{}が',
                    '再スコアされるたびに、',
                    'このジョーカーは倍率{C:mult}+#1#{}を得る',
                    '{C:inactive}(現在、倍率{C:mult}+#2#{}{C:inactive})',
                }
            },
            j_losted_laser_microjet = {
                name = 'マイクロジェットレーザー',
                text = {
                    '{C:green}#2#分の#1#{}の確率で',
                    'すでに再スコアされた',
                    '{C:attention}ダイヤモンドカード{}を',
                    '再スコアする',
                },
                unlock = {
                    '5枚の{C:attention,E:1}ダイヤモンドカード{}を',
                    '含むハンドをプレイする',
                }
            },
            j_losted_step_by_step = {
                name = 'ステップ・バイ・ステップ',
                text = {
                    'プレイしたハンドに',
                    '{C:attention}#2#{}が含まれている場合、',
                    'このジョーカーは倍率{C:mult}+#1#{}を得る',
                    '{C:inactive}(現在、倍率{C:mult}+#3#{C:inactive})',
                }
            },
            j_losted_jimboy = {
                name = 'ジンボーイ',
                text = {
                    '{C:attention}ディスカード{}時、',
                    '2つの異なるゲームを切り替える：',
                    '現在：{V:1}#3# (+#5# #4#){}',
                }
            },
            j_losted_red_joker = {
                name='レッドジョーカー',
                text={
                    '{C:attention}デッキ{}に残っている',
                    'カード#2#枚ごとに',
                    '倍率{C:mult}+#1#{}',
                    '{C:inactive}(現在、倍率{C:mult}+#3#{C:inactive})',
                },
            },
            j_losted_bank = {
                name='バンク',
                text={
                    '所持している{C:money}$#2#{}ごとに',
                    'このジョーカーは',
                    '倍率{X:mult,C:white}X#1#{}を得る',
                    '{C:inactive}(現在、倍率{X:mult,C:white}X#3#{C:inactive})',
                },
            },
            j_losted_big_bang = {
                name='ビッグバン',
                text={
                    '{C:attention}ブラインド{}が選択された時、',
                    '{C:planet}惑星{}カードを',
                    '作成する',
                    '{C:inactive}(空きが必要)',
                },
            },
            j_losted_artist={
                name='アーティストジョーカー',
                text={
                    'プレイしたハンドに{C:attention}フラッシュ{}が',
                    '含まれている場合、各カードは',
                    '{C:green}#2#分の#1#{}の確率で',
                    '{C:attention}ワイルドスーツカード{}になる',
                },
                unlock = {
                    '5枚の{C:attention,E:1}ワイルドスーツカード{}を',
                    '含むハンドをプレイする',
                }
            },
            j_losted_shiny_gloves = {
                name = 'シャイニーグローブ',
                text = {
                    'プレイしたハンドに',
                    '{C:attention}#2#{}が含まれている場合、',
                    'このジョーカーは倍率{C:mult}+#1#{}を得る',
                    '{C:inactive}(現在、倍率{C:mult}+#3#{C:inactive})',
                }
            },
            j_losted_fair_price = {
                name = 'フェアプライス',
                text = {
                    '倍率{X:mult,C:white}X#1#{},',
                    'ラウンド終了時に',
                    '{C:money}$#2#{}を支払う',
                    '{C:inactive}支払えない場合は破壊される{}',
                }
            },
            j_losted_paid_vacation = {
                name = '有給休暇',
                text = {
                    '{C:attention}すべてのハンド{}を使用して',
                    'ブラインドを倒した場合、',
                    '{C:money}$#1#{}を得る'
                }
            },
            j_losted_joke_book = {
                name = 'ジョークブック',
                text = {
                    'プレイしたハンドが{C:attention}#3#{}の場合、',
                    '倍率{X:mult,C:white}X#1#{}を得る。',
                    '別の{C:attention}ポーカーハンド{}をプレイするとリセットされる。',
                    '{C:attention}ポーカーハンド{}はランごとに変わる',
                    '{C:inactive}(現在、倍率{X:mult,C:white}X#2#{C:inactive})',
                }
            },
            j_losted_vandalism = {
                name = 'ヴァンダリズム',
                text = {
                    '選択されたすべての',
                    '{C:attention}ブラインド{}のスコア要件を',
                    '{C:attention}#1#%{}減少させる',
                }
            },
            j_losted_artwork = {
                name = 'アートワーク',
                text = {
                    'ラウンド終了時に',
                    '{C:attention}セルバリュー{}が',
                    '{C:money}$#1#{}増加する',
                    'ラウンド終了時に{C:green}#3#分の#2#{}の確率で',
                    '破壊される',
                }
            },
            j_losted_silly_hat = {
                name = 'シリーハット',
                text = {
                    'プレイしたハンドに',
                    '{C:attention}#2#{}が含まれている場合、',
                    'このジョーカーは倍率{C:mult}+#1#{}を得る',
                    '{C:inactive}(現在、倍率{C:mult}+#3#{C:inactive})',
                }
            },
            j_losted_surprise_box = {
                name = 'サプライズボックス',
                text = {
                    ''
                }
            },
            j_losted_critic_failure = {
                name = 'クリティカルフェイラー',
                text = {
                    'すべての{C:green,E:1,S:1.1}確率{}を',
                    '{C:attention}{C:green,E:1,S:1.1}4{}で割る',
                    '{C:inactive}(例: {C:green}3分の1{C:inactive} -> {C:green}3分の0.25{C:inactive})',
                },
                unlock={
                    '1回のハンドで',
                    '少なくとも',
                    '{E:1,C:attention}#1#{}チップを獲得する',
                },
            },
            j_losted_limited_edition = {
                name = 'リミテッドエディション',
                text = {
                    '他のジョーカーを売却する際、',
                    'セルバリュー{C:money}$1{}ごとに',
                    '倍率{X:mult,C:white}X#1#{}を得る。',
                    '{C:inactive}(現在、倍率{X:mult,C:white}X#2#{C:inactive})',
                },
                unlock={
                    '合計で',
                    '{C:attention,E:1}#1#{}枚のジョーカーカードを',
                    '売却する',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_contract = {
                name = '契約',
                text = {
                    'ラウンド終了時に{C:attention}#1#{}の',
                    'レベルを2上げる',
                    '他の{C:attention}ポーカーハンド{}にはデバフがかかる',
                    '期限が切れるまで売却不可',
                    '{C:attention}#2#{}ラウンドで期限切れ'
                },
            },
            j_losted_hoarding_joker = {
                name = '収集家ジョーカー',
                text = {
                    '消耗スロット{C:dark_edition}+#1#{}',
                }
            },
            j_losted_glutton = {
                name = '収集家ジョーカー',
                text = {
                    '消耗スロット{C:dark_edition}+#1#{}',
                }
            },
            j_losted_big_joker = {
                name = 'ビッグジョーカー',
                text = {
                    'プレイされた各{C:attention}10{}が',
                    'スコアされると、このジョーカーは',
                    '倍率{C:mult}+#2#{}を得る',
                    '{C:inactive}(現在、倍率{C:mult}+#1#{C:inactive})',
                }
            },
            j_losted_doodle = {
                name = 'ドゥードゥル',
                text = {
                    '左の{C:attention}ジョーカー{}の',
                    '能力をコピーする',
                    'ラウンド終了時に{C:green}#2#分の#1#{}の確率で',
                    '破壊される',
                }
            },
            j_losted_booster = {
                name = 'ブースター',
                text = {
                    'いずれかの{C:attention}ブースターパック{}が',
                    '開封されると、',
                    'チップ{C:chips}+#2#{}を得る',
                    '{C:inactive}(現在、チップ{C:chips}+#1#{}{C:inactive})',
                }
            },
            j_losted_turntable = {
                name = 'ターンテーブル',
                text = {
                    'このラウンドで既にスコアされたカードと',
                    '同じ{C:attention}ランクとスーツ{}を持つ',
                    'プレイされたカードは、',
                    '倍率{C:mult}+#1#{}を与える'
                },
                unlock = {
                    '{E:1,C:attention}フラッシュファイブ{}を',
                    'プレイする',
                }
            },
            j_losted_replay = {
                name = 'リプレイ',
                text = {
                    'スコアされた{C:attention}最後の{}',
                    'プレイカードを',
                    '追加で{C:attention}#1#{}回再発動させる',
                }
            },
            j_losted_clown_car = {
                name = 'クラウンカー',
                text = {
                    '{C:attention}ブラインド{}が選択された時、',
                    '{C:uncommon}#1#{}枚のアンコモンジョーカーを生成する。',
                    '最大{C:attention}#2#{}枚のジョーカーを作成する。',
                    '{C:inactive}({C:attention}#3#{}{C:inactive}/#2#){}',
                    '{C:inactive}(空きが必要)',
                },
                unlock = {
                    'チャレンジをクリアする',
                    '{E:1,C:attention}ジョーカーのみ'
                }
            },
            j_losted_the_joker = {
                name = '「ザ・ジョーカー」',
                text = {
                    'プレイされた各{C:attention}#2#{}がスコアされると、',
                    '倍率{X:mult,C:white}X#1#{}を与える',
                    '{C:inactive}{s:0.7}デッキで最も一般的なランクを選択{}{}',
                },
                unlock = {
                    '{E:1,C:dark_edition}???{}が謎を解き明かすと、',
                    '{C:dark_edition}彼{}は正体を現す',
                }
            },
            j_losted_obsidian = {
                name = 'オブシディアン',
                text = {
                    '{V:1}#5#{}スーツで',
                    'プレイされたカードは、スコアされた時に',
                    'チップ{C:chips}+#1#{}, 倍率{C:mult}+#2#{}, 倍率{X:mult,C:white}X#3#{}',
                    'および{C:gold}$#4#{}を与える',
                    '{s:0.7}ラウンド終了時にスーツが変わる{}'
                },
                unlock = {
                    '{C:dark_edition}4つの石{}を取引して',
                    '目覚めさせる',
                }
            },
            j_losted_jimbo_hood = {
                name = 'ジンボ・フッド',
                text = {
                    'スコアリングの終了時に、',
                    '{C:mult}倍率{}と{C:chips}チップ{}の',
                    'バランスをとる',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_roland = {
                name = 'ローランド',
                text = {
                    '{C:attention}ブラインド{}が選択された時、',
                    'ランダムな{C:dark_edition}ネガティブ{}の',
                    '{C:spectral}スペクトル{}カードを',
                    '作成する',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_patati_patata = {
                name = '#1#',
                text = {
                    'ランク{C:attention}#2#{}でプレイされたカードは',
                    'スコアされた時に{B:1,C:white}X#3#{} #4#を与える',
                    '{C:inactive}#5#',
                    '{C:faded}ハンドがプレイされると{V:2}#6#{}に切り替わる{}'
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_invisible = {
                name = 'ハローワールド！',
                text = {
                    '{C:purple,E:1,S:1.1}私は秘密です <3{}'
                }
            },
        },
        Spectral={
            c_losted_mystery_soul = {
                name = '魂？',
                text = {
                    '{C:dark_edition}「ザ・ジョーカー」{}を',
                    '作成する',
                    '{C:inactive}これは何だ？{}'
                }
            },
            c_losted_greed = {
                name = 'グリード',
                text = {
                    '選択した{C:attention}2{}枚の',
                    'カードを',
                    '{C:attention}ダイヤモンドカード{}に強化する',
                }
            },
            c_losted_aura = {
                name='オーラ',
                text={
                    '手札にある選択したカード{C:attention}1{}枚に',
                    '{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、',
                    '{C:dark_edition}ポリクローム{}、または{C:dark_edition}クォンタム{}の効果を加える',
                },
            },
            c_ectoplasm={
                name='エクトプラズム',
                text={
                    '{C:dark_edition}ネガティブ{}を',
                    'ランダムな{C:attention}ジョーカー{}に加える、',
                    'ハンドサイズ{C:red}-#1#{}',
                },
            },
        },
        Stake = {
            stake_losted_diamond = {
                name = 'ダイヤモンドステーク',
                text = {
                    '{C:attention}最終アンティ{}を{C:attention}10{}に',
                    '増加させる',
                    '{s:0.8}以前のすべてのステークに適用',
                }
            },
        },
        Tag = {
            tag_losted_quantum = {
                name='クォンタムタグ',
                text={
                    '次のベースショップジョーカーが',
                    '無料になり、',
                    '{C:dark_edition}クォンタム{}になる',
                },
            },
            tag_losted_plasma = {
                name='プラズマタグ',
                text={
                    '次のベースショップジョーカーが',
                    '無料になり、',
                    '{C:dark_edition}プラズマ{}になる',
                },
            },
        },
        Tarot = {
            c_losted_abyss={
                name = 'アビス',
                text = {
                    '選択した{C:attention}#1#{}枚のカードの',
                    'ランクを{C:attention}1{}下げる',
                }
            },
            c_losted_lily = {
                name = 'リリー',
                text = {
                    '選択した{C:attention}1{}枚の',
                    'カードを',
                    '{C:attention}ステラカード{}に強化する',
                }
            },
            c_losted_provider = {
                name = 'プロバイダー',
                text = {
                    '選択した{C:attention}#1#{}枚の',
                    'カードを',
                    '{C:attention}トーストカード{}に強化する',
                }
            },
            c_losted_wheel_of_fortune = {
                name='運命の輪',
                text={
                    '{C:green}#2#分の#1#{}の確率で',
                    'ランダムな{C:attention}ジョーカー{}に{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、',
                    '{C:dark_edition}ポリクローム{}、{C:dark_edition}プラズマ{}、または{C:dark_edition}クォンタム{}',
                    'エディションを追加する',
                },
            },
        },
        Voucher = {
            v_losted_negative_bias = {
                name = 'ネガティブバイアス',
                text = {
                    '{C:dark_edition}ネガティブ{}カードが',
                    'ショップで{C:attention}#1#X{}倍',
                    '頻繁に出現する',
                },
            },
            v_losted_negative_magnet = {
                name = 'ネガティブマグネット',
                text = {
                    '{C:dark_edition}ネガティブ{}カードが',
                    'ショップで{C:attention}#1#X{}倍',
                    '頻繁に出現する',
                },
                unlock={
                    '少なくとも{C:attention}#1#{}枚の',
                    '{C:dark_edition}ネガティブ{}エディションの',
                    '{C:attention}ジョーカー{}カードを持つ',
                },
            },
            v_losted_stapler = {
                name = 'ステープラー',
                text = {
                    'ジョーカーがショップで',
                    '{C:attention}2X{}倍',
                    '頻繁に出現する',
                },
            },
            v_losted_staple_gun = {
                name = 'ステープルガン',
                text = {
                    '{C:common}コモン{}ジョーカーの',
                    '出現頻度を',
                    '減らす',
                },
                unlock={
                    'ショップで合計',
                    '{E:1,C:attention}#1#{}枚の{C:blue}ジョーカー{}を',
                    '購入する',
                    '{C:inactive}(#2#)',
                },
            },
            v_losted_extra_bag = {
                name = 'エクストラバッグ',
                text = {
                    'ショップごとに{C:attention}ブースターパック+1{}が',
                    '利用可能'
                },
            },
            v_losted_booster_bag = {
                name = 'ブースターバッグ',
                text = {
                    'ブースターパックで選択できる',
                    '追加カード{C:attention}+2{}',
                },
                unlock = {
                    '{E:1,C:attention}#1#{}個の',
                    'ブースターパックを',
                    '開封する',
                    '{C:inactive}(#2#)'
                }
            },
            v_hone={
                name='ホーン',
                text={
                    '{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、',
                    '{C:dark_edition}ポリクローム{}、{C:dark_edition}クォンタム{}、{C:dark_edition}プラズマ{}のカードは',
                    '{C:attention}#1#X{}倍頻繁に出現する',
                },
            },
            v_glow_up={
                name='グローアップ',
                text={
                    '{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、',
                    '{C:dark_edition}ポリクローム{}、{C:dark_edition}クォンタム{}、{C:dark_edition}プラズマ{}のカードは',
                    '{C:attention}#1#X{}倍頻繁に出現する',
                },
                unlock={
                    '少なくとも{C:attention}#1#{}枚の',
                    '{C:attention}ジョーカー{}カードを',
                    '{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、または',
                    '{C:dark_edition}ポリクローム{}エディションで持つ',
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_losted_magic_trick = 'マジックトリック',
            c_losted_medieval_era = '中世の時代',
            c_losted_wall = '壁',
            c_losted_breakfast = '朝食',
            c_losted_new_times = '新しい時代',
            c_losted_only_jokers = 'ジョーカーのみ',
            c_losted_autopilot = 'オートパイロット',
            c_losted_mvp = 'M.V.P',
            c_losted_running_on_fumes = '予備で実行中',
            c_losted_marathon = 'マラソン',
        },
        dictionary = {
            k_negative_ex = 'ネガティブ！',
            k_blind_selected_ex = 'ブラインドボーナス！',
            k_ante_increased_ex = 'アンティ増加！',
            k_ante_decreased_ex = 'アンティ減少！',
            k_schrodinger_ex = 'デッド',
            k_suit_changed_ex = 'スーツ変更！',
            k_obsidian_awakened_ex = 'オブシディアン覚醒',
            toast_eaten = '食べられた',
            k_mod_c = 'ゲーム1',
            k_mod_m = 'ゲーム2',
            k_chips = 'チップ',
            k_losted_enhancements_removed = '強化解除！',
            k_vandalism_ex = '破壊された！',
            k_plus_toast = '+1 トースト',
            k_even = '偶数',
            k_odd = '奇数',
            k_nothing_ex = 'ベータには何もない',

        k_losted_config_game = 'ゲーム',
        k_losted_config_audio_visual = 'オーディオ・表示',
        k_losted_music_label = 'サウンドトラック',
            k_losted_music_ost1 = 'Lost Edition OST by Gulira',
            k_losted_music_ost2 = 'Balatro OST by LouisF',

            k_losted_themes_tab = 'テーマ',
            k_losted_theme_label = '選択されたテーマ',
            k_losted_apply_button = 'テーマを適用',
            k_losted_loading_themes = 'テーマを読み込み中...',

            k_fast_forward_label = '早送り',
            k_status_text_label = 'テキストポップアップ',

            k_fast_forward_off = 'オフ',
            k_fast_forward_planets = '惑星のみ',
            k_fast_forward_on = 'すべて（高速）',
            k_fast_forward_unsafe = 'すべて（不安定）',
            k_status_text_all = 'すべて',
            k_status_text_less_annoying = '控えめ',
            k_status_text_no_misc = 'その他を非表示',
            k_status_text_none = 'なし',
        },
        v_dictionary = {
            a_xchips = 'X#1# チップ',
            a_powmult = '^#1# 倍率',
        },
        v_text = {
            ch_c_boss_rush = { 'すべてのブラインドが{C:attention}ボスブラインド{}になる' },
            ch_c_no_tags = { 'ブラインドのスキップが{C:attention}無効{}になる' },
            ch_c_new_times = { '{C:purple}Lost Edition{}以外のジョーカーは禁止される' },
            ch_c_only_jokers = { '{C:attention}ショップ{}と{C:attention}パック{}からはジョーカーしか出現しない' },
            ch_c_force_selection = { '常に1枚のカードが選択されるように強制する' },
            ch_c_marathon = { '最終アンティがアンティ{C:attention}16{}にリダイレクトされる' }
        },
        labels = {
            losted_quantum = 'クォンタム',
            losted_plasma = 'プラズマ',
            losted_evolutionary = 'エボリューショナリー',
            losted_chaotic = 'カオティック',
            losted_medieval = 'メディーバル',
        },
        tutorial = {
            losted_intro_1 = {
                '{C:purple}Lost Edition{}へようこそ！'
            },
            losted_intro_2 = {
                'ここまでたどり着ける人は少ないんですよ。',
            },
            losted_intro_3 = {
                'ゆっくり自分のペースで探索してください。',
            },
            losted_intro_4 = {
                '何か{C:attention}本当に興味深いもの{}が見つかるかもしれません...',
            }
        }
    },
}
