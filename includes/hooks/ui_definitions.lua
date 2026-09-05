SMODS.current_mod.description_loc_vars = function()
    return { background_colour = G.C.CLEAR, text_colour = G.C.WHITE, scale = 1.0 }
end

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

local original_settings_tab = G.UIDEF.settings_tab
function G.UIDEF.settings_tab(tab)
    local setting_tab = original_settings_tab(tab)
    if tab == 'Audio' then
        table.insert(setting_tab.nodes, {n=G.UIT.R, config={align='cm'}, nodes={
            losted_music_selector(7, 0.8)
        }})
    end
    return setting_tab
end

G.FUNCS.le_open_discord = function()
    love.system.openURL("https://discord.gg/YWSY9XAguD")
end

SMODS.current_mod.custom_ui = function(nodes)
    local title, description = unpack(nodes)
    if not description then return end
    local find = SMODS.deepfind(description, "Discord Server", true)
    if find and find[1] then
        local link_node = find[1].objtree[#find[1].objtree - 2]
        if link_node and link_node.config then
            link_node.config.button = "le_open_discord"
            link_node.config.tooltip = { text = { "Open Link" } }
        end
    end
end

return true
