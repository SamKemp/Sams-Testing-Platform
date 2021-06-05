--data.lua

local button={
    type = "custom-input",
    name = "sams-testing-input",
    key_sequence = "SHIFT + G",
    consuming = "none"
}
data:extend{button}

local defenderSpawner = table.deepcopy(data.raw["belt-immunity-equipment"]["belt-immunity-equipment"])

defenderSpawner.name = "defener-spawner"
defenderSpawner.icons = {
    {
        icon = data.raw["capsule"]["defender-capsule"].icon,
        tint = {r=1,g=0,b=0,a=0.3}
    },
}

local defenderSpawner_Recipe = table.deepcopy(data.raw["recipe"]["belt-immunity-equipment"])
defenderSpawner_Recipe.enabled = true
defenderSpawner_Recipe.name = "defener-spawner"
defenderSpawner_Recipe.ingredients = {{"defender-capsule",20},{"advanced-circuit",5},{"steel-plate",10}}
defenderSpawner_Recipe.result = "defener-spawner"

data:extend{defenderSpawner,defenderSpawner_Recipe}