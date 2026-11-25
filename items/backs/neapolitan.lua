-- Skip registering Neapolitan Deck when Balatro Multiplayer already provides Cocktail Deck
local function multiplayer_cocktail_present()
    if G.P_CENTERS and G.P_CENTERS.b_mp_cocktail then return true end
    if SMODS and SMODS.Mods then
        for _, mod_id in ipairs({ 'MultiplayerPvP', 'Multiplayer' }) do
            local mod = SMODS.Mods[mod_id]
            if mod and mod.can_load then return true end
        end
    end
    return false
end

if multiplayer_cocktail_present() then
    return false
end

local NEAPOLITAN_KEY = 'b_losted_neapolitan'
local DECK_COUNT = 3

local EXCLUDED_DECKS = {
    b_challenge = true,
    b_losted_neapolitan = true,
    b_mp_cocktail = true,
}

local VANILLA_TRIGGER_DECKS = {
    b_plasma = true,
    b_anaglyph = true,
}

local function get_disabled_map()
    local mod = SMODS.Mods and SMODS.Mods.LostEdition
    if not mod then return {} end
    mod.config = mod.config or {}
    mod.config.neapolitan_disabled = mod.config.neapolitan_disabled or {}
    return mod.config.neapolitan_disabled
end

function LOSTEDMOD.funcs.neapolitan_is_enabled(key)
    return not get_disabled_map()[key]
end

function LOSTEDMOD.funcs.neapolitan_set_enabled(key, enabled)
    get_disabled_map()[key] = not enabled or nil
    if SMODS.Mods and SMODS.Mods.LostEdition then
        SMODS.save_mod_config(SMODS.Mods.LostEdition)
    end
end

function LOSTEDMOD.funcs.get_neapolitan_pool(only_enabled)
    local all_decks = {}
    for key, center in pairs(G.P_CENTERS) do
        if center.set == 'Back' and not EXCLUDED_DECKS[key] then
            local mod_id = center.mod and center.mod.id
            if not mod_id or mod_id == 'LostEdition' then
                all_decks[#all_decks + 1] = key
            end
        end
    end
    table.sort(all_decks, function(a, b)
        return (G.P_CENTERS[a].order or 0) < (G.P_CENTERS[b].order or 0)
    end)

    if not only_enabled then return all_decks end

    local enabled = {}
    for _, key in ipairs(all_decks) do
        if LOSTEDMOD.funcs.neapolitan_is_enabled(key) then
            enabled[#enabled + 1] = key
        end
    end
    return #enabled >= DECK_COUNT and enabled or all_decks
end

local function count_enabled_decks()
    local count = 0
    for _, key in ipairs(LOSTEDMOD.funcs.get_neapolitan_pool(false)) do
        if LOSTEDMOD.funcs.neapolitan_is_enabled(key) then
            count = count + 1
        end
    end
    return count
end

local function append_list(dst, src)
    for _, item in ipairs(src) do
        dst[#dst + 1] = item
    end
end

local function combine_deck_configs(target, source)
    if not source then return target end
    for k, v in pairs(source) do
        if k == 'voucher' then
            target.vouchers = target.vouchers or {}
            target.vouchers[#target.vouchers + 1] = v
        elseif k == 'vouchers' or k == 'consumables' then
            target[k] = target[k] or {}
            append_list(target[k], v)
        elseif type(v) == 'number' and type(target[k]) == 'number' then
            target[k] = target[k] + v
        elseif type(v) == 'table' then
            target[k] = combine_deck_configs(type(target[k]) == 'table' and target[k] or {}, v)
        elseif type(v) == 'boolean' then
            target[k] = target[k] or v
        else
            target[k] = v
        end
    end
    return target
end

local function apply_checkered_suits()
    event({
        func = function()
            for _, playing_card in ipairs(G.playing_cards or {}) do
                if playing_card.base.suit == 'Clubs' then
                    playing_card:change_suit('Spades')
                elseif playing_card.base.suit == 'Diamonds' then
                    playing_card:change_suit('Hearts')
                end
            end
            return true
        end
    })
end

local function vanilla_back_info_vars(center)
    local cfg = center.config or {}
    if center.key == 'b_blue' then return { cfg.hands }
    elseif center.key == 'b_red' then return { cfg.discards }
    elseif center.key == 'b_yellow' then return { cfg.dollars }
    elseif center.key == 'b_green' then return { cfg.extra_hand_bonus, cfg.extra_discard_bonus }
    elseif center.key == 'b_black' then return { cfg.joker_slot, -(cfg.hands or 0) }
    elseif center.key == 'b_magic' then return { localize { type = 'name_text', key = 'v_crystal_ball', set = 'Voucher' }, localize { type = 'name_text', key = 'c_fool', set = 'Tarot' } }
    elseif center.key == 'b_nebula' then return { localize { type = 'name_text', key = 'v_telescope', set = 'Voucher' }, -1 }
    elseif center.key == 'b_zodiac' then return { localize { type = 'name_text', key = 'v_tarot_merchant', set = 'Voucher' }, localize { type = 'name_text', key = 'v_planet_merchant', set = 'Voucher' }, localize { type = 'name_text', key = 'v_overstock_norm', set = 'Voucher' } }
    elseif center.key == 'b_painted' then return { cfg.hand_size, cfg.joker_slot }
    elseif center.key == 'b_anaglyph' then return { localize { type = 'name_text', key = 'tag_double', set = 'Tag' } }
    elseif center.key == 'b_plasma' then return { cfg.ante_scaling }
    end
    return nil
end

local function build_deck_desc_box(deck_key, min_dims)
    local center = G.P_CENTERS[deck_key]
    if not center then return nil end
    local vars
    if type(center.loc_vars) == 'function' then
        local res = center:loc_vars({}) or {}
        vars = res.vars
    else
        vars = vanilla_back_info_vars(center)
    end
    local loc_nodes = {}
    localize { type = 'descriptions', key = deck_key, set = 'Back', nodes = loc_nodes, vars = vars, scale = 0.88 }
    return {
        n = G.UIT.R,
        config = { align = 'cm', r = 0.1, padding = 0.04, minw = min_dims * 5.4, colour = G.C.WHITE },
        nodes = {
            desc_from_rows(loc_nodes, true, min_dims * 5)
        }
    }
end

if not LOSTEDMOD.neapolitan_gen_ui_wrapped then
    local generate_ui_ref = Back.generate_UI
    function Back:generate_UI(other, ui_scale, min_dims, challenge)
        local back_config = other or (self.effect and self.effect.center)
        local chosen = G.GAME and G.GAME.modifiers and G.GAME.modifiers.losted_neapolitan
        if G.STAGE == G.STAGES.RUN and not other and self == (G.GAME and G.GAME.selected_back)
            and back_config and back_config.key == NEAPOLITAN_KEY and chosen and #chosen > 0 then
            min_dims = min_dims or 0.7
            local boxes = {}
            for _, deck_key in ipairs(chosen) do
                local box = build_deck_desc_box(deck_key, min_dims)
                if box then
                    if #boxes > 0 then
                        boxes[#boxes + 1] = { n = G.UIT.R, config = { minh = 0.04, minw = min_dims * 5 }, nodes = {} }
                    end
                    boxes[#boxes + 1] = box
                end
            end
            if #boxes > 0 then
                return {
                    n = G.UIT.ROOT,
                    config = { align = 'cm', minw = min_dims * 5, minh = min_dims * 2.2, padding = 0, id = self.name, colour = G.C.CLEAR },
                    nodes = boxes
                }
            end
        end
        return generate_ui_ref(self, other, ui_scale, min_dims, challenge)
    end
    LOSTEDMOD.neapolitan_gen_ui_wrapped = true
end

local backInfo = {
    key = "neapolitan",
    pos = LOSTEDMOD.funcs.coordinate(4),
    atlas = 'losted_backs',
    unlocked = true,
    config = {},
    loc_vars = function(self, info_queue, back)
        local names = { '?', '?', '?' }
        local chosen = G.GAME and G.GAME.modifiers and G.GAME.modifiers.losted_neapolitan
        if G.STAGE == G.STAGES.RUN and chosen then
            for i = 1, DECK_COUNT do
                if chosen[i] then
                    names[i] = localize { type = 'name_text', set = 'Back', key = chosen[i] }
                end
            end
        end
        return { vars = names }
    end,
    apply = function(self, back)
        back = back or G.GAME.selected_back
        G.GAME.pseudorandom.seed = G.GAME.pseudorandom.seed or generate_starting_seed()

        local pool = LOSTEDMOD.funcs.get_neapolitan_pool(true)
        pseudoshuffle(pool, pseudoseed('losted_neapolitan'))

        local chosen = {}
        for i = 1, math.min(DECK_COUNT, #pool) do
            chosen[i] = pool[i]
        end
        G.GAME.modifiers.losted_neapolitan = chosen

        local merged_config = {}
        for _, deck_key in ipairs(chosen) do
            local center = G.P_CENTERS[deck_key]
            if center then
                combine_deck_configs(merged_config, center.config)
            end
        end
        back.effect.config = merged_config

        for _, deck_key in ipairs(chosen) do
            local center = G.P_CENTERS[deck_key]
            if deck_key == 'b_checkered' then
                apply_checkered_suits()
            end
            if center and type(center.apply) == 'function' then
                center:apply(back)
            end
        end
    end,
    calculate = function(self, back, context)
        local chosen = G.GAME and G.GAME.modifiers and G.GAME.modifiers.losted_neapolitan
        if not chosen then return end

        local pending_ret = nil
        local final_chips, final_mult = nil, nil

        for _, deck_key in ipairs(chosen) do
            local center = G.P_CENTERS[deck_key]
            if center then
                local r1, r2
                if type(center.calculate) == 'function' then
                    r1, r2 = center:calculate(back, context)
                elseif VANILLA_TRIGGER_DECKS[deck_key] then
                    local saved_name = back.name
                    local saved_center = back.effect.center
                    back.name = center.name
                    back.effect.center = center
                    r1, r2 = back:trigger_effect(context)
                    back.name = saved_name
                    back.effect.center = saved_center
                end

                if context.context == 'final_scoring_step' and r1 ~= nil and r2 ~= nil then
                    final_chips, final_mult = r1, r2
                    context.chips, context.mult = r1, r2
                elseif type(r1) == 'table' then
                    if pending_ret and SMODS.calculate_effect then
                        SMODS.calculate_effect(pending_ret, back)
                    end
                    pending_ret = r1
                end
            end
        end

        if final_chips ~= nil and final_mult ~= nil then
            return final_chips, final_mult
        end
        return pending_ret
    end,
}

-- Deck selector overlay (opened by clicking the selected Neapolitan Deck preview)
local SELECTOR_ROWS = 2
local SELECTOR_COLS = 5
local PER_PAGE = SELECTOR_ROWS * SELECTOR_COLS

local function is_neapolitan_preview_card(card)
    if not card or not G.OVERLAY_MENU then return false end
    local new_run_tab = G.OVERLAY_MENU:get_UIE_by_ID('tab_but_' .. localize('b_new_run'))
    if new_run_tab and not (new_run_tab.config and new_run_tab.config.chosen) then
        return false
    end
    if card.area and (card.area == G.deck or card.area == G.hand or card.area == G.jokers
        or card.area == G.consumeables or card.area == G.play) then
        return false
    end

    -- SMODS built-in RunSelect (integrated Galdur): only open when clicking the SELECTED preview card on the right
    if card.params and card.params.run_select_selection_choice then
        return false
    end
    if card.params and card.params.run_select_preview_card == 'deck_choice' then
        return card.config and card.config.center and card.config.center.key == NEAPOLITAN_KEY
    end

    -- Standalone Galdur mod: only open when clicking the selected deck preview area
    if Galdur and Galdur.run_setup then
        return card.area == Galdur.run_setup.selected_deck_area
            and card.config and card.config.center
            and card.config.center.key == NEAPOLITAN_KEY
    end

    -- Vanilla run setup screen
    local viewed = G.GAME and G.GAME.viewed_back
    return viewed and viewed.effect and viewed.effect.center
        and viewed.effect.center.key == NEAPOLITAN_KEY
        and card.facing == 'back'
end

local function clear_selector_areas()
    if not G.losted_neapolitan_areas then return end
    for _, area in ipairs(G.losted_neapolitan_areas) do
        if area and not area.REMOVED then area:remove() end
    end
    G.losted_neapolitan_areas = nil
end

local function is_selector_open()
    local areas = G.losted_neapolitan_areas
    return areas and areas[1] and not areas[1].REMOVED and G.OVERLAY_MENU
end

local function update_selector_counter()
    if not LOSTEDMOD.neapolitan_ui_state then return end
    local total = #LOSTEDMOD.funcs.get_neapolitan_pool(false)
    LOSTEDMOD.neapolitan_ui_state.count_text = tostring(count_enabled_decks()) .. '/' .. tostring(total)
end

local function populate_selector_page(page)
    local decks = LOSTEDMOD.funcs.get_neapolitan_pool(false)
    local start_idx = (page - 1) * PER_PAGE + 1

    for slot = 1, PER_PAGE do
        local area = G.losted_neapolitan_areas[slot]
        if area and area.cards then
            for i = #area.cards, 1, -1 do
                area.cards[i]:remove()
            end
        end
    end

    local prev_viewed = G.GAME.viewed_back
    for slot = 1, PER_PAGE do
        local idx = start_idx + slot - 1
        local key = decks[idx]
        if not key then break end
        local area = G.losted_neapolitan_areas[slot]
        local center = G.P_CENTERS[key]
        G.GAME.viewed_back = Back(center)
        local card = Card(
            area.T.x, area.T.y, G.CARD_W, G.CARD_H,
            pseudorandom_element(G.P_CARDS, pseudoseed('losted_neapolitan_ui')),
            G.P_CENTERS.c_base,
            { playing_card = idx, bypass_back = center.pos }
        )
        area:emplace(card)
        card.sprite_facing = 'back'
        card.facing = 'back'
        card.losted_neapolitan_key = key
        card.losted_neapolitan_on = LOSTEDMOD.funcs.neapolitan_is_enabled(key)
    end
    G.GAME.viewed_back = prev_viewed or Back(G.P_CENTERS[NEAPOLITAN_KEY])
    update_selector_counter()
end

G.FUNCS.losted_neapolitan_page = function(args)
    if not args or not args.cycle_config then return end
    populate_selector_page(args.cycle_config.current_option)
end

local function toggle_all_neapolitan()
    local decks = LOSTEDMOD.funcs.get_neapolitan_pool(false)
    local all_enabled = count_enabled_decks() >= #decks
    local disabled = get_disabled_map()
    for i, key in ipairs(decks) do
        if all_enabled then
            disabled[key] = (i > DECK_COUNT) or nil
        else
            disabled[key] = nil
        end
    end
    for _, area in ipairs(G.losted_neapolitan_areas or {}) do
        for _, c in ipairs(area.cards or {}) do
            c.losted_neapolitan_on = LOSTEDMOD.funcs.neapolitan_is_enabled(c.losted_neapolitan_key)
        end
    end
    update_selector_counter()
    if SMODS.Mods and SMODS.Mods.LostEdition then
        SMODS.save_mod_config(SMODS.Mods.LostEdition)
    end
    play_sound(all_enabled and 'cardSlide2' or 'cardSlide1', nil, all_enabled and 0.3 or 1)
end

G.FUNCS.losted_neapolitan_toggle_all = function()
    if is_selector_open() then
        toggle_all_neapolitan()
    end
end

local function build_back_popup(center)
    local back = Back(center)
    local badges = { n = G.UIT.C, config = { colour = G.C.CLEAR, align = 'cm' }, nodes = {} }
    if SMODS.create_mod_badges then
        SMODS.create_mod_badges(center, badges.nodes)
        if badges.nodes.mod_set then badges.nodes.mod_set = nil end
    end
    return {
        n = G.UIT.C,
        config = { align = 'cm', padding = 0.1 },
        nodes = {
            {
                n = G.UIT.C,
                config = { align = 'cm', minh = 1.5, r = 0.1, colour = G.C.L_BLACK, padding = 0.1, outline = 1 },
                nodes = {
                    {
                        n = G.UIT.R,
                        config = { align = 'cm', r = 0.1, minw = 3, maxw = 4, minh = 0.4 },
                        nodes = {
                            { n = G.UIT.O, config = { object = DynaText({ string = back:get_name(), maxw = 4, colours = { G.C.WHITE }, shadow = true, bump = true, scale = 0.5, pop_in = 0, silent = true }) } }
                        }
                    },
                    {
                        n = G.UIT.R,
                        config = { align = 'cm', minh = 1.3, maxh = 3, minw = 3, maxw = 4, r = 0.1 },
                        nodes = {
                            { n = G.UIT.O, config = { object = UIBox { definition = back:generate_UI(), config = { offset = { x = 0, y = 0 } } } } }
                        }
                    },
                    badges.nodes[1] and { n = G.UIT.R, config = { align = 'cm', r = 0.1, minw = 3, maxw = 4, minh = 0.4 }, nodes = { badges } } or nil,
                }
            }
        }
    }
end

function LOSTEDMOD.funcs.open_neapolitan_select()
    clear_selector_areas()

    local decks = LOSTEDMOD.funcs.get_neapolitan_pool(false)
    local total_pages = math.max(1, math.ceil(#decks / PER_PAGE))
    G.losted_neapolitan_areas = {}
    LOSTEDMOD.neapolitan_ui_state = { count_text = '' }

    for slot = 1, PER_PAGE do
        G.losted_neapolitan_areas[slot] = CardArea(
            0, 0,
            G.CARD_W, G.CARD_H,
            { card_limit = 1, type = 'title_2', highlight_limit = 0, collection = true }
        )
    end

    populate_selector_page(1)

    local grid_rows = {}
    local slot = 1
    for r = 1, SELECTOR_ROWS do
        local cols = {}
        for c = 1, SELECTOR_COLS do
            cols[c] = {
                n = G.UIT.C,
                config = { align = 'cm', padding = 0.06 },
                nodes = { { n = G.UIT.O, config = { object = G.losted_neapolitan_areas[slot] } } }
            }
            slot = slot + 1
        end
        grid_rows[r] = {
            n = G.UIT.R,
            config = { align = 'cm', padding = 0.04 },
            nodes = cols
        }
    end

    local page_options = {}
    for p = 1, total_pages do
        page_options[p] = localize('k_page') .. ' ' .. tostring(p) .. '/' .. tostring(total_pages)
    end

    local contents = {
        {
            n = G.UIT.R,
            config = { align = 'cm', padding = 0.04 },
            nodes = {
                { n = G.UIT.T, config = { text = localize('k_losted_neapolitan_title') .. ' (', scale = 0.46, colour = G.C.WHITE, shadow = true } },
                { n = G.UIT.T, config = { ref_table = LOSTEDMOD.neapolitan_ui_state, ref_value = 'count_text', scale = 0.46, colour = G.C.FILTER, shadow = true } },
                { n = G.UIT.T, config = { text = ')', scale = 0.46, colour = G.C.WHITE, shadow = true } },
            }
        },
        {
            n = G.UIT.R,
            config = { align = 'cm', padding = 0.03 },
            nodes = { { n = G.UIT.T, config = { text = localize('k_losted_neapolitan_click'), scale = 0.30, colour = G.C.UI.TEXT_INACTIVE } } }
        },
        {
            n = G.UIT.R,
            config = { align = 'cm', padding = 0.16, r = 0.1, colour = G.C.BLACK, emboss = 0.05 },
            nodes = grid_rows
        },
    }

    local controls = {}
    if total_pages > 1 then
        controls[#controls + 1] = {
            n = G.UIT.C,
            config = { align = 'cm', padding = 0.05 },
            nodes = {
                create_option_cycle({
                    options = page_options,
                    w = 4.2,
                    cycle_shoulders = true,
                    opt_callback = 'losted_neapolitan_page',
                    current_option = 1,
                    colour = G.C.BLUE,
                    no_pips = true,
                    focus_args = { snap_to = true, nav = 'wide' },
                })
            }
        }
    end
    controls[#controls + 1] = {
        n = G.UIT.C,
        config = { align = 'cm', padding = 0.05 },
        nodes = {
            UIBox_button({
                label = { localize('k_losted_neapolitan_toggle') },
                button = 'losted_neapolitan_toggle_all',
                colour = G.C.RED,
                minw = 2.4,
                minh = 0.65,
                scale = 0.38,
            })
        }
    }

    contents[#contents + 1] = {
        n = G.UIT.R,
        config = { align = 'cm', padding = 0.06 },
        nodes = controls
    }

    G.FUNCS.overlay_menu({
        definition = create_UIBox_generic_options({
            back_func = 'setup_run',
            snap_back = true,
            contents = contents,
        }),
    })
end

if not LOSTEDMOD.neapolitan_ui_wrapped then
    local click_ref = Card.click
    function Card:click()
        if self.losted_neapolitan_key then
            local key = self.losted_neapolitan_key
            local currently_on = LOSTEDMOD.funcs.neapolitan_is_enabled(key)
            if currently_on and count_enabled_decks() <= DECK_COUNT then
                play_sound('cancel')
                self:juice_up(0.2, 0.2)
                return
            end
            local next_state = not currently_on
            LOSTEDMOD.funcs.neapolitan_set_enabled(key, next_state)
            self.losted_neapolitan_on = next_state
            update_selector_counter()
            self:juice_up(0.15, 0.15)
            play_sound(next_state and 'cardSlide1' or 'cardSlide2', nil, next_state and 1 or 0.3)
            return
        end
        if not is_selector_open() and is_neapolitan_preview_card(self) then
            LOSTEDMOD.funcs.open_neapolitan_select()
            return
        end
        return click_ref(self)
    end

    local can_highlight_ref = CardArea.can_highlight
    function CardArea:can_highlight(card)
        if card and card.losted_neapolitan_key then return false end
        return can_highlight_ref(self, card)
    end

    local r_press_ref = Controller.queue_R_cursor_press
    function Controller:queue_R_cursor_press(x, y)
        local ret = r_press_ref(self, x, y)
        if is_selector_open() then
            toggle_all_neapolitan()
        end
        return ret
    end

    local draw_ref = Card.draw
    function Card:draw(layer)
        if self.losted_neapolitan_key and not self.losted_neapolitan_on and self.children and self.children.back then
            if layer == 'card' or not layer then
                self.children.back:draw({ 0.35, 0.35, 0.35, 0.28 })
                add_to_drawhash(self)
            end
            return
        end
        return draw_ref(self, layer)
    end

    local hover_ref = Card.hover
    function Card:hover()
        if self.losted_neapolitan_key then
            local center = G.P_CENTERS[self.losted_neapolitan_key]
            if center then
                self:juice_up(0.05, 0.03)
                play_sound('paper1', math.random() * 0.2 + 0.99, 0.35)
                self.config.h_popup = build_back_popup(center)
                self.config.h_popup_config = self:align_h_popup()
                Node.hover(self)
                return
            end
        end
        return hover_ref(self)
    end

    LOSTEDMOD.neapolitan_ui_wrapped = true
end

return backInfo
