local Library = loadstring(game:HttpGet("

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
