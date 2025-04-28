local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/WahidzSzz/WahidzSzz/refs/heads/main/SympleLibrary.lua"))()

Library:AddWindow({
	Title = "Title Library",
	Description = "openbutton name",
	Icon = "icon open button"
})


Library:AddSection({
	Title = "Section",
	TextColor = Color3.fromRGB(84, 175, 255)
})

Library:AddButton({
	Title = "Only A Button",
	Callback = function()
		Library:Notification({
			Title = "Notification",
			Desc = "Description",
			Duration = "10"
		})
	end
})

Library:AddToggle({
	Title = "Toggle",
	Callback = function()
		print("toggle")
	end
})

--- no tab because its so simple fr
