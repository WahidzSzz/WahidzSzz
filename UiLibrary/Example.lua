local SympleUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/WahidzSzz/WahidzSzz/refs/heads/main/UiLibrary/Source.lua"))()

SympleUI:CreateWindow({
	Title = "symple ui",
	Icon = "rbxasset" --- or lucide.dev
})

SympleUI:AddSection({
	Title = "Section"
})

SympleUI:AddParagraph({
	Title = "Paragraph",
	Description = "Desc"
})

SympleUI:AddToggle({
	Title = "Toggle",
	Callback = function()
		
	end
})

SympleUI:AddButton({
	Title = "Button",
	Callback = function()
		SympleUI:Notify({
			Title = "Notification",
			Desc = "Description",
			Duration = 5
		}) --- Notification
	end
})
