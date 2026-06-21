local jokerInfo = {
    key = "laser_microjet",
    pos = LOSTEDMOD.funcs.coordinate(50),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = false,
    blueprint_compat = true,
    config = {
        extra = {
            odds = 2,
        }
    },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_losted_diamond
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'losted_laser_microjet')
        return {
            vars = {numerator, denominator}
        }
    end,
    in_pool = function(self)
        for _, c in ipairs(G.playing_cards or {}) do
            if SMODS.has_enhancement(c, 'm_losted_diamond') then
                return true
            end
        end
        return false
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play and context.other_card
            and LOSTEDMOD.funcs.is_adjacent_scoring_enhancement(
                context.other_card,
                context.scoring_hand,
                'm_losted_diamond'
            )
            and SMODS.pseudorandom_probability(
                card,
                'losted_laser_microjet_' .. tostring(card.unique_val)
                    .. '_' .. tostring(context.other_card.unique_val),
                1,
                card.ability.extra.odds,
                'losted_laser_microjet'
            ) then
            return {
                repetitions = 1,
                message = localize('k_again_ex'),
                colour = G.C.CHIPS,
                card = card,
            }
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'hand' then
            local diamond_cards = 0
            for _, card in ipairs(args.scoring_hand) do
                if SMODS.has_enhancement(card, 'm_losted_diamond') then
                    diamond_cards = diamond_cards + 1
                end
            end
            return diamond_cards >= 5
        end
        return false
    end
}

return jokerInfo
