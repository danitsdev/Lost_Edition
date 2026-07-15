local function is_nan(value)
    -- OmegaNum exposes an explicit check. Native numbers and Talisman's
    -- legacy BigNum both identify NaN by comparing unequal to themselves.
    if type(value) == 'table' and type(value.isNaN) == 'function' then
        return value:isNaN()
    end
    return value ~= value
end

SMODS.Scoring_Parameter({
    key = 'pow_mult',
    default_value = 0,
    colour = G.C.PURPLE,
    calculation_keys = { 'pow_mult' },

    calc_effect = function(self, effect, scored_card, key, amount, from_edition)
        if key ~= 'pow_mult' or amount == 1 or not SMODS.Calculation_Controls.mult then
            return
        end

        if effect.card and effect.card ~= scored_card then
            juice_card(effect.card)
        end

        local mult_parameter = SMODS.Scoring_Parameters.mult
        local current_mult = mult_parameter.current
        -- Preserve naneinf as a valid terminal game state: only skip Plasma
        -- when the incoming Mult is already NaN. Do not predict or cap the
        -- result, so Talisman/Amulet big-number implementations stay intact.
        if is_nan(current_mult) then
            return true
        end

        local target_mult = current_mult ^ amount
        mult_parameter:modify(target_mult - current_mult)

        if not effect.remove_default_message then
            card_eval_status_text(
                effect.message_card or scored_card or effect.card or effect.focus,
                'extra', nil, percent, nil,
                {
                    sound = 'losted_pow_sound',
                    pitch = 1.75,
                    volume = 0.28,
                    message = localize({
                        type = 'variable',
                        key = 'a_powmult',
                        vars = { number_format(amount) },
                    }),
                    colour = G.C.PURPLE,
                }
            )
        end

        return true
    end,
})

return true
