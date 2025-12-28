local jokerInfo = {
    key = "demonic_joker",
    pos = LOSTEDMOD.funcs.coordinate(29),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = false,
    blueprint_compat = true,
    config = {
        extra = {
            gold_per_six = 2,
            gold_multiplier = 2,
            odds = 3
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {card.ability.extra.gold_per_six, (G.GAME.probabilities.normal or 1), card.ability.extra.odds}
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card and context.other_card:get_id() == 6 then
                if pseudorandom('demonic_joker_fail') < (G.GAME.probabilities.normal or 1) / card.ability.extra.odds then
                    return
                end
                
                local gold = card.ability.extra.gold_per_six
                if next(context.poker_hands['Three of a Kind']) then
                    gold = gold * card.ability.extra.gold_multiplier
                end
                return {
                    dollars = gold,
                    message = localize('$') .. gold,
                    colour = G.C.GOLD
                }
            end
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'hand' then
            local gold_sixes = 0
            for _, card in ipairs(args.scoring_hand) do
                if card:get_id() == 6 and SMODS.has_enhancement(card, 'm_gold') then
                    gold_sixes = gold_sixes + 1
                end
            end
            return gold_sixes == 3
        end
        return false
    end
}

return jokerInfo
