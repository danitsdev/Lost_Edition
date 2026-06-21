local consumableInfo = {
    key = 'abyss',
    set = 'Tarot',
    atlas = 'losted_tarots',
    pos = LOSTEDMOD.funcs.coordinate(0),
    unlocked = true,
    config = { max_highlighted = 1 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.max_highlighted } }
    end,
    use = function(self, card, area, copier)
        local highlighted_cards = LOSTEDMOD.funcs.capture_highlighted_cards()
        local highlighted_count = #highlighted_cards

        event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                big_juice(card)
                return true
            end
        })
        for i = 1, #highlighted_cards do
            local highlighted_card = highlighted_cards[i]
            local percent = LOSTEDMOD.funcs.pitch_between(i, highlighted_count, 0.85, 1.15)
            event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    if not highlighted_card or highlighted_card.REMOVED then return true end
                    highlighted_card:flip()
                    play_sound('card1', percent)
                    highlighted_card:juice_up(0.3, 0.3)
                    return true
                end
            })
        end
        delay(0.2)
        for i = 1, #highlighted_cards do
            local highlighted_card = highlighted_cards[i]
            event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    if not highlighted_card or highlighted_card.REMOVED then return true end
                    assert(SMODS.modify_rank(highlighted_card, -1))
                    return true
                end
            })
        end
        for i = 1, #highlighted_cards do
            local highlighted_card = highlighted_cards[i]
            local percent = LOSTEDMOD.funcs.pitch_between(highlighted_count - i + 1, highlighted_count, 0.85, 1.15)
            event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    if not highlighted_card or highlighted_card.REMOVED then return true end
                    highlighted_card:flip()
                    play_sound('tarot2', percent, 0.6)
                    highlighted_card:juice_up(0.3, 0.3)
                    return true
                end
            })
        end
        event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        })
        delay(0.5)
    end,
}

return consumableInfo
