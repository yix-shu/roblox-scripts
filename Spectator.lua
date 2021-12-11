local watching = false --bool value to keep track of whether the player is watching
script.Parent.Parent.Frame.Visible = false
script.Parent.Visible = true
script.Parent.Parent.NoSpectate.Visible = false
game.ReplicatedStorage.Events.Remote.StartGame.OnClientEvent:Connect(function() --Triggered once the game sequence is initiated
	script.Parent.Parent.Frame.Visible = false
	watching = false
	script.Parent.Text = "Spectate"
	script.Parent.Parent.NoSpectate.Visible = true
	script.Parent.Parent.NoSpectate.Text = ("Game is about to start. You cannot spectate.")
	wait(2)
	script.Parent.Parent.NoSpectate.Visible = false
end)
script.Parent.MouseButton1Click:Connect(function() --Triggered when the "Spectate" or "Stop Spectating" button is clicked
	print(game.Workspace.PlayersInGame:FindFirstChild(game.Players.LocalPlayer.Name))
	print(game.Players.LocalPlayer.Character)
	if game.Workspace.PlayersInGame:FindFirstChild(game.Players.LocalPlayer.Name) then --checks if the player is in the PlayersInGame folder
		script.Parent.Parent.NoSpectate.Visible = true
		script.Parent.Parent.NoSpectate.Text = ("You are in game. Cannot spectate.")
		wait(2)
		script.Parent.Parent.NoSpectate.Visible = false
	else 
		if watching then -- checks if the player is currently in Spectator mode
			script.Parent.Parent.Frame.Visible = false
			watching = false
			script.Parent.Text = "Spectate" -- the button turns into "Spectate" if the player clicks on "Stop Spectating"
			game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") --Changes the view/camera subject to the next player in the list of players in game
		else
			script.Parent.Parent.Frame.Visible = true 
			watching = true
			script.Parent.Text = "Stop Spectating" -- the button turns into "Stop Spectating" if the player clicks on "Spectate"
		end
	end
end)