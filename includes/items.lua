-- Items loader for Lost Edition

local itemsToLoad = {
    Back = {
        'fortune',
        'chaotic',
        'evolutionary',
        'medieval',
    },
    Blind = {
        'all_ones',
        'amnesia',
        'annihilation',
        'balance',
        'inversion',
        'labyrinth',
        'privilege',
        'solitude',
        'vampiric',
        'watchdog',
    },
    Challenge = {
        'breakfast',
        'wall',
        'magic_trick',
        'medieval_era',
        'new_times',
        'only_jokers',
        'autopilot',
        'mvp',
        'running_on_fumes',
        'marathon',
    },
    Consumable = {
        'lily',
        'abyss',
        'provider',
        'greed',
        'mystery_soul',
    },
    Edition = {
        'quantum',
        'plasma',
    },
    Enhancement = {
        'diamond',
        'toast',
        'stellar',
    },
    Joker = {
        'harlequin',
        'jimball',
        'schrodinger',
        'rocker',
        'gothic',
        'stake_out',
        'duke',
        'vip_pass',
        'lost_sock',
        'disruption',
        'triquetra',
        'toc_toc',
        'last_resort',
        'rule_book',
        'perfect_split',
        'passion_fruit',
        'passion_juice',
        'strawberry_milkshake',
        'moist_cake',
        'rubiks_cube',
        'magician',
        'hematophilia',
        'piggy_bank',
        'seal_stamp',
        'mitosis',
        'toaster',
        'baker',
        'miner',
        'precious',
        'step_by_step',
        'jimboy',
        'spirit_box',
        'red_joker',
        'bank',
        'big_bang',
        'shiny_gloves',
        'fair_price',
        'paid_vacation',
        'vandalism',
        'joke_book',
        'artwork',
        'jersey_10',
        'silly_hat',
        'surprise_box',
        'hoarding_joker',
        'glutton', -- Legacy save compatibility; hidden and excluded from pools
        'doodle',
        'big_joker',
        'contract',
        'booster',
        'replay',
        'clown_car',
        'statue',
        'welder',
        'error',
        'the_passage',
        'sticky',
        'advantage_addiction',
        'slot_machine',
        'demonic_joker',
        'totem',
        'chicken_cleide',
        'cosmos',
        'pot_of_greed',
        'sarcophagus',
        'laser_microjet',
        'artist',
        'critic_failure',
        'limited_edition',
        'turntable',
        'mysterious',
        'obsidian',
        'the_joker',
        'roland',
        'jimbo_hood',
        'patati_patata',
        'invisible', -- Invisible Joker for bans
    },
    Stake = {
        'diamond'
    },
    Tag = {
        'quantum',
        'plasma',
    },
    Voucher = {
        'negative_bias',
        'negative_magnet',
        'stapler',
        'staple_gun',
        'extra_bag',
        'booster_bag',
    },
}

local itemTypeOrder = {
    "Back",
    "Blind",
    "Challenge",
    "Consumable",
    "Edition",
    "Enhancement",
    "Joker",
    "Stake",
    "Tag",
    "Voucher",
}

local itemTypeConfigs = {
    Back = { folder = "backs", register = SMODS.Back },
    Blind = { folder = "blinds", register = SMODS.Blind },
    Challenge = { folder = "challenges", register = SMODS.Challenge },
    Consumable = { folder = "consumables", register = SMODS.Consumable },
    Edition = { folder = "editions", register = SMODS.Edition },
    Enhancement = { folder = "enhancements", register = SMODS.Enhancement },
    Joker = { folder = "jokers", register = SMODS.Joker },
    Stake = { folder = "stakes", register = SMODS.Stake },
    Tag = { folder = "tags", register = SMODS.Tag },
    Voucher = { folder = "vouchers", register = SMODS.Voucher },
}

local function load_item_definition(item_type, item_key)
    local config = itemTypeConfigs[item_type]
    if not config then
        sendErrorMessage("[Lost Edition] Unknown item type: " .. tostring(item_type))
        return nil
    end

    local item_path = "items/" .. config.folder .. "/" .. item_key .. ".lua"
    local item_init, item_error = SMODS.load_file(item_path)

    if item_error then
        sendErrorMessage("[Lost Edition] Failed to load " .. item_type:lower() .. ": " .. item_key .. " - " .. item_error)
        return nil
    end

    if not item_init then
        sendErrorMessage("[Lost Edition] Missing initializer for " .. item_type:lower() .. ": " .. item_key)
        return nil
    end

    local ok, item_data = pcall(item_init)
    if not ok then
        sendErrorMessage("[Lost Edition] Error initializing " .. item_type:lower() .. ": " .. item_key .. " - " .. item_data)
        return nil
    end

    if type(item_data) ~= "table" then
        sendErrorMessage("[Lost Edition] Invalid item data for " .. item_type:lower() .. ": " .. item_key)
        return nil
    end

    if not item_data.key then
        sendErrorMessage("[Lost Edition] Missing key for " .. item_type:lower() .. ": " .. item_key)
        return nil
    end

    return item_data
end

local function register_item_definition(item_type, item_key, item_data)
    local config = itemTypeConfigs[item_type]
    local ok, register_error = pcall(config.register, item_data)

    if not ok then
        sendErrorMessage("[Lost Edition] Failed to register " .. item_type:lower() .. ": " .. item_key .. " - " .. register_error)
        return false
    end

    sendDebugMessage("[Lost Edition] Loaded " .. item_type:lower() .. ": " .. item_key)
    return true
end

for _, item_type in ipairs(itemTypeOrder) do
    local items = itemsToLoad[item_type] or {}
    for _, item_key in ipairs(items) do
        local item_data = load_item_definition(item_type, item_key)
        if item_data then
            register_item_definition(item_type, item_key, item_data)
        end
    end
end

return function()
    return itemsToLoad
end
