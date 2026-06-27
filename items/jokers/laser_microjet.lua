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
            cards_rescored = {},
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
        if context.rescore_cards then
            local rescored_card = context.rescore_cards[1]
            local condition = true
            for _, seen_card in ipairs(card.ability.extra.cards_rescored) do
                if rescored_card == seen_card then
                    condition = false
                    break
                end
            end

            if condition and SMODS.pseudorandom_probability(
                    card,
                    'losted_laser_microjet_' .. tostring(card.unique_val)
                        .. '_' .. tostring(rescored_card.unique_val),
                    1,
                    card.ability.extra.odds,
                    'losted_laser_microjet'
                ) then
                rescored_card.config.diamond_rescored_times =
                    rescored_card.config.diamond_rescored_times - 1
                card.ability.extra.cards_rescored[#card.ability.extra.cards_rescored + 1] = rescored_card
                return {
                    message = '+1',
                    colour = G.C.CHIPS,
                    card = card,
                }
            end
        end

        if context.after then
            card.ability.extra.cards_rescored = {}
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
