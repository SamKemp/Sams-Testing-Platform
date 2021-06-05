--control.lua

script.on_event("sams-testing-input", function(event)
    local player = game.get_player(event.player_index)
    game.print("Player " .. player.name .. " Ran on tick: " .. tostring(event.tick))
end
)