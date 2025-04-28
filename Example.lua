local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/WahidzSzz/WahidzSzz/refs/heads/main/SympleLibrary.lua"))()

Library:AddWindow({
	Title = "library",
	Description = "whid",
	Icon = "rbz"
	
})

Library:AddSection({
	Title = "section",
	Color3 = 255, 255, 255
})

Library:AddToggle({
	Title = "Toggle",
	Callback = function()
		print("called")
	end,
})

Library:AddButton({
	Title = "button",
	Callback = function()
		print("buttoncalled")
	end,
})

--- no tab because its so simple fr
