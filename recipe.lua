-- recipes for equipment
data:extend({
    {
        type = "recipe",
        name = "defener-spawner-equipment",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"defender-capsule", 20},
            {"advanced-circuit", 5},
            {"steel-plate", 10},
        },
        result = "defener-spawner-equipment"
    },
    {
        type = "recipe",
        name = "destroyer-spawner-equipment",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"destroyer-capsule", 20},
            {"advanced-circuit", 5},
            {"steel-plate", 10},
        },
        result = "destroyer-spawner-equipment"
    },
    {
        type = "recipe",
        name = "distractor-spawner-equipment",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"distractor-capsule", 20},
            {"advanced-circuit", 5},
            {"steel-plate", 10},
        },
        result = "distractor-spawner-equipment"
    },
})