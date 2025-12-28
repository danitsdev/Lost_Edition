local challengeInfo = {
    key = 'running_on_fumes',
    rules = {
        custom = {
            { id = 'no_reward' },
            { id = 'no_extra_hand_money' },
            { id = 'no_interest' },
        },
        modifiers = {
            { id = 'dollars', value = 100 },
        }
    },
    jokers = {
        {id = 'j_chaos'},
    },
    vouchers = {
        { id = 'v_overstock_norm' },
        { id = 'v_overstock_plus' },
    },
    restrictions = {
        banned_cards = {
            { id = 'v_seed_money' },
            { id = 'v_money_tree' },
            { id = 'j_to_the_moon' },
            { id = 'j_rocket' },
            { id = 'j_golden' },
            { id = 'j_satellite' },
            { id = 'j_trading' },
            { id = 'j_midas_mask' },
            { id = 'j_todo_list' },
            { id = 'j_rough_gem' },
            { id = 'j_reserved_parking' },
            { id = 'j_business' },
            { id = 'j_delayed_grat' },
            { id = 'j_cloud_9' },
            { id = 'j_losted_chicken_cleide' },
            { id = 'j_egg' },
            { id = 'j_faceless' },
            { id = 'j_mail' },
            { id = 'j_gift' },
            { id = 'j_losted_toc_toc' },
            { id = 'j_losted_paid_vacation' },
            { id = 'j_losted_artwork' },
            { id = 'j_losted_totem' },
            { id = 'j_losted_demonic_joker' },
            { id = 'j_losted_error' },
            { id = 'j_losted_chicken_cleide' },
            { id = 'c_hermit' },
            { id = 'c_temperance' },
            { id = 'c_devil' },
            { id = 'c_immolate' },
            { id = 'c_talisman' }
        },
        banned_tags = {
            { id = 'tag_investment' },
            { id = 'tag_economy' },
            { id = 'tag_skip' }
        },
    }
}

return challengeInfo
