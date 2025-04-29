local SympleUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/WahidzSzz/WahidzSzz/refs/heads/main/SympleSympleUI.lua"))()

SympleUI:EditOpenButton({
	Title = "open",
	Icon = "only support rbxasset"
})

SympleUI:Notification({
	Title = "notification",
	Description = "desc",
	Duration = "5"

SympleUI:CreateWindow({
	Title = "Title Library",
	Icon = "icon open button"
})


SympleUI:AddSection({
	Title = "Section",
	TextColor = Color3.fromRGB(84, 175, 255)
})

local p1 = SympleUI:AddParagraph({
	Title = "paragraph",
	Description = "description"
})
p1:SetDesc({Title = "newdesc})

SympleUI:AddButton({
	Title = "Only A Button",
	Callback = function()
		SympleUI:LibraryDestroy()
	end
})

SympleUI:AddToggle({
	Title = "Toggle",
	Callback = function()
		print("toggle")
	end
})

SympleUI:AddCheckBox({
	Title = "Checkbox",
	Callback = function()
		print("checkbox")
	end
})

		
--- no tab because its so simple fr
