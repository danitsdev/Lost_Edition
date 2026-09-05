local jokerInfo = {
    key = "precious",
    pos = LOSTEDMOD.funcs.coordinate(43),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    perishable_compat = false,
    config = { extra = { mult_gain = 4, mult = 0 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_losted_diamond
        return { vars = { card.ability.extra.mult_gain, card.ability.extra.mult } }
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
        if context.rescore_cards and not context.blueprint then
            local diamond_rescores = 0
            for _, rescored_card in ipairs(context.rescore_cards) do
                if SMODS.has_enhancement(rescored_card, 'm_losted_diamond') then
                    diamond_rescores = diamond_rescores + 1
                end
            end
            if diamond_rescores <= 0 then return end

            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "mult",
                scalar_value = "mult_gain",
                operation = function(ref_table, ref_value, initial, change)
                    ref_table[ref_value] = initial + change * diamond_rescores
                end,
                scaling_message = {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.MULT
                }
            })
        end
        
        if context.joker_main then
            if to_big(card.ability.extra.mult) > to_big(0) then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}

return jokerInfo
