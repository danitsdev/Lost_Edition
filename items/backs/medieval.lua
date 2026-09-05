local backInfo = {
    key = "medieval",
    pos = LOSTEDMOD.funcs.coordinate(3),
    atlas = 'losted_backs',
    unlocked = false,
    discovered = true,
    config = { joker_slot = 2 },
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.joker_slot }}
    end,

    apply = function(self)
        LOSTEDMOD.funcs.update_medieval_boss_rush()
    end,
    calculate = function(self, back, context)
        LOSTEDMOD.funcs.update_medieval_boss_rush()
    end,
    check_for_unlock = function(self, args)
        if args.type == 'win_challenge' and G.GAME.challenge == 'c_losted_medieval_era' then
            self.challenge_bypass = true
            unlock_card(self)
        end
    end,
}

function LOSTEDMOD.funcs.update_medieval_boss_rush()
    if not (G and G.GAME and G.GAME.modifiers and G.GAME.round_resets) then return end

    local selected_back = G.GAME.selected_back
    local back_center = selected_back and selected_back.effect and selected_back.effect.center
    local medieval_deck = back_center and back_center.key == 'b_losted_medieval'
    local medieval_sleeve = G.GAME.selected_sleeve == 'sleeve_losted_medieval'
    if not (medieval_deck or medieval_sleeve) then return end

    G.GAME.modifiers.boss_rush = (tonumber(G.GAME.round_resets.ante) or 1) >= 2
end

if type(SMODS.reset_blind_choices) == 'function' and
    not LOSTEDMOD.medieval_reset_blind_choices_wrapped then
    local reset_blind_choices_ref = SMODS.reset_blind_choices
    function SMODS.reset_blind_choices(choices, ...)
        LOSTEDMOD.funcs.update_medieval_boss_rush()
        local result = reset_blind_choices_ref(choices, ...)

        -- SMODS 26 centralizes blind generation here. The old Lovely patches
        -- that replaced vanilla get_new_boss calls no longer match, so replace
        -- the generated choices after SMODS has populated them.
        if G and G.GAME and G.GAME.modifiers and G.GAME.modifiers.boss_rush then
            local small, big, boss = LOSTEDMOD.funcs.get_boss_rush_choices()
            choices.Small = small
            choices.Big = big
            choices.Boss = boss
        end

        return result
    end
    LOSTEDMOD.medieval_reset_blind_choices_wrapped = true
end

return backInfo
