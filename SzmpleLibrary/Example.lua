local Szmple = loadstring(game:HttpGet("https://raw.githubusercontent.com/WahidzSzz/WahidzSzz/refs/heads/main/SzmpleSzmplerary/Source.lua"))()
			
Szmple:CreateWindow({
	Title = "WINDOW",
	Icon = "icon"
})

Szmple:EditOpenButton({
	Icon = ""
})

Szmple:AddSection({
	Title = "Section"
})

Szmple:AddParagraph({
	Title = "paragraphj",
	Description = "desc"
})

Szmple:AddButton({
	Title = "button",
	Callback = Szmpletion()
	print("callback")
	end
})

Szmple:AddToggle({
	Title = "toggle",
	Callback = Szmpletion()
		print("callback")
	end
})
