local BOSSES_NEEDED = 3

local backInfo = {
    key = "eclipse",
    pos = LOSTEDMOD.funcs.coordinate(5),
    atlas = 'losted_backs',
    unlocked = true,
    config = { extra = { bosses = BOSSES_NEEDED } },
    loc_vars = function(self, info_queue, back)
        info_queue[#info_queue + 1] = G.P_CENTERS.e_negative
        local progress = (G.STAGE == G.STAGES.RUN and G.GAME and G.GAME.losted_eclipse_bosses or 0) % BOSSES_NEEDED
        return { vars = { BOSSES_NEEDED, progress } }
    end,
    calculate = function(self, back, context)
        if context.end_of_round and context.main_eval and G.GAME.blind and G.GAME.blind.boss then
            G.GAME.losted_eclipse_bosses = (G.GAME.losted_eclipse_bosses or 0) + 1
            if G.GAME.losted_eclipse_bosses % BOSSES_NEEDED ~= 0 then return end

            local candidates = {}
            for _, joker in ipairs(G.jokers and G.jokers.cards or {}) do
                if not joker.edition then
                    candidates[#candidates + 1] = joker
                end
            end
            if #candidates == 0 then return end

            local chosen = pseudorandom_element(candidates, pseudoseed('losted_eclipse'))
            event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    if chosen and not chosen.REMOVED then
                        chosen:set_edition({ negative = true }, true)
                        chosen:juice_up(0.5, 0.5)
                    end
                    return true
                end
            })
        end
    end,
}

return backInfo
