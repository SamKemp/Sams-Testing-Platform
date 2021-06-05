--control.lua

script.on_event("sams-testing-input", function(event)
    game.print("Ran on tick: " .. tostring(event.tick))
end
)