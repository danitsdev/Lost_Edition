local HYBRID_KEY = 'b_losted_hybrid'

-- Enhancements with a white card background and colored details/borders.
-- Higher priority renders on top when two of these are combined: Wild > Bonus > Mult.
local WHITE_BG_PRIORITY = {
    m_wild = 3,
    m_bonus = 2,
    m_mult = 1,
}

local function get_hybrid_sprite(key)
    local center = key and G.P_CENTERS[key]
    if not center then return nil end
    local atlas = G.ASSET_ATLAS[center.atlas or 'centers']
    if not atlas then return nil end
    local sprite = LOSTEDMOD.hybrid_sprites[key]
    if not sprite then
        sprite = Sprite(0, 0, G.CARD_W, G.CARD_H, atlas, center.pos)
        LOSTEDMOD.hybrid_sprites[key] = sprite
    end
    return sprite
end

-- Decide visual bottom/top enhancement and shaders without altering gameplay state
local function resolve_hybrid_layers(primary_key, secondary_key)
    local p_prio = WHITE_BG_PRIORITY[primary_key]
    local s_prio = WHITE_BG_PRIORITY[secondary_key]

    -- White-bg detail overlays always go on top with their white background stripped (Wild > Bonus > Mult)
    if p_prio and s_prio then
        if p_prio >= s_prio then
            return secondary_key, 'dissolve', primary_key, 'losted_hybrid_cutout'
        end
        return primary_key, 'dissolve', secondary_key, 'losted_hybrid_cutout'
    elseif p_prio then
        return secondary_key, 'dissolve', primary_key, 'losted_hybrid_cutout'
    elseif s_prio then
        return primary_key, 'dissolve', secondary_key, 'losted_hybrid_cutout'
    end

    -- Glass with a solid texture: make the solid texture translucent underneath, Glass sheen on top
    if primary_key == 'm_glass' then
        return secondary_key, 'losted_hybrid_glass', primary_key, 'dissolve'
    elseif secondary_key == 'm_glass' then
        return primary_key, 'losted_hybrid_glass', secondary_key, 'dissolve'
    end

    -- Two solid textures (e.g. Diamond + Stellar, Gold + Steel): diagonal gradient blend
    if primary_key < secondary_key then
        return primary_key, 'dissolve', secondary_key, 'losted_hybrid_blend'
    end
    return secondary_key, 'dissolve', primary_key, 'losted_hybrid_blend'
end

if not LOSTEDMOD.hybrid_wrapped then
    local set_ability_ref = Card.set_ability
    function Card:set_ability(center, initial, delay_sprites)
        local old_center = self.config and self.config.center
        local new_center = type(center) == 'string' and G.P_CENTERS[center] or center
        local old_second = self.ability and self.ability.losted_second_enh
        local second = nil

        if not initial and self.playing_card and old_center and new_center
            and old_center.set == 'Enhanced' and new_center.set == 'Enhanced'
            and old_center.key ~= new_center.key
            and LOSTEDMOD.funcs.back_active(HYBRID_KEY) then
            second = old_center.key
        elseif new_center and new_center.set == 'Enhanced' and old_second and old_second ~= new_center.key then
            second = old_second
        end

        local ret = set_ability_ref(self, center, initial, delay_sprites)
        if self.ability then
            self.ability.losted_second_enh = second
        end
        return ret
    end

    -- Skip default base center draw on hybrid cards so our DrawStep can render bottom + top cleanly
    local should_draw_base_ref = Card.should_draw_base_shader
    function Card:should_draw_base_shader(...)
        if self.ability and self.ability.losted_second_enh and not self.greyed
            and not (self.edition and self.edition.negative) then
            return false
        end
        return should_draw_base_ref(self, ...)
    end

    -- Include the secondary enhancement in card tooltips
    local generate_ability_ui_ref = Card.generate_UIBox_ability_table
    function Card:generate_UIBox_ability_table(vars_only)
        local ui = generate_ability_ui_ref(self, vars_only)
        if not vars_only and self.ability and self.ability.losted_second_enh then
            local second_center = G.P_CENTERS[self.ability.losted_second_enh]
            if second_center and ui and ui.info then
                generate_card_ui(second_center, ui)
            end
        end
        return ui
    end

    LOSTEDMOD.hybrid_sprites = {}
    SMODS.DrawStep {
        key = 'losted_second_enhancement',
        order = -9,
        func = function(self, layer)
            if self.greyed then return end
            local second_key = self.ability and self.ability.losted_second_enh
            local primary_key = self.config and self.config.center and self.config.center.key
            if not second_key or not primary_key or not G.P_CENTERS[second_key] then return end

            local bottom_key, bottom_shader, top_key, top_shader = resolve_hybrid_layers(primary_key, second_key)
            local bottom_sprite = get_hybrid_sprite(bottom_key)
            local top_sprite = get_hybrid_sprite(top_key)

            if bottom_sprite and not (self.edition and self.edition.negative) then
                bottom_sprite.role.draw_major = self
                bottom_sprite:draw_shader(bottom_shader, nil, nil, nil, self.children.center)
            end
            if top_sprite then
                top_sprite.role.draw_major = self
                top_sprite:draw_shader(top_shader, nil, nil, nil, self.children.center)
            end
            if self.children.front and not (self.edition and self.edition.negative)
                and (self.ability.delayed or not self:should_hide_front()) then
                self.children.front:draw_shader('dissolve')
            end
        end,
        conditions = { vortex = false, facing = 'front' },
    }

    LOSTEDMOD.hybrid_wrapped = true
end

local backInfo = {
    key = "hybrid",
    pos = LOSTEDMOD.funcs.coordinate(6),
    atlas = 'losted_backs',
    unlocked = true,
}

return backInfo
