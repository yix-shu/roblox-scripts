--Script for allowing the skulls to be collected (adds it into the player's backpack) by the player
script.Parent.ClickDetector.MouseClick:Connect(function(p)
	local num = #(p.Backpack:GetChildren())
	if num < 4 then
		game.ServerStorage.Skull:Clone().Parent = p.Backpack
		script.Parent.Skull.Transparency = 1
		---script.Parent.main.Decal.Transparency = 1
		local cd = script.Parent.ClickDetector
		cd.Parent = nil
		wait(30)
		cd.Parent = script.Parent
		script.Parent.Skull.Transparency = 0
		---script.Parent.main.Decal.Transparency = 0
	else
		print("Too many! No more!") ---pull up GUI
		p.PlayerGui.Warning.Frame.TextLabel.Text = "You already have enough artifacts! Find the exit!"
		p.PlayerGui.Warning.Frame.Visible = true
		wait(3)
		p.PlayerGui.Warning.Frame.Visible = false
	end
end)
