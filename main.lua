SMODS.current_mod.optional_features = {
	retrigger_joker = true -- Quantum edition, retrigger joker one time 
}

-- Main table for the mod
LOSTEDMOD = {
    debug = false,
    vars = {
        the_joker_triggered = false,
    },
    funcs = {}
}

-- Debugging functions
function sendDebugMessage(msg)
    if LOSTEDMOD.debug then
        print("[Lost Edition DEBUG] " .. tostring(msg))
    end
end

function sendErrorMessage(msg)
    print("[Lost Edition ERROR] " .. tostring(msg))
end

-- List of modules to be loaded
local includes = {
    'tables',
    'utilities', 
    'assets',
    'compat',
    'hooks/game',
    'hooks/overrides',
    'hooks/pow_mult',
    'hooks/ui_definitions',
    'hooks/intro',
    'speed_options',
    'music',
    'themes',
    'items',
}

-- Load modules
for _, include in ipairs(includes) do
    local success, error_msg = pcall(function()
        local init, error = SMODS.load_file("includes/" .. include .. ".lua")
        if error then
            sendErrorMessage("Failed to load " .. include .. " with error: " .. error)
        else
            if init then init() end
            sendDebugMessage("Loaded module: " .. include)
        end
    end)
    if not success then
        sendErrorMessage("Error in module " .. include .. ": " .. error_msg)
    end
end

-- JokerDisplay compatibility (loaded AFTER items so definitions aren't overwritten by inline joker_display_def)
if JokerDisplay then
    sendDebugMessage("JokerDisplay object found, loading compat...")
    if JokerDisplay.Definitions then
        sendDebugMessage("JokerDisplay.Definitions exists with " .. tostring((function() local c=0; for _ in pairs(JokerDisplay.Definitions) do c=c+1 end; return c end)()) .. " entries")
    else
        sendErrorMessage("JokerDisplay.Definitions is nil!")
    end
    local jd_init, jd_error = SMODS.load_file("includes/joker_display.lua")
    if jd_error then
        sendErrorMessage("Failed to load JokerDisplay compat: " .. jd_error)
    elseif jd_init then
        local ok, err = pcall(jd_init)
        if ok then
            sendDebugMessage("JokerDisplay compat loaded OK")
        else
            sendErrorMessage("Error executing JokerDisplay compat: " .. tostring(err))
        end
    else
        sendErrorMessage("JokerDisplay compat file returned nil")
    end
    if JokerDisplay.Definitions then
        sendDebugMessage("After load: JokerDisplay.Definitions has " .. tostring((function() local c=0; for _ in pairs(JokerDisplay.Definitions) do c=c+1 end; return c end)()) .. " entries")
    end
end

-- Reset jokers on run start
function SMODS.current_mod.reset_game_globals(run_start)
    G.GAME.losted_mysterious_completed = false
    LOSTEDMOD.vars.the_joker_triggered = false
    LOSTEDMOD.funcs.reset_losted_obsidian_card()
    LOSTEDMOD.funcs.reset_losted_moist_cake()
    LOSTEDMOD.funcs.reset_losted_sarcophagus()
    LOSTEDMOD.funcs.reset_losted_sticky()
end

function G.FUNCS.initPostSplash()
end
