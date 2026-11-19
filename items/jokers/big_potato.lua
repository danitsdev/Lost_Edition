local function count_enhanced_cards()
    local count = 0
    for _, playing_card in ipairs(G.playing_cards or {}) do
        if next(SMODS.get_enhancements(playing_card)) ~= nil then
            count = count + 1
        end
    end
    return count
end

local jokerInfo = {
    key = "big_potato",
    pos = LOSTEDMOD.funcs.coordinate(88),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    config = { extra = { mult_per_card = 3 } },
    loc_vars = function(self, info_queue, card)
        local total = G.playing_cards and (count_enhanced_cards() * card.ability.extra.mult_per_card) or 0
        return { vars = { card.ability.extra.mult_per_card, total } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local total = count_enhanced_cards() * card.ability.extra.mult_per_card
            if total > 0 then
                return { mult = total }
            end
        end
    end,
}

return jokerInfo
