local jokerInfo = {
    key = "slot_machine",
    pos = LOSTEDMOD.funcs.coordinate(10),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 7,
    unlocked = false,
    blueprint_compat = true,
    config = {
        extra = {
            mult = 12,
            dollars = 2,
            xmult = 2,
            odds_mult = 2,
            odds_dollars = 4,
            odds_xmult = 8,
            odds_bankruptcy = 500,
        }
    },
    loc_vars = function(self, info_queue, card)
        local bankruptcy_numerator, bankruptcy_denominator = SMODS.get_probability_vars(
            card,
            1,
            card.ability.extra.odds_bankruptcy,
            'losted_slot_bankruptcy'
        )
        return {
            vars = {
                bankruptcy_numerator,
                card.ability.extra.mult,
                card.ability.extra.dollars,
                card.ability.extra.xmult,
                bankruptcy_denominator
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:get_id() == 7 then
            local extra = card.ability.extra
            local effects = {}

            if SMODS.pseudorandom_probability(card, 'losted_slot_mult', 1, extra.odds_mult, 'losted_slot_mult') then
                effects[#effects + 1] = { mult = extra.mult }
            end
            if SMODS.pseudorandom_probability(card, 'losted_slot_dollars', 1, extra.odds_dollars, 'losted_slot_dollars') then
                effects[#effects + 1] = { dollars = extra.dollars }
                G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + extra.dollars
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.GAME.dollar_buffer = 0
                        return true
                    end
                }))
            end
            if SMODS.pseudorandom_probability(card, 'losted_slot_xmult', 1, extra.odds_xmult, 'losted_slot_xmult') then
                effects[#effects + 1] = { x_mult = extra.xmult }
            end
            if SMODS.pseudorandom_probability(
                card,
                'losted_slot_bankruptcy',
                1,
                extra.odds_bankruptcy,
                'losted_slot_bankruptcy'
            ) then
                effects[#effects + 1] = {
                    func = function()
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                local current_money = math.max(0, to_number(G.GAME.dollars or 0))
                                if current_money > 0 then
                                    ease_dollars(-current_money, true)
                                end
                                return true
                            end
                        }))
                    end
                }
            end

            if next(effects) then
                return SMODS.merge_effects(effects)
            end
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'hand' and args.handname == 'Three of a Kind' and #args.scoring_hand == 3 then
            for _, scoring_card in ipairs(args.scoring_hand) do
                if scoring_card:get_id() ~= 7 or not SMODS.has_enhancement(scoring_card, 'm_lucky') then
                    return false
                end
            end
            return true
        end
        return false
    end
}

return jokerInfo
