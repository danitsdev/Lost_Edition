local jokerInfo = {
    key = "clown_car",
    blueprint_compat = false,
    rarity = 3,
    cost = 10,
    pos = LOSTEDMOD.funcs.coordinate(67),
    atlas = 'losted_jokers',
    unlocked = false,
    eternal_compat = false,
    perishable_compat = false,
    config = { extra = { JCreates = 1, maxJCreates = 5, totalJCreates = 0 } },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.JCreates,
                card.ability.extra.maxJCreates,
                card.ability.extra.totalJCreates,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.setting_blind and not context.blueprint then
            local extra = card.ability.extra
            if card.ability.extra.totalJCreates < card.ability.extra.maxJCreates
                and #G.jokers.cards < G.jokers.config.card_limit then

                if LOSTEDMOD.funcs.should_count_quantum_progress(context) then
                    card.ability.extra.totalJCreates = card.ability.extra.totalJCreates + card.ability.extra.JCreates
                end

                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('losted_horn')
                        local joker_card = SMODS.create_card({
                            set = 'Joker',
                            area = G.jokers,
                            rarity = 'Uncommon',
                            key_append = 'clown_car_generated'
                        })
                        joker_card:add_to_deck()
                        G.jokers:emplace(joker_card)
                        big_juice(card)

                        if extra.totalJCreates >= extra.maxJCreates then
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 1.0,
                                func = function()
                                    play_sound('tarot1')
                                    card.T.r = -0.2
                                    card:juice_up(0.3, 0.4)
                                    card.states.drag.is = true
                                    card.children.center.pinch.x = true
                                    G.E_MANAGER:add_event(Event({
                                        trigger = 'after',
                                        delay = 0.3,
                                        blockable = false,
                                        func = function()
                                            play_sound('losted_explosion')
                                            LOSTEDMOD.funcs.destroy_joker(card)
                                            return true
                                        end
                                    }))
                                    return true
                                end
                            }))
                        end
                        return true
                    end
                }))

                return {
                    message = localize('k_plus_joker'),
                    colour = G.C.BLUE
                }
            end
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'win_challenge' and G.GAME.challenge == 'c_losted_only_jokers' then
            self.challenge_bypass = true
            return true
        end
        return false
    end,
}

return jokerInfo
