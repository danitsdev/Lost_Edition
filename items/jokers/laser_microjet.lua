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

            -- Build a tracking key from the activation source so each copier
            -- gets its own independent chance while still preventing infinite
            -- loops (Diamond's while loop would re-enter otherwise).
            -- context.blueprint_copier is set by SMODS for each copy card
            -- and has a unique unique_val per copier, so this naturally handles
            -- any number of Blueprints / Brainys without hardcoded suffixes.
            local source = context.blueprint_copier or card
            local tracking_key = tostring(rescored_card.unique_val)
                .. '_' .. tostring(source.unique_val)
            if context.losted_quantum_copy then
                tracking_key = tracking_key .. '_q'
            end

            if card.ability.extra.cards_rescored[tracking_key] then
                return
            end

            card.ability.extra.cards_rescored[tracking_key] = true

            if SMODS.pseudorandom_probability(
                    card,
                    'losted_laser_microjet_' .. tracking_key,
                    1,
                    card.ability.extra.odds,
                    'losted_laser_microjet'
                ) then
                rescored_card.config.diamond_rescored_times =
                    rescored_card.config.diamond_rescored_times - 1
                return {
                    message = '+1',
                    colour = G.C.CHIPS,
                    card = context.blueprint_card or card,
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
            for _, card in ipairs(args.full_hand) do
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
