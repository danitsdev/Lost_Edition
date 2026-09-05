if CardSleeves then
    SMODS.Atlas {
        key = "losted_sleeves",
        path = "Sleeves.png",
        px = 73,
        py = 95
    }

    CardSleeves.Sleeve {
        key = "evolutionary",
        atlas = "losted_sleeves",
        pos = { x = 0, y = 0 },
        unlocked = false,
        unlock_condition = { deck = "b_losted_evolutionary", stake = "stake_white" },
        calculate = SMODS.Back.obj_table["b_losted_evolutionary"].calculate
    }

    CardSleeves.Sleeve {
        key = "fortune",
        atlas = "losted_sleeves",
        pos = { x = 1, y = 0 },
        unlocked = false,
        unlock_condition = { deck = "b_losted_fortune", stake = "stake_white" },
        apply = SMODS.Back.obj_table["b_losted_fortune"].apply
    }

    CardSleeves.Sleeve {
        key = "chaotic",
        atlas = "losted_sleeves",
        pos = { x = 2, y = 0 },
        unlocked = false,
        unlock_condition = { deck = "b_losted_chaotic", stake = "stake_white" },
        config = {
            ante_scaling = 2,
            vouchers = { "v_overstock_norm" }
        },
        loc_vars = function(self)
            return {
                vars = {
                    localize {
                        type = "name_text",
                        key = self.config.vouchers[1],
                        set = "Voucher"
                    },
                    self.config.ante_scaling or 1
                }
            }
        end,
        apply = function(self, sleeve)
            CardSleeves.Sleeve.apply(sleeve or self)
            return SMODS.Back.obj_table["b_losted_chaotic"].apply(sleeve or self)
        end
    }

    CardSleeves.Sleeve {
        key = "medieval",
        atlas = "losted_sleeves",
        pos = { x = 3, y = 0 },
        unlocked = false,
        unlock_condition = { deck = "b_losted_medieval", stake = "stake_white" },
        config = { joker_slot = 2 },
        loc_vars = function(self)
            return { vars = { self.config.joker_slot } }
        end,
        apply = function(self, sleeve)
            local active_sleeve = sleeve or self
            CardSleeves.Sleeve.apply(active_sleeve)
            LOSTEDMOD.funcs.update_medieval_boss_rush()
        end,
        calculate = SMODS.Back.obj_table["b_losted_medieval"].calculate
    }
end
