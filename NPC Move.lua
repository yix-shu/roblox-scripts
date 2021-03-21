local npc = game.Workspace.Dummy 
local place = game.Workspace.place 
local walking = npc.WalkAnim
local idle = npc.Animation1
local walk = npc.Humanoid:LoadAnimation(walking) --- walking animation
local runIdle = npc.Humanoid:LoadAnimation(idle) --- idle animation

runIdle:Play()
wait(10)
npc.Humanoid:MoveTo(place.Position)
runIdle:Stop() 
walk:Play()
npc.Humanoid.MoveToFinished:Wait()
walk:Stop()
runIdle:Play()