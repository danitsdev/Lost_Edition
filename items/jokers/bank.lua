local jokerInfo = {
    key = "bank",
    pos = LOSTEDMOD.funcs.coordinate(49),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    config = { extra = { xmult_per_group = 0.3, dollars_per_group = 10 } },
    loc_vars = function(self, info_queue, card)
        local current_dollars = to_number((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0))
        local dollars_per_group = tonumber(card.ability.extra.dollars_per_group)
        local xmult_per_group = tonumber(card.ability.extra.xmult_per_group)
        local groups = (dollars_per_group and dollars_per_group > 0) and math.floor(current_dollars / dollars_per_group) or 0
        local current_xmult = 1 + (groups * (xmult_per_group or 0))
        return { vars = {
            xmult_per_group or 0,
            dollars_per_group or 0,
            current_xmult,
            current_dollars
        } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local current_dollars = to_number((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0))
            local dollars_per_group = tonumber(card.ability.extra.dollars_per_group)
            local xmult_per_group = tonumber(card.ability.extra.xmult_per_group)
            local groups = (dollars_per_group and dollars_per_group > 0) and math.floor(current_dollars / dollars_per_group) or 0
            local xmult_bonus = 1 + (groups * (xmult_per_group or 0))
            if to_big(xmult_bonus) > to_big(1) then
                return {
                    xmult = xmult_bonus
                }
            end
        end
    end
}

return jokerInfo
