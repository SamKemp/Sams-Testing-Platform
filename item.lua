local defenderSpawner = table.deepcopy(data.raw["item"]["belt-immunity-equipment"])

defenderSpawner.name = "defener-spawner"
defenderSpawner.icons = {
    {
        icon = data.raw["capsule"]["defender-capsule"].icon,
        tint = {r=1,g=0,b=0,a=0.3}
    },
}

local recipe = table.deepcopy(data.raw["recipe"]["belt-immunity-equipment"])
recipe.enabled = true
recipe.name = "defener-spawner"
recipe.ingredients = {{"defender-capsule",20},{"advanced-circuit",5},{"steel-plate",10}}
recipe.result = "defener-spawner"

data:extend{defenderSpawner,recipe}