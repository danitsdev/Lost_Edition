local jokerInfo = {
    key = "strawberry_milkshake",
    pos = LOSTEDMOD.funcs.coordinate(12),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    eternal_compat = false,
    config = { extra = { Xchips_loss = 0.25, Xchips = 3 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xchips, card.ability.extra.Xchips_loss } }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if card.ability.extra.Xchips - card.ability.extra.Xchips_loss <= 1 then
                LOSTEDMOD.funcs.destroy_joker(card)
                return { message = localize('k_eaten_ex'), colour = G.C.FILTER }
            else
                card.ability.extra.Xchips = card.ability.extra.Xchips - card.ability.extra.Xchips_loss
                return {
                    message = localize { type = 'variable', key = 'a_xchips_minus', vars = { card.ability.extra.Xchips_loss } },
                    colour = G.C.CHIPS
                }
            end
        end
        if context.joker_main then
            if card.ability.extra.Xchips > 1 then
                return {
                    xchips = card.ability.extra.Xchips
                }
            end
        end
    end
}

return jokerInfo