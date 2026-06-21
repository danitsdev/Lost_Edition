local function calculate_toast_cards(context)
    local toasts_total = {}
    for _, toast_card in ipairs(context.scoring_hand or {}) do
        if toast_card.config.center == G.P_CENTERS.m_losted_toast
            and not toast_card.debuff and not toast_card.destroyed then
            table.insert(toasts_total, toast_card)
            LOSTEDMOD.funcs.forced_message(localize('toast_eaten'), toast_card)
        end
    end
    if #toasts_total > 0 then
        SMODS.destroy_cards(toasts_total, {
            delay = 0.7 * 2 * 1.051,
            colours = { HEX('ffdfaa') },
            destroy_func = function(card, args)
                if card and not card.removed then
                    play_sound('losted_eating', 1.0 + (math.random() * 0.1) - 0.05)
                    return card:start_dissolve(args.colours, nil, 2) ~= false
                end
                return false
            end,
        })
    end
end

local enhancementInfo = {
    key = 'toast',
    pos = LOSTEDMOD.funcs.coordinate(1),
    atlas = 'losted_enhancements',
    config = { Xmult = 3 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.Xmult } }
    end,
    calculate = function(self, card, context)
        if context.after and context.scoring_hand then
            calculate_toast_cards(context)
        end
        if context.individual and context.cardarea == G.play then
            return { xmult = card.ability.Xmult }
        end
    end,
}

return enhancementInfo
