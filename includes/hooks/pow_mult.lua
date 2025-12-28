-- Power Mult system for Lost Edition mod - adapted from notalisman's exponential mult system

-- Helper function to check if a value is in a table
local function table_contains(tbl, element)
   for _, value in pairs(tbl) do
        if value == element then
            return true
        end
    end
    return false
end

if SMODS and SMODS.calculate_individual_effect then
    local originalCalcIndiv = SMODS.calculate_individual_effect
    function SMODS.calculate_individual_effect(effect, scored_card, key, amount, from_edition)
        local ret = originalCalcIndiv(effect, scored_card, key, amount, from_edition)
        if ret then
            return ret
        end

        -- Handle power mult with purple message
        if (key == 'pow_mult') and amount ~= 1 then
            if effect.card then
                juice_card(effect.card)
            end
            mult = mod_mult(mult ^ amount)
            update_hand_text({ delay = 0 }, { chips = hand_chips, mult = mult })
            if not effect.remove_default_message then
                card_eval_status_text(scored_card or effect.card or effect.focus, 'extra', nil, percent, nil, {
                    sound = 'losted_pow_sound',
                    message = localize({
                        type = "variable",
                        key = "a_powmult",
                        vars = { number_format(amount) },
                    }),
                    colour = G.C.PURPLE
                })
            end
            return true
        end

    end
    
    -- Register the calculation keys with SMODS
    for _, v in ipairs({'pow_mult'}) do
        if not table_contains(SMODS.other_calculation_keys, v) then
            table.insert(SMODS.other_calculation_keys, v)
        end
    end
end

return true