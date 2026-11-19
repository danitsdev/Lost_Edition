local function sticker_is_on(joker, key)
    return joker.ability[key] or (key == 'pinned' and joker.pinned)
end

function LOSTEDMOD.funcs.flux_has_modifiers(joker)
    if not joker then return false end
    if joker.edition then return true end
    for key in pairs(SMODS.Stickers or {}) do
        if sticker_is_on(joker, key) then return true end
    end
    return false
end

local consumableInfo = {
    key = 'flux',
    set = 'Spectral',
    atlas = 'losted_tarots',
    pos = LOSTEDMOD.funcs.coordinate(13),
    unlocked = true,
    cost = 4,
    can_use = function(self, card)
        return G.jokers and #G.jokers.highlighted == 1
            and LOSTEDMOD.funcs.flux_has_modifiers(G.jokers.highlighted[1])
    end,
    use = function(self, card, area, copier)
        local joker = G.jokers.highlighted[1]
        event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                big_juice(card)
                return true
            end
        })
        event({
            trigger = 'after',
            delay = 0.3,
            func = function()
                if not joker or joker.REMOVED then return true end
                if joker.edition then
                    joker:set_edition(nil, true)
                end
                for key, sticker in pairs(SMODS.Stickers or {}) do
                    if sticker_is_on(joker, key) then
                        sticker:apply(joker, false)
                    end
                end
                joker.pinned = nil
                joker.ability.perish_tally = nil
                if SMODS.recalc_debuff then SMODS.recalc_debuff(joker) end
                joker:juice_up(0.5, 0.5)
                play_sound('tarot2', 1, 0.6)
                return true
            end
        })
        event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.jokers:unhighlight_all()
                return true
            end
        })
        delay(0.5)
    end,
}

return consumableInfo
