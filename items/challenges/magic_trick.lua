local challengeInfo = {
    key = 'magic_trick',
    rules = {
        custom = {
            { id = 'no_shop_jokers' },
        }
    },
    deck = {
        type = "Challenge Deck",
    },
    jokers = {
        { id = 'j_cartomancer', eternal = true },
        { id = 'j_losted_magician', eternal = true },
        { id = 'j_oops', eternal = true },
        { id = 'j_losted_hoarding_joker', eternal = true },
        { id = 'j_brainstorm', eternal = true },
    },
    vouchers = {
        { id = 'v_crystal_ball' },
    },
    restrictions = {
        banned_cards = {
            { id = 'c_judgement' },
            { id = 'c_wraith' },
            { id = 'c_soul' },
            { id = 'c_ectoplasm' },
            { id = 'c_ankh' },
            { id = 'p_buffoon_normal_1', ids = {
                'p_buffoon_normal_1', 'p_buffoon_normal_2',
                'p_buffoon_jumbo_1', 'p_buffoon_mega_1' }
            },
        },
        banned_tags = {
            { id = 'tag_uncommon' },
            { id = 'tag_rare' },
            { id = 'tag_negative' },
            { id = 'tag_foil' },
            { id = 'tag_holographic' },
            { id = 'tag_polychrome' },
            { id = 'tag_buffoon' },
            { id = 'tag_top_up' },
            { id = 'tag_losted_quantum' },
            { id = 'tag_losted_plasma' },
        },
        banned_other = {
            { id = 'bl_final_heart', type = 'blind' },
            { id = 'bl_final_leaf',  type = 'blind' },
            { id = 'bl_final_acorn', type = 'blind' },
        }
    }
}

return challengeInfo
