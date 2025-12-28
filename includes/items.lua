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
        'glutton',
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
        'jimbo_dance',
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

-- Load individual item files
for item_type, items in pairs(itemsToLoad) do
    for _, item_key in ipairs(items) do
        local item_path = "items/" .. string.lower(item_type) .. "s/" .. item_key .. ".lua"
        local item_init, item_error = SMODS.load_file(item_path)
        
        if item_error then
            sendDebugMessage("[Lost Edition] Error loading " .. item_type:lower() .. ": " .. item_key .. " - " .. item_error)
        else
            local item_data = item_init and item_init()
            if item_data then
                -- Register the item based on its type
                if item_type == "Joker" then
                    SMODS.Joker(item_data)
                elseif item_type == "Consumable" then
                    SMODS.Consumable(item_data)
                elseif item_type == "Back" then
                    SMODS.Back(item_data)
                elseif item_type == "Voucher" then
                    SMODS.Voucher(item_data)
                elseif item_type == "Tag" then
                    SMODS.Tag(item_data)
                elseif item_type == "Enhancement" then
                    SMODS.Enhancement(item_data)
                elseif item_type == "Edition" then
                    SMODS.Edition(item_data)
                elseif item_type == "Blind" then
                    SMODS.Blind(item_data)
                elseif item_type == "Challenge" then
                    SMODS.Challenge(item_data)
                elseif item_type == "Stake" then
                    SMODS.Stake(item_data)
                end
                sendDebugMessage("[Lost Edition] Loaded " .. item_type:lower() .. ": " .. item_key)
            end
        end
    end
end

return function()
    return itemsToLoad
end
