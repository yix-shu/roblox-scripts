--Script for checking how many skulls the player has collected and then teleports the player back to lobby and adds a point if they have collected enough
local DebrisService = game:GetService("Debris")

local function createTouchValue(hit)
	local StringValue = Instance.new("StringValue", hit.Parent)
	StringValue.Name = "Touched"
	DebrisService:AddItem(StringValue, 1)
end

script.Parent.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Touched") then return end
	createTouchValue(hit)
	local p = game.Players:GetPlayerFromCharacter(hit.Parent)
	if p then
		local num = #(p.Backpack:GetChildren())
		if num == 4 then
			p.Character.HumanoidRootPart.CFrame = CFrame.new(77.556, 41.224, 1.804)
			for _, tool in ipairs(p.Backpack:GetChildren()) do
				if tool:IsA("Tool") then
					tool:Destroy()
				end
			end
			p.leaderstats.Wins.Value += 1
			p.Character.Parent = workspace
		else
			---bring up a GUI to tell them they don't have enough Bay Coding Club artifacts
			p.PlayerGui.Warning.Frame.TextLabel.Text = "You do not have enough artifacts! Find all 4!"
			p.PlayerGui.Warning.Frame.Visible = true
			wait(3)
			p.PlayerGui.Warning.Frame.Visible = false
		end
	end
end)
