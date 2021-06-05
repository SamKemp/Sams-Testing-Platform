--control.lua

script.on_event("sams-testing-input", function(event)
    local player = game.get_player(event.player_index)
    game.print("Player " .. player.name .. " Ran on tick: " .. tostring(event.tick))

    local player_inventory = player.character.get_inventory(defines.inventory.character_main)

    player_inventory.insert({name = "steel-chest", count=50})
    player_inventory.insert({name = "defender-capsule", count=25})
    player_inventory.insert({name = "distractor-capsule", count=25})
    player_inventory.insert({name = "destroyer-capsule", count=25})

    player.force.technologies['follower-robot-count-1'].researched=true
    player.force.technologies['follower-robot-count-2'].researched=true
    player.force.technologies['follower-robot-count-3'].researched=true
    player.force.technologies['follower-robot-count-4'].researched=true
end
)