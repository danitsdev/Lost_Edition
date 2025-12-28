local jokerInfo = {
    key = "rocker",
    pos = LOSTEDMOD.funcs.coordinate(32),
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 6,
    blueprint_compat = true,
    config = { extra = { mult = 8 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_stone
        return { vars = { card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if SMODS.has_enhancement(context.other_card, 'm_stone') then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end,
    in_pool = function(self)
        for _, c in ipairs(G.playing_cards or {}) do
            if SMODS.has_enhancement(c, 'm_stone') then
                return true
            end
        end
        return false
    end,
}

return jokerInfo