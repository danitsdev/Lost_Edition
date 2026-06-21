local jokerInfo = {
    key = "big_bang",
    pos = LOSTEDMOD.funcs.coordinate(51),
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 4,
    unlocked = true,
    blueprint_compat = true,
    calculate = function(self, card, context)
        if context.setting_blind and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            G.E_MANAGER:add_event(Event({
                func = (function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card {
                                set = 'Planet',
                                key_append = 'losted_big_bang',
                            }
                            G.GAME.consumeable_buffer = 0
                            return true
                        end
                    }))
                    SMODS.calculate_effect({ message = localize('k_plus_planet'), colour = G.C.BLUE },
                        context.blueprint_card or card)
                    return true
                end)
            }))
            return nil, true
        end
    end,
}

return jokerInfo
