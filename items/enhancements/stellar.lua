local enhancementInfo = {
    key = 'stellar',
    pos = LOSTEDMOD.funcs.coordinate(2),
    atlas = 'losted_enhancements',
    config = {
        extra = {
            chips = 4,
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.main_scoring then
            local chips = card.ability.extra.chips
            return {
                func = function()
                    card.ability.perma_bonus = (card.ability.perma_bonus or 0) + chips
                end,
                extra = { message = localize('k_upgrade_ex'), colour = G.C.PURPLE },
                card = card
            }
        end
    end
}

return enhancementInfo
