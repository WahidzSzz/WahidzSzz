local Szmple = loadstring(game:HttpGet("https://raw.githubusercontent.com/WahidzSzz/WahidzSzz/refs/heads/main/SzmpleLibrary/Source.lua"))()
			
Szmple:CreateWindow({
	Title = "Window"
})

Szmple:AddSection({
	Title = "section",
	TextColor = Color3.fromRGB(255, 255, 255)
})

Szmple:AddButton({
	Title = "Button",
	Callback = function()
		print("callback")
	end,
})

Szmple:AddToggle({
	Title = "Toggle",
	Callback = function()
		print("callback")
	end,
})

Szmple:AddSlider({
	Title = "Slider",
	MaxValue = 300,
	Callback = function(Value)
	end,
})

LIB:AddParagraph({
	Title = "Paragraph",
	Desc = "desc"
})
