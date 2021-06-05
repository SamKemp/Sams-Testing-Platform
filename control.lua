--control.lua

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value.name == val then
            return true
        end
    end

    return false
end

script.on_event("sams-testing-input", function(event)
    local player = game.get_player(event.player_index)
    game.print("Player " .. player.name .. " Ran on tick: " .. tostring(event.tick))

    local player_inventory = player.character.get_inventory(defines.inventory.character_main)

    --player_inventory.insert({name = "steel-chest", count=50})
    --player_inventory.insert({name = "defener-spawner-equipment", count=25})
    --player_inventory.insert({name = "distractor-spawner-equipment", count=25})
    --player_inventory.insert({name = "destroyer-spawner-equipment", count=25})

    player.force.technologies['follower-robot-count-1'].researched=true
    player.force.technologies['follower-robot-count-2'].researched=true
    player.force.technologies['follower-robot-count-3'].researched=true
    player.force.technologies['follower-robot-count-4'].researched=true
    player.force.technologies['follower-robot-count-5'].researched=true
    player.force.technologies['follower-robot-count-6'].researched=true
    player.force.technologies['follower-robot-count-7'].researched=true
end
)

script.on_event(defines.events.on_player_changed_position,
  function(event)
    local player = game.get_player(event.player_index) -- get the player that moved
    local armorInventory = player.get_inventory(defines.inventory.character_armor) -- gets the armor slot of the player

    if armorInventory[1].grid then
        local armorGrid = armorInventory[1].grid

        if has_value(armorGrid.equipment,"defener-spawner-equipment") then
            player.surface.create_entity{name="defender-capsule", position=player.position, force=player.force, source=player.character, target=player.position, speed=10}
        end
        if has_value(armorGrid.equipment,"distractor-spawner-equipment") then
            player.surface.create_entity{name="distractor-capsule", position=player.position, force=player.force, source=player.character, target=player.position, speed=10}
        end
        if has_value(armorGrid.equipment,"destroyer-spawner-equipment") then
            player.surface.create_entity{name="destroyer-capsule", position=player.position, force=player.force, source=player.character, target=player.position, speed=10}
        end
    end
end
)