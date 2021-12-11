--This script is for controlling the "Next" and "Back" buttons on the Spectator System. 
--
local cam = game.Workspace.Camera 
local num = 1
local players = game.Workspace.PlayersInGame:GetChildren() ---replace this with the players in game

script.Parent.Next.MouseButton1Click:Connect(function() --Triggered when the player clicks on the Next button
	players = game.Workspace.PlayersInGame:GetChildren() --retrieves the data from the "PlayersInGame" folder to find all the players that can be spectated as an array
	if #players == 0 then --Checks if there are no players in game
		cam.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	end
	if num == #players then --checks if we are at the end of the array of players
		num = 1 --goes back to beginning of array
	else
		num += 1 --to iterate through array (forward)
	end
	if players[num] == nil then --if the player is no longer in the game
		num = 1 
	end
	print(num)
	cam.CameraSubject = players[num]:FindFirstChild("Humanoid") --sets the Camera Subject to the chosen player from the array
	print(players[num])
	script.Parent.TextLabel.Text = "Spectating " ..players[num].Name --displays text regarding who is being spectated
end)

script.Parent.Back.MouseButton1Click:Connect(function() --Triggers functionality for Back button when it is clicked
	players = game.Workspace.PlayersInGame:GetChildren() --retrieves the data from the "PlayersInGame" folder to find all the players that can be spectated as an array
	if #players == 0 then
		cam.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	end
	if num == 1 then --checks if we are at the beginning of the array of players
		num = #players --starts back at the end
	else
		num -= 1 --to iterate through array (backward)
	end
	if players[num] == nil then --if the player is no longer in the game
		num = 1
	end
	print(num)
	cam.CameraSubject = players[num]:FindFirstChild("Humanoid") --sets the Camera Subject to the chosen player from the array
	print(players[num])
	script.Parent.TextLabel.Text = "Spectating " ..players[num].Name --displays text regarding who is being spectated
end)


