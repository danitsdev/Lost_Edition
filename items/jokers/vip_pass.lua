local jokerInfo = {
    key = "vip_pass",
    pos = LOSTEDMOD.funcs.coordinate(6),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 8,
    unlocked = true,
    blueprint_compat = false,
    perishable_compat = false,
    config = {
        triggered = false
    },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.p_voucher_normal_1
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.starting_shop and card.ability.triggered and not context.blueprint then
            card.ability.triggered = false
            event({
                func = function()
                    local voucher = SMODS.add_voucher_to_shop()
                    voucher.cost = 0
                    voucher.base_cost = 0
                    return true
                end
            })
        end

        if context.end_of_round and context.main_eval and G.GAME.blind.boss and not context.blueprint then
            card.ability.triggered = true
        end
    end
}

return jokerInfo
