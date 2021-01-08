---this script makes the block disappear and reappear
script.Parent.Transparency = 0
script.Parent.CanCollide = true
local x = 0.05
while true do -- loops forever
	script.Parent.Transparency = script.Parent.Transparency + x --- makes the block slowly disappear
	if script.Parent.Transparency > 1 then --- checks if the block has disappeared
		script.Parent.CanCollide = false --- makes the block non-collidable so that player falls through
		wait(1)
		x = -0.05
		script.Parent.CanCollide = true	--- makes the block collidable so that player cannot fall through	
	end
	if script.Parent.Transparency < 0 then --- checks if the block has fully reappeared
		x = 0.05
	end
	wait(0.1)
end