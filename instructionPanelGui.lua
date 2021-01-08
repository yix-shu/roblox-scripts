function close()
	script.Parent.Parent.Visible = false --- makes object (Frame) disappear
end
script.Parent.MouseButton1Click:Connect(close) --- checks if the button/object is clicked by mouse