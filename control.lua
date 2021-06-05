--control.lua

script.on_event("sams-testing-input", function(event)
    local player = game.get_player(event.player_index)
    game.print("Player " .. player.name .. " Ran on tick: " .. tostring(event.tick))

    local player_inventory = player.character.get_inventory(defines.inventory.character_main)

    player_inventory.insert({name = "steel-chest", count=50})
    player_inventory.insert({name = "defener-spawner", count=25})
    -- player_inventory.insert({name = "distractor-capsule", count=25})
    -- player_inventory.insert({name = "destroyer-capsule", count=25})

    player.force.technologies['follower-robot-count-1'].researched=true
    player.force.technologies['follower-robot-count-2'].researched=true
    player.force.technologies['follower-robot-count-3'].researched=true
    player.force.technologies['follower-robot-count-4'].researched=true
end
)

script.on_event(defines.events.on_player_changed_position,
  function(event)
    local player = game.get_player(event.player_index) -- get the player that moved
    local armorInventory = player.get_inventory(defines.inventory.character_armor) -- gets the armor slot of the player
    local armorGrid = nil

    if armorInventory.find_item_stack("power-armor") then
        armorGrid = armorInventory.find_item_stack("power-armor").grid
    end
    if armorInventory.find_item_stack("power-armor-mk2") then
        armorGrid = armorInventory.find_item_stack("power-armor-mk2").grid
    end
    if armorInventory.find_item_stack("modular-armor") then
        armorGrid = armorInventory.find_item_stack("modular-armor").grid
    end

    if armorGrid ~= nil then
        --if armorGrid.get_contents("defener-spawner") >= 1 then
            player.surface.create_entity{name="defender-capsule", position=player.position, force="neutral"}
        --end
    end
end
)