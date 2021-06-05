--control.lua

script.on_event("sams-testing-input", function(event)
    local player = game.get_player(event.player_index)
    game.print("Player " .. player.name .. " Ran on tick: " .. tostring(event.tick))

    local player_inventory = player.character.get_inventory(defines.inventory.character_main)

    player_inventory.insert({name = "steel-chest", count=50})
    player_inventory.insert({name = "defender", count=25})
    player_inventory.insert({name = "distractor", count=25})
    player_inventory.insert({name = "destroyer", count=25})
end
)