---student requested script for enabling jump in a specific area or room
game.StarterPlayer.CharacterJumpPower = 0 --- to disable jump for all players at start
function jump(player)
	local h = player.Parent:FindFirstChild("Humanoid")
	if h then
		h.JumpPower = 50
		wait(2)
		h.JumpPower = 0
	end
end
script.Parent.Touched:Connect(jump) --- connect function when touch detected on block
game.StarterPlayer.CharacterJumpPower = 0