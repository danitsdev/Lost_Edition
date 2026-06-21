local jokerInfo = {
    key = "critic_failure",
    pos = LOSTEDMOD.funcs.coordinate(62),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = false,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    calculate = function(self, card, context)
        if context.mod_probability then
            return {
                numerator = context.numerator / 4
            }
        end
    end,
    locked_loc_vars = function(self, info_queue, card)
        return { vars = { number_format(10000000000) } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'chip_score' and to_big(args.chips) >= to_big(10000000000)
    end
}

return jokerInfo
