local textLabel = script.Parent
local function typing(label, text) -- function for the typing effect that takes the label object and the text to be typed/displayed
  for letter = 1, string.len(text), 1 do 
    label.Text = string.sub(text, 1, letter) --take part of the string/text and displays it as text on the DialogueGUI during each loop so that it looks like a letter is being typed/added each time
    wait(0.05) --delay/speed for typing effect 
  end
end
typing(textLabel, "Brrrr... it's cold and dark. You should get out of here quick!")