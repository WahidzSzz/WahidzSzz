local Szmple = loadstring(game:HttpGet("https://raw.githubusercontent.com/WahidzSzz/WahidzSzz/refs/heads/main/SzmpleLibrary/Source.lua"))()
			
Szmple:EditOpenButton({
	Icon = "rbxassset or lucide",
	Size = UDim2.new(0, 40,0, 40),
	Visible = true
})
			
Szmple:CreateWindow({
	Title = "Szmple Library",
	Icon = "lucide or rbxasset",
	Keybind = Enum.KeyCode.H
})			
			
local tab1 = Szmple:AddTab({
	Title = "tab1"
})			
			
tab1:AddSection({
	Title = "Section"
})		
			
tab1:AddParagraph({
	Title = "Paragraph",
	Description = "Description"
})
			
tab1:AddButton({
	Title = "Button",
	Callback = function()
					
	end
})	
			
tab1:AddToggle({
	Title = "Toggle",
	Callback = function()
					
	end
})
