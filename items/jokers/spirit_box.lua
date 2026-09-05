local jokerInfo = {
    key = 'spirit_box',
    pos = LOSTEDMOD.funcs.coordinate(47),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    perishable_compat = false,
    config = { extra = { xmult_per_spectral = 0.5 } },
    loc_vars = function(self, info_queue, card)
        local spectral_count = G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.spectral or 0
        local total_xmult = 1 + (card.ability.extra.xmult_per_spectral * spectral_count)
        return { vars = { card.ability.extra.xmult_per_spectral, total_xmult, spectral_count } }
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == "Spectral" then
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.MULT
            }
        end
        
        if context.joker_main then
            local spectral_count = G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.spectral or 0
            local total_xmult = 1 + (card.ability.extra.xmult_per_spectral * spectral_count)
            
            if total_xmult > 1 then
                return {
                    xmult  = total_xmult
                }
            end
        end
    end
}

return jokerInfo