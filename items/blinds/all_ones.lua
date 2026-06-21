local blindInfo = {
    key = 'all_ones',
    pos = { x = 0, y = 0 },
    atlas = 'losted_blinds',
    mult = 2,
    dollars = 5,
    boss = { min = 5 },
    boss_colour = HEX('50bf7c'),
    calculate = function(self, blind, context)
        if context.mod_probability and not blind.disabled then
            return {
                numerator = context.numerator / 2
            }
        end
    end,
}

return blindInfo
