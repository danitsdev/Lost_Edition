local jokerInfo = {
    key = "dance_jimbo",
    pos = { x = 0, y = 0 },
    atlas = 'losted_jimbo_dance',
    rarity = 4,
    cost = 1000,
    unlocked = true,

    no_mod_badges = true,
    no_doe = true,
    no_collection = true,

    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = false,
    
    config = {},
    update = function(self, card)
        local frame_amount = 6
        local timer = (G.TIMERS.REAL * 10) + 1
        local wrapped_value = (math.floor(timer) - 1) % frame_amount
        card.children.center:set_sprite_pos({x = wrapped_value, y = 0})
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xmult = 1.7976931348623157e308
            }
        end
    end,
    in_pool = function(self) 
        return false
    end
}

return jokerInfo