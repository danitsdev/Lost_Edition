local jokerInfo = {
    key = "chicken_cleide",
    pos = LOSTEDMOD.funcs.coordinate(36),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8,
    unlocked = false,
    eternal_compat = false,
    perishable_compat = false,
    blueprint_compat = false,
    config = {
        extra = {
            eggs_created = 0,
            max_eggs = 3
        }
    },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.j_egg
        info_queue[#info_queue + 1] = G.P_CENTERS.e_negative
        return {
            vars = {card.ability.extra.max_eggs, card.ability.extra.eggs_created}
        }
    end,
    calculate = function(self, card, context)
        if context.setting_blind and not context.blueprint and context.blind.boss then
            if card.ability.extra.eggs_created < card.ability.extra.max_eggs then
                if LOSTEDMOD.funcs.should_count_quantum_progress(context) then
                    card.ability.extra.eggs_created = card.ability.extra.eggs_created + 1
                end

                G.E_MANAGER:add_event(Event({
                    func = function()

                        play_sound('losted_chicken')

                        local egg_card = SMODS.add_card({
                            set = 'Joker',
                            area = G.jokers,
                            key = 'j_egg'
                        })
                        if egg_card then
                            egg_card:set_edition({
                                negative = true
                            })
                        end
                        big_juice(card)

                        -- Check if this was the last egg
                        if card.ability.extra.eggs_created >= card.ability.extra.max_eggs then
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
                    colour = G.C.DARK_EDITION
                }
            end
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'win_challenge' and G.GAME.challenge == 'c_omelette_1' then
            self.challenge_bypass = true
            unlock_card(self)
        end
    end,
}

return jokerInfo
