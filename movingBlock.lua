--- This code is for making the code move back and forth 
while true do -- loops forever
	for loops = 1, 20, 1 do
		script.Parent.Position = script.Parent.Position + Vector3.new(0, 0, 0.5) --- This makes the block move in the z direction by positive 0.5
		wait(0.01)
	end
	for loops = 1, 20, 1 do
		script.Parent.Position = script.Parent.Position + Vector3.new(0, 0, -0.5) --- This makes the block move in the z direction by negative 0.5
		wait(0.01)
	end
end