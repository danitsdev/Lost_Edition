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
        if context.individual and context.cardarea == G.play and context.other_card
            and context.other_card.repetition_trigger
            and SMODS.has_enhancement(context.other_card, 'm_losted_diamond')
            and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.MULT,
                card = card,
            }
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
