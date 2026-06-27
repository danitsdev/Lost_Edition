return {
    descriptions={
        Back = {
            b_losted_evolutionary = {
                name = 'Evolutionary Deck',
                text = {
                    'For each {C:attention}even ante{} greater than 3,',
                    'gain {C:attention}+1{} hand size',
                },
                unlock={
                    'Increase hand size',
                    'to {C:attention}#1#{} cards',
                },
            },
            b_losted_fortune = {
                name = 'Fortune Deck',
                text = {
                    'Doubles {C:attention}all listed',
                    '{C:green,E:1,S:1.1}probabilities',
                    '{C:inactive}(ex: {C:green}1 in 3{C:inactive} -> {C:green}2 in 3{C:inactive})',
                },
                unlock = {
                    'Win a run with',
                    '{C:attention}#1#{}',
                    'on any difficulty',
                }
            },
            b_losted_chaotic = {
                name = 'Chaotic Deck',
                text = {
                    'All cards are randomized',
                    'limited to {C:attention}6 ranks{} and {C:attention}2 suits{}',
                    'Start run with {C:attention,T:v_overstock_norm}#1#{}',
                    '{C:red}X#2#{} base Blind size',
                },
                unlock = {
                    'Win a run with',
                    '{C:attention}#1#{}',
                    'on any difficulty',
                }
            },
            b_losted_medieval = {
                name = 'Medieval Deck',
                text = {
                    '{C:attention}+#1#{} Joker slot',
                    'Starting from Ante 2,',
                    '{C:attention}All{} Blinds are {C:attention}Boss Blinds{}',
                },
                unlock = {
                    'Complete the',
                    '{E:1,C:attention}Medieval Era{} challenge'
                }
            },
        },
        Blind = {
            bl_losted_all_ones = {
                name='Oops! All 1s',
                text={
                    'Halves {C:attention}all listed',
                    '{C:green,E:1,S:1.1}probabilities',
                    '{C:inactive}(ex: {C:green}1 in 2{C:inactive} -> {C:green}0.5 in 2{C:inactive})',
                },
            },
            bl_losted_privilege = {
                name = 'Privilege',
                text = {
                    '#1# in 8 cards',
                    'are debuffed',
                }
            },
            bl_losted_vampiric = {
                name = 'Vampiric',
                text = {
                    'Removes {C:attention}Enhancements{}',
                    'from all {C:attention}scored cards{}',
                    '{C:inactive}(Restored when defeated)'
                }
            },
            bl_losted_inversion = {
                name = 'Inversion',
                text = {
                    'Swaps the number of {C:attention}Hands',
                    'and {C:attention}Discards',
                }
            },
            bl_losted_amnesia = {
                name = 'The Amnesia',
                text = {
                    'Resets #1#',
                    'to level 1,',
                    'temporarily',
                }
            },
            bl_losted_labyrinth = {
                name = 'The Labyrinth',
                text = {
                    'Random {C:attention}poker hand{}',
                    'is debuffed.',
                    'Changes on every play',
                },
            },
            bl_losted_watchdog = {
                name = 'The Watchdog',
                text = {
                    'Skips the next shop',
                }
            },
            bl_losted_balance = {
                name = 'The Balance',
                text = {
                    'Cards with {C:attention}even{} rank',
                    'are debuffed'
                }
            },
            bl_losted_solitude = {
                name = 'Solitude',
                text = {
                    'Cards with {C:attention}odd{} rank',
                    'are debuffed'
                }
            },
            bl_losted_annihilation = {
                name = 'Annihilation',
                text = {
                    'Lose a random {C:attention}tag{}',
                    'for each hand played',
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
                    'Repeats {C:blue}all effects{}',
                    'of this card',
                    '{C:blue}1{} additional time',
                },
            },
        },
        Enhanced = {
            m_losted_diamond = {
                name = 'Diamond Card',
                text = {
                    'Rescores if played {C:attention}adjacent{} to',
                    'another scoring {C:attention}Diamond Card{}',
                    '{X:chips,C:white}X#1#{} Chips and {X:mult,C:white}X#2#{} Mult',
                    'while this card stays in hand',
                },
            },
            m_losted_stellar = {
                name = 'Stellar Card',
                text = {
                    'Gains {C:chips}+#1#{} permanent Chips',
                    'when scored.',
                },
            },
            m_losted_toast = {
                name = 'Toast Card',
                text = {
                    '{X:mult,C:white}X#1#{} Mult',
                    'when scored,',
                    'is {C:attention}consumed{} after use',
                },
            },
            m_wild={
                name='Wild Suit Card',
                text={
                    'Can be used',
                    'as any suit.',
                    'Is not debuffed',
                    'by Suit debuffs'
                },
            },
        },
        Other = {
            losted_diamond_sticker = {
                name = 'Diamond Sticker',
                text= {
                    'Used this Joker',
                    'to win on {C:attention}Diamond',
                    '{C:attention}Stake{} difficulty',
                }
            },
            artist = {
                text = {
                    '{C:inactive}Artist',
                },
            },
            artist_credit = {
                name = 'Artist',
                text = {
                    '{E:1}#1#{}'
                },
            },
            perfect_three_of_a_kind = {
                name = '{C:attention}Perfect Three of a Kind{}',
                text = {
                    'Is composed of {C:attention}exactly{}',
                    '{C:attention}3{} cards of the {C:attention}same rank{},'
                }
            },
            improvements_of_card = {
                name = '{C:dark_edition}Improvements{}',
                text = {
                    'Are special attributes',
                    'that modify a card:',
                    '{C:dark_edition}Enhancement{}, {C:dark_edition}Seal{} and {C:dark_edition}Edition{}.',
                }
            }
        },
        Joker={
            j_losted_jimball={
                name = 'Jimball',
                text = {
                    'When a {C:attention}Blind{} is selected,',
                    'permanently gains',
                    '{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips',
                    '{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult, {C:chips}+#4#{}{C:inactive} Chips)'
                }
            },
            j_losted_stake_out={
                name = 'Stake Out',
                text = {
                    '{X:mult,C:white}X#1#{} Mult,',
                    '{C:attention}lose 1 hand{} if the played hand',
                    'triggers the {C:attention}Boss Blind{}'
                }
            },
            j_losted_gothic={
                name = 'Gothic Joker',
                text = {
                    'Played cards with {C:attention}Wild Suit{}',
                    'give {C:mult}+#1#{} Mult when scored'
                }
            },
            j_losted_lost_sock={
                name = 'Lost Sock',
                text = {
                    'This Joker gains {C:mult}+#1#{} Mult',
                    'if the played hand contains',
                    '{C:attention}#2#{} or fewer cards',
                    '{C:inactive}(Currently, {C:mult}+#3#{C:inactive} Mult)',
                }
            },
            j_losted_perfect_split={
                name = 'Perfect Split',
                text = {
                    'Each {C:attention}scored{} card',
                    'has a {C:green}#1# in #2#{} chance',
                    'to gain {C:mult}+#3#{} Mult permanently',
                }
            },
            j_losted_sticky={
                name = 'Sticky Joker',
                text = {
                    'After {C:attention}#1#{} rounds,',
                    'sell this card to make',
                    'a random Joker {C:dark_edition}Negative{}',
                    '{C:inactive}(Currently {C:attention}#2#{C:inactive}/#1#)',
                },
                unlock={
                    'Win a run with',
                    '{E:1,C:attention}8 Jokers{}',
                    'or more',
                },
            },
            j_losted_vip_pass={
                name = 'V.I.P. Pass',
                text = {
                    'Creates a free extra {C:attention}Voucher{} in the shop',
                    'after defeating a {C:attention}Boss Blind{}'
                }
            },
            j_losted_welder={
                name = 'Welder',
                text = {
                    '{C:attention}Steel Cards{} give',
                    '{X:mult,C:white}X#1#{} Mult instead',
                    'of {X:mult,C:white}X1.5{} Mult'
                },
                unlock={
                    'Have at least {C:attention}#1#',
                    '{E:1,C:attention}#2#{} in',
                    'your deck',
                },
            },
            j_losted_triquetra = {
                name = 'Triquetra',
                text = {
                    'Cards that are part of a played hand\'s',
                    '{C:attention}Perfect Three of a Kind{} are',
                    '{C:attention}retriggered{} #1# additional times',
                }
            },
            j_losted_the_passage = {
                name = 'The Passage',
                text = {
                    'When {C:attention}sold{},',
                    'the ante is changed by {C:attention}1{}.',
                    '{C:green}50%{} chance to {C:blue}increase{}',
                    '{C:green}50%{} chance to {C:red}decrease{}'
                },
                unlock = {
                    'Use the {C:attention}#1#{}',
                    'and {C:attention}#2#{} vouchers',
                    'in a single run'
                }
            },
            j_losted_slot_machine = {
                name = 'Slot Machine',
                text = {
                    'Each scored {C:attention}7{} has a',
                    '{C:green}#1# in 2{} chance to win {C:mult}+#2#{} Mult,',
                    '{C:green}#1# in 4{} chance to win {C:gold}$#3#{},',
                    '{C:green}#1# in 8{} chance to win {X:mult,C:white}X#4#{} Mult',
                    '{C:green}#1# in #5#{} chance to lose all {C:money}${}',
                },
                unlock = {
                    'Play a Three of a Kind containing',
                    '3 {C:attention,E:1}Lucky Cards{}',
                    'of rank {C:attention,E:1}7{}',
                },
            },
            j_losted_strawberry_milkshake = {
                name = 'Strawberry Milkshake',
                text = {
                    '{X:chips,C:white}X#1#{} Chips,',
                    'loses {X:chips,C:white}X#2#{} Chips',
                    'per round played.',
                    '{C:dark_edition}Ooh, so creamy!{}'
                }
            },
            j_losted_schrodinger = {
                name = 'Schrödinger\'s Cat',
                text = {
                    '{C:green}#1# in #2#{} chance',
                    'to give {C:chips}+#3#{} Chips',
                }
            },
            j_losted_mitosis = {
                name = 'Mitosis',
                text = {
                    'If the {C:attention}first hand{} of the round is composed',
                    'only of cards of the {C:attention}same rank{},',
                    'scored cards gain the',
                    '{C:dark_edition}improvements{} of the rightmost card',
                    'as they are scored.',
                },
            },
            j_losted_last_resort = {
                name = 'Last Resort',
                text = {
                    'If the {C:attention}first discard{} of the round',
                    'has exactly {C:attention}2 {}cards, shoot',
                    'them and destroy them'
                }
            },
            j_losted_magician = {
                name = 'Magician Joker',
                text = {
                    'When using a {C:purple}Tarot{} card,',
                    'has a {C:green}#1# in #2#{} chance of',
                    'creating a {C:spectral}Spectral{} card',
                    '{C:inactive}(Must have room){}'
                },
            },
            j_losted_disruption = {
                name = 'Disruption',
                text = {
                    '{X:mult,C:white}X1{} Mult,',
                    'gains {X:mult,C:white}X#1#{} Mult for each',
                    'time the {C:attention}poker hand{}',
                    'has been played this run',
                }
            },
            j_losted_passion_fruit = {
                name = 'Passion Fruit',
                text = {
                    'Gains {C:chips}+#2#{} Chips',
                    'per hand played',
                    '{C:green}#3# in #4#{} chance to be',
                    'destroyed at the end of the round',
                    '{C:inactive}(Currently {C:chips}+#1#{}{C:inactive} Chips)'
                }
            },
            j_losted_passion_juice = {
                name = 'Passion Juice',
                text = {
                    'Gains {X:chips,C:white}X#2#{} Chips',
                    'per hand played',
                    '{C:green}#3# in #4#{} chance to be',
                    'destroyed at the end of the round',
                    '{C:inactive}(Currently {X:chips,C:white}X#1#{}{C:inactive} Chips)'
                }
            },
            j_losted_statue = {
                name = 'Stone Statue',
                text = {
                    'Scored {C:attention}Stone Cards{}',
                    'give {X:chips,C:white}X#1#{} Chips'
                },
                unlock = {
                    'Play a hand that contains',
                    '5 {C:attention,E:1}Stone Cards{}',
                }
            },
            j_losted_rule_book = {
                name = 'Rule Book',
                text = {
                    'The {C:attention}last scoring card{} in the hand',
                    'gives {X:mult,C:white}X#1#{} Mult',
                }
            },
            j_losted_toc_toc = {
                name = 'Toc Toc',
                text = {
                    'When playing a hand, gain',
                    '{C:money}${} equal to the number of',
                    '{C:attention}remaining discards{}',
                }
            },
            j_losted_advantage_addiction = {
                name = 'Advantage Addiction',
                text = {
                    'Retrigger cards with',
                    '{C:dark_edition}improvements{}',
                    '#1#{} additional time',
                },
                unlock={
                    'Have at least {E:1,C:attention}#1#',
                    'cards with {C:dark_edition}improvements{}',
                    'in your deck',
                },
            },
            j_losted_jersey_10 = {
                name = 'Jersey 10',
                text = {
                    'If the played hand is a single {C:attention}10{},',
                    'apply a random {C:dark_edition}edition{} to it',
                }
            },
            j_losted_harlequin = {
                name = 'Harlequin',
                text = {
                    '{C:chips}+#1#{} Chips',
                }
            },
            j_losted_totem = {
                name = 'Totem',
                text = {
                    'Has a {C:green}#1# in #2#{} chance',
                    'to {C:attention}double{} every {C:money}${} gained',
                },
                unlock = {
                    'Complete the',
                    '{E:1,C:attention}Running on Fumes{} challenge'
                }
            },
            j_losted_duke = {
                name = 'Duke',
                text = {
                    'Retrigger {C:attention}first{} played',
                    'card used in scoring',
                    '{C:attention}1{} additional time',
                    'per {C:attention}Jack{} in hand'
                },
            },
            j_losted_mysterious = {
                name = '???',
                text = {
                    '{C:inactive}(#1#/#2#)',
                    '{C:inactive,s:0.7}Hand types played'
                },
                unlock = {
                    'Complete the',
                    '{E:1,C:attention}Marathon{} challenge'
                }
            },
            j_losted_rubiks_cube = {
                name = 'Rubik\'s Cube',
                text = {
                    'Each played {C:attention}6{} gives {C:mult}+#2#{} Mult,',
                    'Each played {C:attention}9{} gives {C:chips}+#1#{} Chips',
                }
            },
            j_losted_demonic_joker = {
                name = 'Demonic Joker',
                text = {
                    'Each played {C:attention}6{} gives {C:gold}$#1#{} gold',
                    'If the played hand contains a {C:attention}Three of a Kind{},',
                    'the gold per card is {C:attention}doubled{}',
                    'Has a {C:green}#2# in #3#{} chance to not trigger',
                },
                unlock = {
                    'Play a Three of a Kind containing',
                    '3 {C:attention,E:1}Gold Cards{}',
                    'of rank {C:attention,E:1}6{}',
                },
            },
            j_losted_moist_cake = {
                name = 'Moist Cake',
                text = {
                    'Played cards with',
                    '{V:1}#2#{} suit give',
                    '{C:mult}+#1#{} Mult when scored',
                    '{s:0.8}suit changes at end of round',
                }
            },
            j_losted_rocker={
                name = 'Rocker',
                text = {
                    'Played {C:attention}Stone Cards{}',
                    'give {C:mult}+#1#{} Mult when scored'
                }
            },
            j_losted_piggy_bank = {
                name = 'Piggy Bank',
                text = {
                    'Gains {C:chips}+#2#{} Chips for each',
                    '{C:money}$1{} of interest received at the',
                    'end of the round.',
                    '{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)'
                }
            },
            j_losted_hematophilia = {
                name = 'Hemophilia',
                text = {
                    'Gains {C:mult}+#2#{} Mult permanently',
                    'for each Card or Joker {C:attention}destroyed{}',
                    '{C:inactive}(Currently {C:mult}+#1#{}{C:inactive} Mult)'
                }
            },
            j_losted_chicken_cleide = {
                name = 'Cleide the Chicken',
                text = {
                    'When a {C:attention}Boss Blind{} is selected,',
                    'lays a {C:attention}Negative{} {C:dark_edition}Egg{}. Max {C:attention}#1#{} eggs',
                    '{C:inactive}(Currently {C:attention}#2#{C:inactive}/#1#)',
                    '{C:inactive,s:0.9}(Destroyed after laying eggs)'
                },
                unlock = {
                    'Complete the',
                    '{E:1,C:attention}The Omelette{} challenge'
                }
            },
            j_losted_seal_stamp = {
                name = 'Seal Stamp',
                text = {
                    'When defeating a {C:attention}Boss Blind{},',
                    'creates a random {C:spectral}Seal Spectral{}',
                    '{C:inactive}(Must have room){}'
                }
            },
            j_losted_pot_of_greed = {
                name = 'Pot of Greed',
                text = {
                    'When playing or discarding,',
                    'draw {C:attention}1{} extra card',
                },
                unlock={
                    'Reach',
                    'Ante level {E:1,C:attention}#1#',
                },
            },
            j_losted_sarcophagus = {
                name = 'Sarcophagus',
                text = {
                    'When defeating a {C:attention}Boss Blind{},',
                    'creates a random {C:dark_edition}Negative{}',
                    '{C:uncommon}Uncommon{} or {C:rare}Rare{} Joker',
                    'and then {C:attention}destroys{} itself'
                },
                unlock = {
                    'Win a run with',
                    'at least 2 {C:dark_edition}Negative{} Jokers'
                }
            },
            j_losted_cosmos = {
                name = 'Cosmos',
                text = {
                    '{C:planet}Planet{} cards in your',
                    '{C:attention}consumable{} area give',
                    '{X:mult,C:white}X#1#{} Mult',
                },
                unlock={
                    'Buy a total of',
                    '{C:attention}#1#{C:planet} Planet{} cards',
                    'from the shop',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_error = {
                name = 'Error',
                text = {
                    'If the {C:attention}first hand{} of the round',
                    'has at most {C:attention}3{} cards,',
                    'randomizes the {C:attention}suit{}, {C:attention}rank{},',
                    'and {C:dark_edition}improvements{}',
                    'of the {C:attention}played cards{}',
                },
                unlock={
                    'Beat a Boss Blind',
                    'with a {E:1,C:attention}#1#',
                },
            },
            j_losted_miner = {
                name = 'Miner Joker',
                text = {
                    '{C:green}#1# in #2#{} chance to create',
                    'a {C:spectral}Greed{} spectral card',
                    'when a hand is scored',
                    '{C:inactive}(Must have room){}'
                }
            },
            j_losted_toaster = {
                name = 'Toaster',
                text = {
                    'After scoring a {C:attention}Pair{},',
                    'makes the cards {C:attention}toasted{}',
                    'and returns them to the deck'
                }
            },
            j_losted_baker = {
                name = 'Baker Joker',
                text = {
                    'Adds one {C:attention}Toast{} card',
                    'to your deck when',
                    'the {C:attention}Blind{} is selected',
                }
            },
            j_losted_spirit_box = {
                name = 'Spirit Box',
                text = {
                    'Gains {X:mult,C:white}X#1#{} Mult',
                    'for each {C:purple}Spectral{} card used',
                    '{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)',
                }
            },
            j_losted_precious = {
                name = 'Precious Joker',
                text = {
                    'This Joker gains {C:mult}+#1#{} Mult',
                    'every time a {C:attention}Diamond Card{}',
                    'is rescored',
                    '{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)',
                }
            },
            j_losted_laser_microjet = {
                name = 'MicroJet Laser',
                text = {
                    'Has a {C:green}#1# in #2#{} chance',
                    'to rescore already rescored',
                    '{C:attention}Diamond Cards{}',
                },
                unlock = {
                    'Play a hand that contains',
                    '5 {C:attention,E:1}Diamond Cards{}',
                }
            },
            j_losted_step_by_step = {
                name = 'Step by Step',
                text = {
                    'This Joker gains {C:mult}+#1#{} Mult',
                    'if the played hand contains',
                    'a {C:attention}#2#',
                    '{C:inactive}(Currently, {C:mult}+#3#{C:inactive} Mult)',
                }
            },
            j_losted_jimboy = {
                name = 'Jimboy',
                text = {
                    'When {C:attention}discarding{}, switches between',
                    'two different games:',
                    'Currently: {V:1}#3# (+#5# #4#){}',
                }
            },
            j_losted_red_joker = {
                name='Red Joker',
                text={
                    '{C:mult}+#1#{} Mult for every #2# cards',
                    'remaining in the {C:attention}deck',
                    '{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)',
                },
            },
            j_losted_bank = {
                name='Bank',
                text={
                    'This Joker gains {X:mult,C:white} X#1# {} Mult',
                    'for every {C:money}$#2#{} you have',
                    '{C:inactive}(Currently, {X:mult,C:white}X#3#{C:inactive} Mult)',
                },
            },
            j_losted_big_bang = {
                name='Big Bang',
                text={
                    'Create a {C:planet}Planet{} card',
                    'when the {C:attention}Blind{} is selected',
                    '{C:inactive}(Must have room)',
                },
            },
            j_losted_artist={
                name='Artist Joker',
                text={
                    'If the played hand contains a {C:attention}Flush{},',
                    'each card has a {C:green}#1# in #2#{} chance',
                    'to become a {C:attention}Wild Suit Card{}',
                },
                unlock = {
                    'Play a hand that contains',
                    '5 {C:attention,E:1}Wild Suit Cards{}',
                }
            },
            j_losted_shiny_gloves = {
                name = 'Shiny Gloves',
                text = {
                    'This Joker gains {C:mult}+#1#{} Mult',
                    'if the played hand contains',
                    'a {C:attention}#2#',
                    '{C:inactive}(Currently, {C:mult}+#3#{C:inactive} Mult)',
                }
            },
            j_losted_fair_price = {
                name = 'Fair Price',
                text = {
                    '{X:mult,C:white} X#1# {} Mult,',
                    'pay {C:money}$#2#{} at the',
                    'end of the round',
                    '{C:inactive}Destroyed if you cannot pay{}',
                }
            },
            j_losted_paid_vacation = {
                name = 'Paid Vacation',
                text = {
                    'Earn {C:money}$#1#{} if',
                    'the blind is defeated',
                    'using {C:attention}all hands{}'
                }
            },
            j_losted_joke_book = {
                name = 'Joke Book',
                text = {
                    'Gains {X:mult,C:white}X#1#{} Mult if the',
                    'played hand is {C:attention}#3#{},',
                    'Resets if you play another {C:attention}poker hand{}.',
                    '{C:attention}Poker hand{} changes every run',
                    '{C:inactive}(Currently, {X:mult,C:white}X#2#{C:inactive} Mult)',
                }
            },
            j_losted_vandalism = {
                name = 'Vandalism',
                text = {
                    'Reduces the score of all',
                    '{C:attention}Blinds{} by {C:attention}#1#%{}',
                    'when selected'
                }
            },
            j_losted_artwork = {
                name = 'Artwork',
                text = {
                    'Gains {C:money}$#1#{} of',
                    '{C:attention}sell value{} at the',
                    'end of the round',
                    '{C:green}#2# in #3#{} chance to be',
                    'destroyed at the end of the round',
                }
            },
            j_losted_silly_hat = {
                name = 'Silly Hat',
                text = {
                    'This Joker gains {C:mult}+#1#{} Mult',
                    'if the played hand contains',
                    'a {C:attention}#2#',
                    '{C:inactive}(Currently, {C:mult}+#3#{C:inactive} Mult)',
                }
            },
            j_losted_surprise_box = {
                name = 'Surprise Box',
                text = {
                    '' -- should be empty
                }
            },
            j_losted_critic_failure = {
                name = 'Critical Failure',
                text = {
                    '{C:attention}Divides{} all',
                    '{C:green,E:1,S:1.1}probabilities{} by {C:green,E:1,S:1.1}4{}',
                    '{C:inactive}(ex: {C:green}1 in 3{C:inactive} -> {C:green}0.25 in 3{C:inactive})',
                },
                unlock={
                    'In one hand,',
                    'earn at least',
                    '{E:1,C:attention}#1#{} chips',
                },
            },
            j_losted_limited_edition = {
                name = 'Limited Edition',
                text = {
                    'Gains {X:mult,C:white}X#1#{} Mult for every',
                    '{C:money}$1{} of sell value',
                    'when selling other Jokers.',
                    '{C:inactive}(Currently, {X:mult,C:white}X#2#{C:inactive} Mult)',
                },
                unlock={
                    'Sell a total of',
                    '{C:attention,E:1}#1#{} Joker cards',
                    '{C:inactive}(#2#)',
                },
            },
            j_losted_contract = {
                name = 'Contract',
                text = {
                    'Upgrade the level of {C:attention}#1#{}',
                    'by 2 at the end of the round',
                    'Other {C:attention}poker hands{} are debuffed',
                    'Cannot be sold, until it expires',
                    'Expires in {C:attention}#2#{} rounds'
                }
            },
            j_losted_hoarding_joker = {
                name = 'Hoarding Joker',
                text = {
                    '{C:dark_edition}+#1#{} consumable slot(s)',
                }
            },
            j_losted_glutton = {
                name = 'Hoarding Joker',
                text = {
                    '{C:dark_edition}+#1#{} consumable slot(s)',
                }
            },
            j_losted_big_joker = {
                name = 'Big Joker',
                text = {
                    'This Joker gains',
                    '{C:mult}+#2#{} Mult when each',
                    'played {C:attention}10{} is scored',
                    '{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)',
                }
            },
            j_losted_doodle = {
                name = 'Doodle',
                text = {
                    'Copies the ability',
                    'of {C:attention}Joker{} to the left',
                    '{C:green}#1# in #2#{} chance to be',
                    'destroyed at the end of the round',
                }
            },
            j_losted_booster = {
                name = 'Booster',
                text = {
                    'Gains {C:chips}+#2#{} Chips when any',
                    '{C:attention}Booster Pack{} is opened',
                    '{C:inactive}(Currently {C:chips}+#1#{}{C:inactive} Chips)',
                }
            },
            j_losted_turntable = {
                name = 'Turntable',
                text = {
                    'Played cards that have',
                    'the same {C:attention}rank and suit{} as a',
                    'card already scored this round',
                    'give {C:mult}+#1#{} Mult'
                },
                unlock = {
                    'Play a',
                    '{E:1,C:attention}Flush Five'
                }
            },
            j_losted_replay = {
                name = 'Replay',
                text = {
                    'Retrigger {C:attention}last{} played',
                    'card used in scoring',
                    '{C:attention}#1#{} additional times',
                }
            },
            j_losted_clown_car = {
                name = 'Clown Car',
                text = {
                    'When a {C:attention}Blind{} is selected,',
                    'creates {C:uncommon}#1# Uncommon Joker{}.',
                    'Creates up to {C:attention}#2# Jokers.',
                    '{C:inactive}({C:attention}#3#{}{C:inactive}/#2#){}',
                    '{C:inactive}(Must have room)',
                },
                unlock = {
                    'Complete the',
                    '{E:1,C:attention}Jokers Only{} challenge'
                }
            },
            j_losted_the_joker = {
                name = 'The Joker',
                text = {
                    'Each played {C:attention}#2#{} gives',
                    '{X:mult,C:white}X#1#{} Mult when scored',
                    '{C:inactive}{s:0.7}Chooses the most common rank in the deck{}{}',
                },
                unlock = {
                    'When the {E:1,C:dark_edition}???{} completes',
                    'its riddle, {C:dark_edition}it{} will reveal itself',
                }
            },
            j_losted_obsidian = {
                name = 'Obsidian',
                text = {
                    'Played cards with',
                    '{V:1}#5#{} suit give',
                    '{C:chips}+#1#{} Chips, {C:mult}+#2#{} Mult, {X:mult,C:white}X#3#{} Mult',
                    'and {C:gold}$#4#{} when scored',
                    '{s:0.7}suit changes at end of round{}'
                },
                unlock = {
                    'Trade the {C:dark_edition}four stones{}',
                    'to awaken it',
                }
            },
            j_losted_jimbo_hood = {
                name = 'Jimbo Hood',
                text = {
                    'At the end of scoring,',
                    'balances {C:mult}Mult{} and {C:chips}Chips{}',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_roland = {
                name = 'Roland',
                text = {
                    'When a {C:attention}Blind{} is selected,',
                    'creates a random {C:dark_edition}Negative{}',
                    '{C:spectral}Spectral{} card',
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_patati_patata = {
                name = '#1#',
                text = {
                    'Played cards with {C:attention}#2#{} rank give',
                    '{B:1,C:white}X#3#{} #4# when scored', 
                    '{C:inactive}#5#', 
                    '{C:faded}Swaps to {V:2}#6#{} on hand played{}' 
                },
                unlock = {
                    '{E:1,s:1.3}?????',
                }
            },
            j_losted_invisible = {
                name = 'Hello, world!',
                text = {
                    '{C:purple,E:1,S:1.1}I am a secret <3{}'
                }
            },
        },
        Spectral={
            c_losted_mystery_soul = {
                name = 'The Soul?',
                text = {
                    'Creates {C:dark_edition}The Joker{}',
                    '{C:inactive}What is this?{}'
                }
            },
            c_losted_greed = {
                name = 'Greed',
                text = {
                    'Enhances {C:attention}2{}',
                    'selected cards into',
                    '{C:attention}Diamond Cards{}',
                }
            },
            c_losted_aura = {
                name='Aura',
                text={
                    'Add {C:dark_edition}Foil{}, {C:dark_edition}Holographic{},',
                    '{C:dark_edition}Polychrome{} or {C:dark_edition}Quantum{} effect',
                    'to {C:attention}1{} selected card in hand',
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
                name='Ectoplasm',
                text={
                    'Add {C:dark_edition}Negative{} to',
                    'a random {C:attention}Joker,',
                    '{C:red}-#1#{} hand size',
                },
            },
        },
        Stake = {
            stake_losted_diamond = {
                name = 'Diamond Stake',
                text = {
                    'Increases the {C:attention}final Ante{} to {C:attention}10{}',
                    '{s:0.8}Applies all previous Stakes',
                }
            },
        },
        Tag = {
            tag_losted_quantum = {
                name='Quantum Tag',
                text={
                    'Next base edition shop',
                    'Joker is free and',
                    'becomes {C:dark_edition}Quantum{}',
                },
            },
            tag_losted_plasma = {
                name='Plasma Tag',
                text={
                    'Next base edition shop',
                    'Joker is free and',
                    'becomes {C:dark_edition}Plasma{}',
                },
            },
        },
        Tarot = {
            c_losted_abyss={
                name = 'The Abyss',
                text = {
                    'Decreases rank of {C:attention}#1#{} selected',
                    'card by {C:attention}1{}',
                }
            },
            c_losted_lily = {
                name = 'Lily',
                text = {
                    'Enhances {C:attention}1{} selected',
                    'card into a',
                    '{C:attention}Stellar Card{}',
                }
            },
            c_losted_provider = {
                name = 'The Provider',
                text = {
                    'Enhances {C:attention}#1#{} selected',
                    'card into a',
                    '{C:attention}Toast Card{}',
                }
            },
            c_losted_wheel_of_fortune = {
                name='The Wheel of Fortune',
                text={
                    '{C:green}#1# in #2#{} chance to add',
                    '{C:dark_edition}Foil{}, {C:dark_edition}Holographic{},',
                    '{C:dark_edition}Polychrome{}, {C:dark_edition}Plasma{} or {C:dark_edition}Quantum{} edition',
                    'to a random {C:attention}Joker',
                },
            },
        },
        Voucher = {
            v_losted_negative_bias = {
                name = 'Negative Bias',
                text = {
                    '{C:dark_edition}Negative{} cards appear',
                    '{C:attention}#1#X{} more frequently',
                    'in the shop',
                },
            },
            v_losted_negative_magnet = {
                name = 'Negative Magnet',
                text = {
                    '{C:dark_edition}Negative{} cards appear',
                    '{C:attention}#1#X{} more frequently',
                    'in the shop',
                },
                unlock={
                    'Have at least {C:attention}#1#',
                    '{C:attention}Joker{} cards with',
                    '{C:dark_edition}Negative{} edition',
                },
            },
            v_losted_stapler = {
                name = 'Stapler',
                text = {
                    'Jokers appear',
                    '{C:attention}2X{} more frequently',
                    'in the shop',
                },
            },
            v_losted_staple_gun = {
                name = 'Staple Gun',
                text = {
                    'Reduces the appearance rate',
                    'of {C:common}Common{} Jokers',
                },
                unlock={
                    'Buy a total of',
                    '{E:1,C:attention}#1# {C:blue}Jokers{}',
                    'from the shop',
                    '{C:inactive}(#2#)',
                },
            },
            v_losted_extra_bag = {
                name = 'Extra Fanny Pack',
                text = {
                    '{C:attention}+1 Booster Pack{}',
                    'available per {C:attention}shop{}'
                },
            },
            v_losted_booster_bag = {
                name = 'Booster Fanny Pack',
                text = {
                    '{C:attention}+2 Extra Cards{} to',
                    'choose from in Booster Packs',
                },
                unlock = {
                    'Open {E:1,C:attention}#1#',
                    'Booster Packs',
                    '{C:inactive}(#2#)'
                }
            },
            v_hone={
                name='Hone',
                text={
                    '{C:dark_edition}Foil{}, {C:dark_edition}Holographic{},',
                    '{C:dark_edition}Polychrome{}, {C:dark_edition}Quantum{} and {C:dark_edition}Plasma{}',
                    'cards appear {C:attention}#1#X{} more often',
                },
            },
            v_glow_up={
                name='Glow Up',
                text={
                    '{C:dark_edition}Foil{}, {C:dark_edition}Holographic{},',
                    '{C:dark_edition}Polychrome{}, {C:dark_edition}Quantum{} and {C:dark_edition}Plasma{}',
                    'cards appear {C:attention}#1#X{} more often',
                },
                unlock={
                    'Have at least {C:attention}#1#',
                    '{C:attention}Joker{} cards with',
                    '{C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or',
                    '{C:dark_edition}Polychrome{} edition',
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_losted_magic_trick = 'A Magic Trick',
            c_losted_medieval_era = 'Medieval Era',
            c_losted_wall = 'The Wall',
            c_losted_breakfast = 'Breakfast',
            c_losted_new_times = 'New Times',
            c_losted_only_jokers = 'Jokers Only',
            c_losted_autopilot = 'Autopilot',
            c_losted_mvp = 'M.V.P',
            c_losted_running_on_fumes = 'Running on Fumes',
            c_losted_marathon = 'Marathon',
        },
        dictionary = {
            k_negative_ex = 'Negative!',
            k_blind_selected_ex = 'Blind Bonus!',
            k_ante_increased_ex = 'Ante Increased!',
            k_ante_decreased_ex = 'Ante Decreased!',
            k_schrodinger_ex = 'Dead',
            k_suit_changed_ex = 'Suit Changed!',
            k_obsidian_awakened_ex = 'OBSIDIAN AWAKENED',
            toast_eaten = 'Eaten',
            k_mod_c = 'GAME 1',
            k_mod_m = 'GAME 2',
            k_chips = 'Chips',
            k_losted_enhancements_removed = 'Enhancements Removed!',
            k_vandalism_ex = 'Vandalized!',
            k_plus_toast = '+1 Toast',
            k_even = 'even',
            k_odd = 'odd',
            k_nothing_ex = 'Nothing for Beta',

        k_losted_config_game = 'Game',
        k_losted_config_audio_visual = 'Audio & Visuals',
        k_losted_music_label = 'Soundtrack',
            k_losted_music_ost1 = 'Lost Edition OST by Gulira',
            k_losted_music_ost2 = 'Balatro OST by LouisF',

            k_losted_themes_tab = 'Themes',
            k_losted_theme_label = 'Selected Theme',
            k_losted_apply_button = 'Apply Theme',
            k_losted_loading_themes = 'Loading themes...',

            k_fast_forward_label = 'Fast-Forward',
            k_status_text_label = 'Text Pop-ups',

            k_fast_forward_off = 'Off',
            k_fast_forward_planets = 'Planets Only',
            k_fast_forward_on = 'Everything (Fast)',
            k_fast_forward_unsafe = 'Everything Extreme (Unstable)',
            k_status_text_all = 'All',
            k_status_text_less_annoying = 'Less Annoying',
            k_status_text_no_misc = 'Hide Misc',
            k_status_text_none = 'None',

            -- Lost Edition: Credits section labels
            le_credits_direction = 'Direction',
            le_credits_music = 'Music',
            le_credits_artists = 'Artists',
            le_credits_coding = 'Coding',
            le_credits_beta = 'Beta Testers',
            le_credits_thanks = 'Special Thanks',
        },
        v_dictionary = {
            a_xchips = 'X#1# Chips',
            a_xchips_minus = '-X#1# Chips',
            a_powmult = '^#1# Mult',
        },
        v_text = {
            ch_c_boss_rush = { 'All Blinds are {C:attention}Boss Blinds{}' },
            ch_c_no_tags = { 'Skipping Blinds is {C:attention}disabled{}' },
            ch_c_new_times = { 'Jokers not from the {C:purple}Lost Edition{} are banned' },
            ch_c_only_jokers = { 'Only Jokers can be found in the {C:attention}shop{} and {C:attention}packs{}' },
            ch_c_force_selection = { 'Forces 1 card to always be selected' },
            ch_c_marathon = { 'Final ante is redirected to ante {C:attention}16{}' }
        },
        labels = {
            losted_quantum = 'Quantum',
            losted_plasma = 'Plasma',
            losted_evolutionary = 'Evolutionary',
            losted_chaotic = 'Chaotic',
            losted_medieval = 'Medieval',
        },
        tutorial = {
            losted_intro_1 = {
                'Welcome to the {C:purple}Lost Edition{}!'
            },
            losted_intro_2 = {
                'Not many players make it here, you know?'
            },
            losted_intro_3 = {
                'Feel free to explore at your own pace.'
            },
            losted_intro_4 = {
                'Maybe you\'ll find something {C:attention}truly interesting{} around here...',
            }
        }
    },
}
