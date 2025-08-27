-- Functions for Lost Edition intro sequence

local gu = Game.update
function Game:update(dt)
    gu(self, dt)
    if not G.PROFILES[G.SETTINGS.profile].losted_intro_complete then
        G.FUNCS.losted_intro_controller()
    end
end

-- Prevent crashes when quips are missing
if not Card_Character._losted_say_wrap then
    Card_Character._losted_say_wrap = true
    local say_stuff_ref = Card_Character.say_stuff
    function Card_Character:say_stuff(n, not_first, quip_key)
        local quip = SMODS.JimboQuips and SMODS.JimboQuips[quip_key]
        if quip then
            return say_stuff_ref(self, n, not_first, quip_key)
        end
    end
end

local function get_quip_key_for_step(step)
    if G.FUNCS and G.FUNCS.losted_get_intro_quip_key then
        return G.FUNCS.losted_get_intro_quip_key(step)
    end
    return 'lq_' .. tostring(step or 1)
end

G.FUNCS.losted_intro_controller = function()
    G.PROFILES[G.SETTINGS.profile].losted_intro_progress = G.PROFILES[G.SETTINGS.profile].losted_intro_progress or {
        state = "start",
        completed = {},
    }
    if not G.SETTINGS.paused and not G.PROFILES[G.SETTINGS.profile].losted_intro_complete then
        if G.STATE == G.STATES.MENU and not G.PROFILES[G.SETTINGS.profile].losted_intro_progress.completed.start then
            G.PROFILES[G.SETTINGS.profile].losted_intro_progress.section = "start"
            G.FUNCS.losted_intro_part("start")
            G.PROFILES[G.SETTINGS.profile].losted_intro_progress.completed.start = true
            G:save_progress()
        end
    end
end

G.FUNCS.losted_intro_part = function(_part)
    G.SETTINGS.paused = true
    if _part == "start" then
        if not G.LostedCharacter then
            G.LostedCharacter = Card_Character({ center = G.P_CENTERS.j_joker })
        end
        
        G.LostedCharacter:set_alignment({ major = G.ROOM_ATTACH, type = "cm", offset = { x = 0, y = 0 } })

        if G.LostedCharacter.children.particles then
            G.LostedCharacter.children.particles:remove()
            G.LostedCharacter.children.particles = nil
        end
        if G.LostedCharacter.children.highlight then
            G.LostedCharacter.children.highlight:remove()
            G.LostedCharacter.children.highlight = nil
        end

        G.LostedCharacter.losted_intro_step = 1
        G.FUNCS.losted_intro_next_step()
    end
end

G.FUNCS.losted_intro_next_step = function()
    local step = G.LostedCharacter and G.LostedCharacter.losted_intro_step or 1
    
    local intro_steps = {
        [1] = { text_key = "losted_intro_1" },
        [2] = { text_key = "losted_intro_2" },
        [3] = { text_key = "losted_intro_3" },
        [4] = { text_key = "losted_intro_4", is_last_text = true }
    }
    
    if intro_steps[step] then
        intro_steps[step].step = step
        losted_intro_info(intro_steps[step])
    else
        G.FUNCS.losted_intro_final_step()
    end
end

function losted_intro_info(args)
    local step = args.step or 1
    
    G.E_MANAGER:add_event(Event({
        trigger = "after",
        delay = 0.3,
        func = function()
            if not G.LostedCharacter then return true end
            
            G.LostedCharacter:remove_speech_bubble()
            G.LostedCharacter:remove_button()

            if args.text_key then
                G.LostedCharacter:add_speech_bubble(args.text_key, args.align or "tm", args.loc_vars)
            end
            
            local qk = get_quip_key_for_step(step)
            
            if qk then
                local lines = G.localization.misc.tutorial[args.text_key] or {}
                local duration = math.max(8, 3 * #lines)
                G.LostedCharacter:say_stuff(duration, false, qk)
            end

            if args.is_last_text then
                G.LostedCharacter:add_button(localize('b_continue'), 'losted_intro_final_step')
            else
                G.LostedCharacter:add_button(localize('b_next'), 'losted_intro_advance')
            end
            
            return true
        end,
    }), "tutorial")
    
    return step + 1
end

G.FUNCS.losted_intro_advance = function()
    if G.LostedCharacter then
        G.LostedCharacter.losted_intro_step = (G.LostedCharacter.losted_intro_step or 1) + 1
        G.FUNCS.losted_intro_next_step()
    end
end

-- Set up the dancing animation for the finale
G.FUNCS.losted_intro_final_step = function()
    if not G.LostedCharacter then return end
    
    G.LostedCharacter:remove_speech_bubble()
    G.LostedCharacter:remove_button()
    
    G.LostedCharacter:set_alignment({ major = G.ROOM_ATTACH, type = "cm", offset = { x = 0, y = 0 } })
    
    local card = G.LostedCharacter.children.card
    if not card then return end
    
    card.children.center.atlas = G.ASSET_ATLAS["losted_jimbo_dance"]
    card.children.center:set_sprite_pos({ x = 0, y = 0 })
    card.children.center.animated = true
    G.LostedCharacter:align()
    
    card.losted_anim_update = function(self)
        local frame_amount = 6
        local timer = (G.TIMERS.REAL * 10) + 1
        local wrapped_value = (math.floor(timer) - 1) % frame_amount
        self.children.center:set_sprite_pos({ x = wrapped_value, y = 0 })
    end

    if not card._losted_anim_hooked then
        local old_update = card.update or function() end
        card.update = function(self, ...)
            if self.losted_anim_update then self:losted_anim_update() end
            old_update(self, ...)
        end
        card._losted_anim_hooked = true
    end
    
    G.LostedCharacter:hard_set_VT()
    G.LostedCharacter:add_button(localize('b_continue'), 'close_losted_intro', G.C.BLUE, nil, nil, 0.8)
end

G.FUNCS.close_losted_intro = function()
    G.PROFILES[G.SETTINGS.profile].losted_intro_complete = true
    G:save_progress()
    
    G.SETTINGS.paused = false
    
    if G.LostedCharacter then
        G.LostedCharacter:remove()
        G.LostedCharacter = nil
    end
    
    G.E_MANAGER:clear_queue("tutorial")
end