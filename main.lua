SMODS.current_mod.optional_features = function()
    return {
        retrigger_joker = true -- Quantum edition, retrigger joker one time
    }
end

-- Main table for the mod
LOSTEDMOD = {
    debug = false,
    vars = {
        the_joker_triggered = false,
    },
    funcs = {}
}

-- Default config (SMODS.current_mod.config loaded from config.lua)
LOSTEDMOD.config = SMODS.current_mod.config or {}

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
    'utilities', 
    'assets',
    'compat',
    'hooks/game',
    'hooks/overrides',
    'hooks/pow_mult',
    'hooks/intro',
    'themes',
    'items',
    'hooks/ui_definitions',
    'sleeves',
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

if not G.SETTINGS.music_selection then
    G.SETTINGS.music_selection = "losted"
end

G.FUNCS.change_music = function(args)
    G.ARGS.music_vals = G.ARGS.music_vals or { "losted", "balatro" }
    G.SETTINGS.QUEUED_CHANGE.music_change = G.ARGS.music_vals[args.to_key]
    G.SETTINGS.music_selection = G.ARGS.music_vals[args.to_key]
    G:save_settings()
end

-- Reset jokers on run start
function SMODS.current_mod.reset_game_globals(run_start)
    if G.GAME.current_round then
        G.GAME.current_round.losted_most_common_rank = nil
        G.GAME.current_round.losted_most_common_rank_cached = nil
        G.GAME.current_round.losted_most_common_rank_hand = nil
    end
    LOSTEDMOD.vars.active_welder = nil
    LOSTEDMOD.vars.active_welder_cache_dirty = true
    if run_start then
        LOSTEDMOD.quantum_context_queue_count = 0
        LOSTEDMOD.has_quantum_context_queue = false
        G.GAME.losted_mysterious_completed = false
        G.GAME.losted_the_joker_triggered = false
        LOSTEDMOD.vars.the_joker_triggered = false
        LOSTEDMOD.funcs.reset_losted_sarcophagus()
        LOSTEDMOD.funcs.reset_losted_sticky()
    end
    LOSTEDMOD.funcs.reset_losted_obsidian_card()
    LOSTEDMOD.funcs.reset_losted_moist_cake()
end
