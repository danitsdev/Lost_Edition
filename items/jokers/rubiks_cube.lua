local jokerInfo = {
    key = "rubiks_cube",
    pos = LOSTEDMOD.funcs.coordinate(28),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    config = { extra = { chips_nine = 60, mult_six = 9 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips_nine, card.ability.extra.mult_six } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card and context.other_card:get_id() == 9 then
                return {
                    chips = card.ability.extra.chips_nine,
                }
            end
        end

        if context.individual and context.cardarea == G.play then
            if context.other_card and context.other_card:get_id() == 6 then
                return {
                    mult = card.ability.extra.mult_six,
                }
            end
        end
    end
}

return jokerInfo