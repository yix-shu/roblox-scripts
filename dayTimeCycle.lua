game.Lighting.ClockTime = 14 --- sets the time to day time by default at first 
while true do --- loops forever to create cyclical time nature
    game.Lighting.ClockTime += 1 --- increment of 1 (roblox hour) 
    wait(5) --- wait time that is the equivalent of 1 roblox hour
end 