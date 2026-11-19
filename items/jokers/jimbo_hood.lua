local jokerInfo = {
    key = "jimbo_hood",
    pos = LOSTEDMOD.funcs.coordinate(70),
    soul_pos = LOSTEDMOD.funcs.coordinate(80),
    atlas = 'losted_jokers',
    rarity = 4,
    cost = 20,
    unlocked = false,
    blueprint_compat = false,
    calculate = function(self, card, context)
        if context.final_scoring_step then
            return {
                balance = true
            }
        end
    end,
    in_pool = function(self)
        -- Both do the same thing, banned for a better player experience ;)
        if LOSTEDMOD.funcs.back_active('b_plasma') then
            return false
        end
        return true
    end
}

return jokerInfo