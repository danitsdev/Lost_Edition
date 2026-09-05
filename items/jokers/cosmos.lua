local jokerInfo = {
    key = "cosmos",
    pos = LOSTEDMOD.funcs.coordinate(41),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = false,
    blueprint_compat = true,
    config = { extra = { xmult = 1.5 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local planet_count = 0
            for _, consumable in ipairs(G.consumeables.cards) do
                if consumable.ability.set == "Planet" then
                    planet_count = planet_count + 1
                end
            end
            if planet_count > 0 then
                return {
                    xmult = card.ability.extra.xmult ^ planet_count
                }
            end
        end
    end,
    locked_loc_vars = function(self, info_queue, card)
        return { vars = { 30, G.PROFILES[G.SETTINGS.profile].career_stats.c_planets_bought } }
    end,
    check_for_unlock = function(self, args)
        local stats = G.PROFILES and G.SETTINGS and G.PROFILES[G.SETTINGS.profile] and G.PROFILES[G.SETTINGS.profile].career_stats or {}
        local current = tonumber(stats.c_planets_bought) or 0
        local meets = current >= 30
        if meets then
            return true
        end
        if args and args.type == 'career_stat' and args.statname == 'c_planets_bought' then
            return current >= 30
        end
        return false
    end
}

return jokerInfo
