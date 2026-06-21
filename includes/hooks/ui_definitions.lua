-- Lost Edition: UI Hooks
-- Injects all custom options into the game's settings menu.

local function losted_music_selector(width, scale)
    local music_nums = { losted = 1, balatro = 2 }
    return create_option_cycle({
        w = width or 7,
        scale = scale or 0.8,
        label = localize('k_losted_music_label'),
        options = {localize('k_losted_music_ost1'), localize('k_losted_music_ost2')},
        opt_callback = 'change_music',
        current_option = music_nums[G.SETTINGS.music_selection] or 1
    })
end

local function losted_theme_controls(width, scale)
    local current_option = G.losted_theme_presets_nums[G.SETTINGS.losted_theme_selection] or 1
    local selector = create_option_cycle({
        w = width or 5,
        scale = scale or 0.75,
        label = localize('k_losted_theme_label'),
        options = G.losted_theme_selector_options,
        opt_callback = 'change_losted_theme_preset',
        current_option = current_option
    })
    local apply_button = UIBox_button({
        minw = math.min(width or 5, 4),
        button = 'apply_losted_theme',
        colour = G.C.GREEN,
        label = {localize('k_losted_apply_button')},
        scale = 0.5
    })
    return selector, apply_button
end

local original_settings_tab = G.UIDEF.settings_tab
function G.UIDEF.settings_tab(tab)
    local setting_tab = original_settings_tab(tab)
    
    -- Section for Gameplay Speed Options
    if tab == 'Game' then
        -- This replaces the default game speed selector with our custom ones.
        -- It's done here in Lua to avoid load order crashes.
        for i, node_config in ipairs(setting_tab.nodes) do
            if node_config.nodes and node_config.nodes[1] and node_config.nodes[1].config.opt_callback == 'change_gamespeed' then
                setting_tab.nodes[i] = {
                    n = G.UIT.C,
                    config = { align = 'cm' },
                    nodes = {
                        G.UIDEF.lostedspeed_options(),
                        G.UIDEF.lostedspeed_fastforward_options(),
                        G.UIDEF.lostedspeed_statustext_options()
                    }
                }
                break
            end
        end
    end

    -- Section for Music Options
    if tab == 'Audio' then
        local musicSelector = {n=G.UIT.R, config = {align = 'cm'}, nodes= {
            losted_music_selector(7, 0.8)
        }}
        table.insert(setting_tab.nodes, musicSelector)
    end
    
    -- Section for Theme Options
    if tab == 'Themes' then
        local theme_selector, apply_button = losted_theme_controls(7, 0.9)

        setting_tab.nodes = {
            {n=G.UIT.R, config={align='cm', padding = 0.25}, nodes={ theme_selector }},
            {n=G.UIT.R, config={align='cm', padding=0.25}, nodes={ apply_button }}
        }
    end
    
    return setting_tab
end

-- Central mod settings panel. Lovely Maker exposes this screen reliably on
-- mobile, so every Lost Edition preference remains reachable from one place.
SMODS.current_mod.config_tab = function()
    local theme_selector, apply_button = losted_theme_controls(4.6, 0.7)
    local panel_colour = darken(G.C.JOKER_GREY, 0.25)
    return {
        n = G.UIT.ROOT,
        config = { align = 'cm', r = 0.1, minw = 9.6, minh = 5.2, padding = 0.16, colour = G.C.BLACK },
        nodes = {
            { n = G.UIT.R, config = { align = 'cm', padding = 0.08 }, nodes = {
                { n = G.UIT.C, config = { align = 'tm', minw = 4.7, padding = 0.12, r = 0.1, colour = panel_colour }, nodes = {
                    { n = G.UIT.R, config = { align = 'cm', padding = 0.04 }, nodes = {
                        { n = G.UIT.T, config = { text = localize('k_losted_config_game'), scale = 0.45, colour = G.C.ORANGE, shadow = true } }
                    } },
                    { n = G.UIT.R, config = { align = 'cm' }, nodes = { G.UIDEF.lostedspeed_options() } },
                    { n = G.UIT.R, config = { align = 'cm' }, nodes = { G.UIDEF.lostedspeed_fastforward_options() } },
                    { n = G.UIT.R, config = { align = 'cm' }, nodes = { G.UIDEF.lostedspeed_statustext_options() } }
                } },
                { n = G.UIT.C, config = { align = 'tm', minw = 4.7, padding = 0.12, r = 0.1, colour = panel_colour }, nodes = {
                    { n = G.UIT.R, config = { align = 'cm', padding = 0.04 }, nodes = {
                        { n = G.UIT.T, config = { text = localize('k_losted_config_audio_visual'), scale = 0.45, colour = G.C.ORANGE, shadow = true } }
                    } },
                    { n = G.UIT.R, config = { align = 'cm', padding = 0.03 }, nodes = { losted_music_selector(4.6, 0.7) } },
                    { n = G.UIT.R, config = { align = 'cm', padding = 0.03 }, nodes = { theme_selector } },
                    { n = G.UIT.R, config = { align = 'cm', padding = 0.08 }, nodes = { apply_button } }
                } }
            } }
        }
    }
end

local header_scale = 0.92 -- reduzido de 1.1
local first_column_text_mod = 0.85 -- reduzido de 0.98
local special_thanks_mod = 0.85 -- reduzido de 1
local special_thanks_padding = 0
local coding_scale = 0.80 -- reduzido de 0.90
local text_scale = 0.85 -- reduzido de 0.98

-- Safe localize helper: uses fallback text if localization key isn't available
local function L(key, fallback)
    local ok, txt = pcall(localize, key)
    if not ok then return fallback or key end
    if type(txt) ~= 'string' then return fallback or key end
    if txt == key or txt == 'ERROR' then return fallback or key end
    return txt
end

-- Credits content (Lost Edition)
local LE_CREDITS = {
    direction = { "Click no Paulo", "Danitsdev" },
    music = { "gulira" },
    artists = { "Click no Paulo", "Wellyson", "Xosé", "Henry", "Roger", "Timba", "Possiblycoolperson" },
    coding = { "Danitsdev", "Ilumino", "Evelyn" },
    beta = { "Galves", "Wellyson", "Xosé" },
    thanks = {
        "Localthunk for creating this wonderful game!",
        "And the channel subscribers for the ideas and support with the mod! <3",
    },
}

SMODS.current_mod.credits_tab = function()
    chosen = true
    -- helper to Title Case names
    local function titlecase(s)
        if type(s) ~= 'string' then return s end
        return (s:gsub("(%S+)", function(w)
            return w:sub(1,1):upper()..w:sub(2)
        end))
    end

    -- build left column (Direction, Music, Artists)
    local left_col = { n = G.UIT.C, config = { align = "tm", padding = 0.03, minw = 3.8 }, nodes = {
        -- Direction
        { n = G.UIT.R, config = { align = "tm", padding = 0.1, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 }, nodes = {
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { text = L("le_credits_direction", "Direction"), scale = header_scale * 0.6, colour = HEX('F75294'), shadow = true } },
            } },
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = {
                { n = G.UIT.R, config = { align = "tm", padding = 0 }, nodes = {
                    { n = G.UIT.T, config = { text = titlecase(table.concat(LE_CREDITS.direction, " & ")), scale = text_scale * 0.58 * first_column_text_mod, colour = HEX('B38CFF'), shadow = true } },
                } },
            } },
        } },
        -- Music
        { n = G.UIT.R, config = { align = "tm", padding = 0.1, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 }, nodes = {
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { text = L("le_credits_music", "Music"), scale = header_scale * 0.6, colour = HEX('F75294'), shadow = true } },
            } },
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = {
                { n = G.UIT.R, config = { align = "tm", padding = 0 }, nodes = {
                    { n = G.UIT.T, config = { text = titlecase(table.concat(LE_CREDITS.music, ", ")), scale = text_scale * 0.58 * first_column_text_mod, colour = HEX('B38CFF'), shadow = true } },
                } },
            } },
        } },
        -- Artists
        { n = G.UIT.R, config = { align = "tm", padding = 0.1, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 }, nodes = {
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { text = L("le_credits_artists", "Artists"), scale = header_scale * 0.6, colour = HEX('F75294'), shadow = true } },
            } },
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = (function()
                local list = {}
                for _, name in ipairs(LE_CREDITS.artists) do
                    list[#list + 1] = { n = G.UIT.R, config = { align = "tm", padding = 0 }, nodes = {
                        { n = G.UIT.T, config = { text = titlecase(name), scale = text_scale * 0.58 * first_column_text_mod, colour = HEX('B38CFF'), shadow = true } },
                    } }
                end
                return list
            end)() },
        } },
    } }

    -- build right column (Coding, Beta, Thanks)
    local right_col = { n = G.UIT.C, config = { align = "tm", padding = 0.03, minw = 3.8 }, nodes = {
        -- Coding
    { n = G.UIT.R, config = { align = "tm", padding = 0.08, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 }, nodes = {
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { text = L("le_credits_coding", "Coding"), scale = header_scale * 0.62, colour = HEX('F75294'), shadow = true } },
            } },
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = (function()
                local list = {}
                for _, name in ipairs(LE_CREDITS.coding) do
                    list[#list + 1] = { n = G.UIT.R, config = { align = "tm", padding = 0 }, nodes = {
            { n = G.UIT.T, config = { text = titlecase(name), scale = text_scale * 0.58, colour = HEX('B38CFF'), shadow = true } },
                    } }
                end
                return list
            end)() },
        } },
        -- Beta Testers
        { n = G.UIT.R, config = { align = "tm", padding = 0.08, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 }, nodes = {
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { text = L("le_credits_beta", "Quality Assurance (Beta Testers)"), scale = header_scale * 0.62, colour = HEX('F75294'), shadow = true } },
            } },
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = (function()
                local list = {}
                for _, name in ipairs(LE_CREDITS.beta) do
                    list[#list + 1] = { n = G.UIT.R, config = { align = "tm", padding = special_thanks_padding }, nodes = {
                        { n = G.UIT.T, config = { text = titlecase(name), scale = text_scale * 0.58 * special_thanks_mod, colour = HEX('B38CFF'), shadow = true } },
                    } }
                end
                return list
            end)() },
        } },
        -- Special Thanks
    { n = G.UIT.R, config = { align = "tm", padding = 0.1, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 }, nodes = {
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = {
        { n = G.UIT.T, config = { text = L("le_credits_thanks", "Special Thanks"), scale = header_scale * 0.68, colour = HEX('F75294'), shadow = true } },
            } },
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = (function()
                local list = {}
                for _, line in ipairs(LE_CREDITS.thanks) do
        list[#list + 1] = { n = G.UIT.R, config = { align = "tm", padding = special_thanks_padding }, nodes = {
            { n = G.UIT.T, config = { text = line, scale = text_scale * 0.56 * special_thanks_mod, colour = HEX('B38CFF'), shadow = true } },
                    } }
                end
                return list
            end)() },
        } },
    } }

    return {
        n = G.UIT.ROOT,
        config = { align = "cm", padding = 0.12, colour = G.C.BLACK, r = 0.1, emboss = 0.05, minh = 4.5, minw = 7.5 },
        nodes = {
            { n = G.UIT.C, config = { align = "tm", padding = 0.12 }, nodes = {
                -- Title
                { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = {
                    { n = G.UIT.T, config = { text = L("b_credits", "Credits"), scale = text_scale * 1.1, colour = HEX('A86CFF'), shadow = true } },
                } },
                -- Two-column layout row
                { n = G.UIT.R, config = { align = "tm", padding = 0.03 }, nodes = {
                    left_col,
                    right_col,
                } },
            } },
        }
    }
end

return true
