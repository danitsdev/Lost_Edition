local jokerInfo = {
    key = "mitosis",
    pos = LOSTEDMOD.funcs.coordinate(14),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = false,
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = { key = "improvements_of_card", set = "Other" }
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.first_hand_drawn and not context.blueprint then
            local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
            juice_card_until(card, eval, true)
        end
        if context.before and context.main_eval and not context.blueprint then
            card.ability.extra.mitosis_snapshot = nil
            card.ability.extra.mitosis_triggered = nil

            if G.GAME.current_round.hands_played ~= 0 then
                return
            end

            local full_hand = context.full_hand
            if not full_hand or #full_hand < 2 then return end

            local first_rank = full_hand[1]:get_id()
            for i = 2, #full_hand do
                if full_hand[i]:get_id() ~= first_rank then
                    return 
                end
            end

            local source_card = full_hand[#full_hand]
            local source_enhancements = SMODS.get_enhancements(source_card)

            card.ability.extra.mitosis_snapshot = {
                source_card = source_card,
                edition = source_card.edition,
                seal = source_card.seal,
                enhancements = source_enhancements and next(source_enhancements) and source_enhancements or nil,
            }
        end

        if context.individual and context.cardarea == G.play and context.other_card and not context.blueprint then
            local snapshot = card.ability.extra.mitosis_snapshot
            if not snapshot or not snapshot.source_card then
                return
            end

            if context.other_card == snapshot.source_card then
                return
            end

            local changed = false

            if snapshot.edition then
                context.other_card:set_edition(snapshot.edition, true)
                changed = true
            end

            if snapshot.seal then
                context.other_card:set_seal(snapshot.seal)
                changed = true
            end

            if snapshot.enhancements then
                for enh_key, _ in pairs(snapshot.enhancements) do
                    context.other_card:set_ability(enh_key, nil, true)
                    changed = true
                end
            end

            if changed then
                context.other_card:juice_up(0.3, 0.4)
                play_sound('card1', 0.85, 0.8)

                if not card.ability.extra.mitosis_triggered then
                    card.ability.extra.mitosis_triggered = true
                    big_juice(card)
                end

                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.PURPLE
                }
            end
        end

        if context.after and not context.blueprint then
            card.ability.extra.mitosis_snapshot = nil
            card.ability.extra.mitosis_triggered = nil
        end
    end
}

return jokerInfo
