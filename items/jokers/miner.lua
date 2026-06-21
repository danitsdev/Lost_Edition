local jokerInfo = {
    key = "miner",
    pos = LOSTEDMOD.funcs.coordinate(31),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    config = { extra = { odds = 10 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.c_losted_greed
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'losted_minerador')
        return { vars = { numerator, denominator } }
    end,
    calculate = function(self, card, context)
        if context.joker_main and not context.blueprint then
            if SMODS.pseudorandom_probability(card, 'losted_minerador', 1, card.ability.extra.odds, 'losted_minerador') then
                event({
                    trigger = 'after',
                    delay = 0.05,
                    func = function()
                        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                            event({
                                func = function()
                                    SMODS.add_card({
                                        set = 'Spectral',
                                        area = G.consumeables,
                                        key = 'c_losted_greed',
                                        key_append = 'losted_minerador'
                                    })
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end
                            })
                        end
                        return true
                    end
                })
                return {
                    message = localize('k_plus_spectral'),
                    colour = G.C.PURPLE,
                    card = card
                }
            end
        end
    end
}

return jokerInfo
