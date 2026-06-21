local enhancementInfo = {
    key = 'diamond',
    pos = LOSTEDMOD.funcs.coordinate(0),
    atlas = 'losted_enhancements',
    config = { h_x_chips = 1.2, h_x_mult = 1.2 },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.h_x_chips, card.ability.h_x_mult } }
    end,

    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play
            and context.other_card == card
            and LOSTEDMOD.funcs.is_adjacent_scoring_enhancement(
                card,
                context.scoring_hand,
                'm_losted_diamond'
            ) then
            return {
                repetitions = 1,
                message = localize('k_again_ex'),
            }
        end
    end,
}

return enhancementInfo
