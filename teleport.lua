game.Workspace.Block.Touched:Connect(function(hit)
	if game.Players:GetPlayerFromCharacter(hit.Parent) then --- checks if the object that hit/touched the block was a player
		local humanoid = hit.Parent:findFirstChild("Humanoid")
		humanoid.Torso.CFrame = CFrame.new(game.Workspace.place2.Position) ---sets the humanoid's position as block's position to teleport to block
	end
end)