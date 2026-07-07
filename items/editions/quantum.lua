local function get_quantum_retriggers(self, card)
    return (LOSTEDMOD.funcs.get_quantum_retriggers and LOSTEDMOD.funcs.get_quantum_retriggers(card))
        or (card.edition and card.edition.extra and card.edition.extra.retriggers)
        or (self.config and self.config.extra and self.config.extra.retriggers)
        or 1
end

local editionInfo = {
    key = 'quantum',
    shader = 'quantum',
    config = { extra = { retriggers = 1 } },
    in_shop = true,
    weight = 3,
    extra_cost = 5,
    apply_to_float = true,
    sound = { sound = 'holo1', per = 1.35, vol = 0.5 },
    loc_vars = function(self, info_queue, card)
        return { vars = { self.config.extra.retriggers } }
    end,
    get_weight = function(self)
        return (G.GAME.edition_rate - 1) * G.P_CENTERS["e_negative"].weight + G.GAME.edition_rate * self.weight
    end,
    on_apply = function(card)
        LOSTEDMOD.funcs.apply_quantum_lifecycle(card)
    end,
    on_remove = function(card)
        LOSTEDMOD.funcs.remove_quantum_lifecycle(card)
    end,
    on_load = function(card)
        -- Loading is not a safe moment to revoke an edition: some card fields
        -- and cross-mod centers may still be rebuilding. New incompatible
        -- applications are rejected by Card:set_edition instead.
        if LOSTEDMOD.funcs.can_receive_quantum_lifecycle(card) then
            LOSTEDMOD.funcs.restore_quantum_lifecycle(card)
        end
    end,
    calculate = function(self, card, context)
        -- Playing cards use Balatro's normal repetition pipeline. Jokers use the
        -- native SMODS retrigger pipeline and execute their calculate again.
        if context.repetition_only then
            return {
                repetitions = get_quantum_retriggers(self, card),
                card = card,
                colour = G.C.GREEN,
                message = localize('k_again_ex')
            }
        end

        if context.retrigger_joker_check and context.other_card == card and
            LOSTEDMOD.funcs.can_receive_quantum(card) then
            local original_effect = context.other_ret and context.other_ret.jokers
            local retriggers = get_quantum_retriggers(self, card)
            LOSTEDMOD.funcs.queue_quantum_context(card, original_effect, retriggers)
            return {
                repetitions = retriggers,
                card = card,
                colour = G.C.GREEN,
                message = localize('k_again_ex'),
                losted_quantum_retrigger = true
            }
        end
    end
}

return editionInfo
