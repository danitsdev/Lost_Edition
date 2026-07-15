local jokerInfo = {
    key = "limited_edition",
    pos = LOSTEDMOD.funcs.coordinate(63),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 7,
    unlocked = false,
    blueprint_compat = true,
    perishable_compat = false,
    config = { extra = { xmult = 1, xmult_gain = 0.1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult_gain, card.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.selling_card and context.card.ability.set == 'Joker' and
            not context.blueprint and context.card ~= card then
            local xmult_gain = to_number(context.card.sell_cost or 0) * (card.ability.extra.xmult_gain)
            if xmult_gain > 0 then
                card.ability.extra.xmult = (card.ability.extra.xmult) + xmult_gain
                return {
                    message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.xmult } }
                }
            end
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end,
    locked_loc_vars = function(self, info_queue, card)
        return { vars = { 40, G.PROFILES[G.SETTINGS.profile].career_stats.c_jokers_sold } }
    end,
    check_for_unlock = function(self, args)
        local stats = G.PROFILES and G.SETTINGS and G.PROFILES[G.SETTINGS.profile] and G.PROFILES[G.SETTINGS.profile].career_stats or {}
        local current = tonumber(stats.c_jokers_sold) or 0
        local meets = current >= 40
        if meets then
            if not self.unlocked then unlock_card(self) end
            return true
        end
        if args and args.type == 'career_stat' and args.statname == 'c_jokers_sold' then
            if current >= 40 then
                if not self.unlocked then unlock_card(self) end
                return true
            end
        end
        return false
    end
}

return jokerInfo
