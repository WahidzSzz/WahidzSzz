
local LIB = {}
local TweenService = game:GetService("TweenService")
local Core = game.CoreGui
local PlrGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local SzmpleLibrary = Instance.new("ScreenGui")
local UiFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local shadowHolder = Instance.new("Frame")
local umbraShadow = Instance.new("ImageLabel")
local penumbraShadow = Instance.new("ImageLabel")
local ambientShadow = Instance.new("ImageLabel")
local TopBarFrame = Instance.new("Frame")
local Line = Instance.new("Frame")
local TitleHUB = Instance.new("TextLabel")
local Minus = Instance.new("ImageButton")
local contont = Instance.new("ScrollingFrame")
local UIList = Instance.new("UIListLayout")
local OpenButton = Instance.new("Folder")
local Button_2 = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local UserInputService = game:GetService("UserInputService")

function LIB:CreateWindow(tbl)
	local Title = tbl.Title
	SzmpleLibrary.Name = "SzmpleLibrary"
	SzmpleLibrary.Parent = game.CoreGui
	SzmpleLibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	UiFrame.Name = "UiFrame"
	UiFrame.Parent = SzmpleLibrary
	UiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	UiFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	UiFrame.BackgroundTransparency = 0.060
	UiFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UiFrame.BorderSizePixel = 0
	UiFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	UiFrame.Size = UDim2.new(0, 400, 0, 270)

	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if input.KeyCode == Enum.KeyCode.LeftControl then
				game.StarterGui:SetCore("SendNotification", {
					Title = "INFO"; -- can be anything you'd like.
					Text = "LeftControl Pressed"; -- also anything you'd like.
					Duration = "1"; -- how long the notification will stay for.
				})
				print("You've pressed LeftControl")
				if UiFrame.Visible == true then
					UiFrame.Visible = false
				else
					UiFrame.Visible = true
				end
			end
		end
	end)
	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = UiFrame

	shadowHolder.Name = "shadowHolder"
	shadowHolder.Parent = UiFrame
	shadowHolder.BackgroundTransparency = 1.000
	shadowHolder.Size = UDim2.new(1, 0, 1, 0)
	shadowHolder.ZIndex = 0

	umbraShadow.Name = "umbraShadow"
	umbraShadow.Parent = shadowHolder
	umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	umbraShadow.BackgroundTransparency = 1.000
	umbraShadow.Position = UDim2.new(0.5, 0, 0.5, 8)
	umbraShadow.Size = UDim2.new(1, 10, 1, 10)
	umbraShadow.ZIndex = 0
	umbraShadow.Image = "rbxassetid://1316045217"
	umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	umbraShadow.ImageTransparency = 0.860
	umbraShadow.ScaleType = Enum.ScaleType.Slice
	umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	penumbraShadow.Name = "penumbraShadow"
	penumbraShadow.Parent = shadowHolder
	penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	penumbraShadow.BackgroundTransparency = 1.000
	penumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 8)
	penumbraShadow.Size = UDim2.new(1, 10, 1, 10)
	penumbraShadow.ZIndex = 0
	penumbraShadow.Image = "rbxassetid://1316045217"
	penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	penumbraShadow.ImageTransparency = 0.880
	penumbraShadow.ScaleType = Enum.ScaleType.Slice
	penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	ambientShadow.Name = "ambientShadow"
	ambientShadow.Parent = shadowHolder
	ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	ambientShadow.BackgroundTransparency = 1.000
	ambientShadow.Position = UDim2.new(0.5, 0, 0.5, 8)
	ambientShadow.Size = UDim2.new(1, 10, 1, 10)
	ambientShadow.ZIndex = 0
	ambientShadow.Image = "rbxassetid://1316045217"
	ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ambientShadow.ImageTransparency = 0.880
	ambientShadow.ScaleType = Enum.ScaleType.Slice
	ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	TopBarFrame.Name = "TopBarFrame"
	TopBarFrame.Parent = UiFrame
	TopBarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TopBarFrame.BackgroundTransparency = 1.000
	TopBarFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TopBarFrame.BorderSizePixel = 0
	TopBarFrame.Size = UDim2.new(0, 400, 0, 30)

	Line.Name = "Line"
	Line.Parent = TopBarFrame
	Line.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 0.966666639, 0)
	Line.Size = UDim2.new(0, 400, 0, 1)

	TitleHUB.Name = "TitleHUB"
	TitleHUB.Parent = TopBarFrame
	TitleHUB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TitleHUB.BackgroundTransparency = 1.000
	TitleHUB.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TitleHUB.BorderSizePixel = 0
	TitleHUB.Position = UDim2.new(0.0175000001, 0, 0, 0)
	TitleHUB.Size = UDim2.new(0, 335, 0, 30)
	TitleHUB.Font = Enum.Font.SourceSansBold
	TitleHUB.Text = Title
	TitleHUB.TextColor3 = Color3.fromRGB(255, 255, 255)
	TitleHUB.TextSize = 17.000
	TitleHUB.TextXAlignment = Enum.TextXAlignment.Left

	Minus.Name = "Minus"
	Minus.Parent = TopBarFrame
	Minus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Minus.BackgroundTransparency = 1.000
	Minus.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Minus.BorderSizePixel = 0
	Minus.Position = UDim2.new(0.925000012, 0, 0.166666672, 0)
	Minus.Size = UDim2.new(0, 20, 0, 20)
	Minus.Image = "rbxassetid://10734896206"
	Minus.MouseButton1Click:Connect(function()
		if UiFrame.Visible == true then
			contont.Visible = false
			TopBarFrame.Visible = false
			shadowHolder.Visible = false
			local hide = TweenService:Create(UiFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Position = UDim2.new(0,0,0
				)
			})
			local small = TweenService:Create(UiFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(0,0,0
				)
			})
			
			small:Play()
			hide:Play()
			task.wait(0.1)
			UiFrame.Visible = false
			Button_2.Visible = true
		end	
	end)
	
	contont.Name = "contont"
	contont.Parent = UiFrame
	contont.Active = true
	contont.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	contont.BackgroundTransparency = 1.000
	contont.BorderColor3 = Color3.fromRGB(0, 0, 0)
	contont.BorderSizePixel = 0
	contont.Position = UDim2.new(0, 0, 0.111111112, 0)
	contont.Size = UDim2.new(0, 400, 0, 240)
	contont.CanvasSize = UDim2.new(0, 0, 20, 0)
	contont.ScrollBarThickness = 2
	
	UIList.Name = "UIList"
	UIList.Parent = contont
	UIList.SortOrder = Enum.SortOrder.LayoutOrder
	UIList.Padding = UDim.new(0, 3)


	
	function LIB:AddSection(tbl)
		local Title = tbl.Title
		local TextColor = tbl.TextColor
		
		local Section = Instance.new("TextLabel")
		Section.Name = Title
		Section.Parent = contont
		Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Section.BackgroundTransparency = 1.000
		Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Section.BorderSizePixel = 0
		Section.Size = UDim2.new(0, 400, 0, 20)
		Section.Font = Enum.Font.SourceSansBold
		Section.Text = Title
		Section.TextColor3 = TextColor
		Section.TextSize = 16.000
	end
	
	function LIB:AddButton(tbl)
		local Title = tbl.Title
		local Callback = tbl.Callback
		
		local Button = Instance.new("Frame")
		local Textt = Instance.new("TextLabel")
		local Trigger = Instance.new("ImageButton")
		
		Button.Name = Title
		Button.Parent = contont
		Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button.BackgroundTransparency = 1.000
		Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button.BorderSizePixel = 0
		Button.Size = UDim2.new(0, 400, 0, 30)

		Textt.Name = "Title"
		Textt.Parent = Button
		Textt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Textt.BackgroundTransparency = 1.000
		Textt.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Textt.BorderSizePixel = 0
		Textt.Position = UDim2.new(0.1175, 0, 0, 0)
		Textt.Size = UDim2.new(0, 245, 0, 30)
		Textt.Font = Enum.Font.SourceSansBold
		Textt.Text = Title
		Textt.TextColor3 = Color3.fromRGB(255, 255, 255)
		Textt.TextSize = 14.000
		Textt.TextXAlignment = Enum.TextXAlignment.Left

		Trigger.Name = "Trigger"
		Trigger.Parent = Button
		Trigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Trigger.BackgroundTransparency = 1.000
		Trigger.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Trigger.BorderSizePixel = 0
		Trigger.Position = UDim2.new(0.857500017, 0, 0.166666672, 0)
		Trigger.Size = UDim2.new(0, 20, 0, 20)
		Trigger.Image = "rbxassetid://10734897387"
		Trigger.MouseButton1Click:Connect(function()
			pcall(Callback)
		end)
	end
	
	function LIB:AddToggle(tbl)
		local Title = tbl.Title
		local Callback = tbl.Callback
		
		local Toggle = Instance.new("Frame")
		local Title_2 = Instance.new("TextLabel")
		local Check = Instance.new("ImageButton")
		local UICorner_2 = Instance.new("UICorner")
		local Icon = Instance.new("ImageLabel")
		
		Toggle.Name = Title
		Toggle.Parent = contont
		Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Toggle.BackgroundTransparency = 1.000
		Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Toggle.BorderSizePixel = 0
		Toggle.Size = UDim2.new(0, 400, 0, 30)

		Title_2.Name = "Title"
		Title_2.Parent = Toggle
		Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_2.BackgroundTransparency = 1.000
		Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_2.BorderSizePixel = 0
		Title_2.Position = UDim2.new(0.1175, 0, 0, 0)
		Title_2.Size = UDim2.new(0, 245, 0, 30)
		Title_2.Font = Enum.Font.SourceSansBold
		Title_2.Text = Title
		Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_2.TextSize = 14.000
		Title_2.TextXAlignment = Enum.TextXAlignment.Left

		Check.Name = "Check"
		Check.Parent = Toggle
		Check.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		Check.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Check.BorderSizePixel = 0
		Check.Position = UDim2.new(0.855000019, 0, 0.166666672, 0)
		Check.Size = UDim2.new(0, 20, 0, 20)
		Check.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
		Check.ImageTransparency = 1.000
		local unplay = TweenService:Create(Icon, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 0,0, 0
			)
		})
		local play = TweenService:Create(Icon, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 17,0, 17
			)
		})
		Check.MouseButton1Click:Connect(function()
			if Icon.Size == UDim2.new(0, 0,0, 0) then
				play:Play()
				pcall(Callback)
			else 
				unplay:Play()
				pcall(Callback)
			end
		end)
		
		UICorner_2.CornerRadius = UDim.new(0, 4)
		UICorner_2.Parent = Check

		Icon.Name = "Icon"
		Icon.Parent = Check
		Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon.BackgroundTransparency = 1.000
		Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon.BorderSizePixel = 0
		Icon.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
		Icon.Size = UDim2.new(0, 17, 0, 17)
		Icon.Image = "rbxassetid://10709790644"
	end
	
	function LIB:AddSlider(tbl)
		local Title = tbl.Title
		local MaxValue = tbl.MaxValue
		local Callback = tbl.Callback
		
		local Slider = Instance.new("Frame")
		local Title_3 = Instance.new("TextLabel")
		local Element = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")
		local Fill = Instance.new("Frame")
		local UICorner_4 = Instance.new("UICorner")
		local Trigger_2 = Instance.new("TextButton")
		local Count = Instance.new("TextLabel")
		
		-- StarterGui.ScreenGui.Value
		local val = Instance.new("NumberValue", Element);
		val.Value = 0.5;
		
		Slider.Name = Title
		Slider.Parent = contont
		Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Slider.BackgroundTransparency = 1.000
		Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Slider.BorderSizePixel = 0
		Slider.Position = UDim2.new(0, 0, 0.370833337, 0)
		Slider.Size = UDim2.new(0, 400, 0, 40)

		Title_3.Name = "Title"
		Title_3.Parent = Slider
		Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_3.BackgroundTransparency = 1.000
		Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_3.BorderSizePixel = 0
		Title_3.Position = UDim2.new(0.1175, 0, 0, 0)
		Title_3.Size = UDim2.new(0, 313, 0, 17)
		Title_3.Font = Enum.Font.SourceSansBold
		Title_3.Text = Title
		Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_3.TextSize = 14.000
		Title_3.TextXAlignment = Enum.TextXAlignment.Left

		Element.Name = "Element"
		Element.Parent = Slider
		Element.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Element.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Element.BorderSizePixel = 0
		Element.Position = UDim2.new(0.1175, 0, 0.449999988, 0)
		Element.Size = UDim2.new(0, 300, 0, 11)

		UICorner_3.CornerRadius = UDim.new(0, 5)
		UICorner_3.Parent = Element

		Fill.Name = "Fill"
		Fill.Parent = Element
		Fill.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
		Fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Fill.BorderSizePixel = 0

		UICorner_4.CornerRadius = UDim.new(0, 5)
		UICorner_4.Parent = Fill

		Trigger_2.Name = "Trigger"
		Trigger_2.Parent = Element
		Trigger_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Trigger_2.BackgroundTransparency = 1.000
		Trigger_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Trigger_2.BorderSizePixel = 0
		Trigger_2.Size = UDim2.new(1, 0, 1, 0)
		Trigger_2.Font = Enum.Font.SourceSans
		Trigger_2.Text = ""
		Trigger_2.TextColor3 = Color3.fromRGB(0, 0, 0)
		Trigger_2.TextSize = 14.000

		Count.Name = "Count"
		Count.Parent = Element
		Count.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Count.BackgroundTransparency = 1.000
		Count.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Count.BorderSizePixel = 0
		Count.Size = UDim2.new(1, 0, 1, 0)
		Count.Font = Enum.Font.SourceSansBold
		Count.Text = "50"
		Count.TextColor3 = Color3.fromRGB(0, 0, 0)
		Count.TextSize = 14.000
		
		local Mouse = game.Players.LocalPlayer:GetMouse()
		local Slid = Element
		local Fill = Fill
		local Trigger = Trigger_2
		local OutputValue = val
		local Count = Count
		local Update = {}
		local Active = {}
		local Value = Count.Text
		Fill.Size = UDim2.fromScale(OutputValue.Value,1)
		Count.Text = tostring(math.round(OutputValue.Value*MaxValue))

		local TweenService = game:GetService("TweenService")
		local TweenStyle = TweenInfo.new(0.25,Enum.EasingStyle.Exponential)

		function Update()
			local output = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slid.AbsolutePosition) / Slid.AbsoluteSize).X,0,1)

			OutputValue.Value = output
			Count.Text = tostring(math.round(output*MaxValue))
			Fill.Size = UDim2.fromScale(output,1)

			if OutputValue.Value ~= output then
				TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(output,1)}):Play()
			end
			OutputValue.Value = output
			pcall(Callback)
		end
		
		
		
		local slideractive = false

		function Active()
			slideractive = true
			while slideractive do
				Update()
				task.wait()
			end
		end

		Trigger.MouseButton1Down:Connect(Active)

		game:GetService("UserInputService").InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				slideractive = false
			end
		end)
	end
	
	function LIB:AddParagraph(tbl)
		local Title = tbl.Title
		local Desc = tbl.Desc
		
		local Paragraph = Instance.new("Frame")
		local Title_4 = Instance.new("TextLabel")
		local Description = Instance.new("TextLabel")
		local UIPadding = Instance.new("UIPadding")


		Paragraph.Name = Title
		Paragraph.Parent = contont
		Paragraph.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Paragraph.BackgroundTransparency = 1.000
		Paragraph.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Paragraph.BorderSizePixel = 0
		Paragraph.Position = UDim2.new(0, 0, 0.6875, 0)
		Paragraph.Size = UDim2.new(0, 400, 0, 43)

		Title_4.Name = "Title"
		Title_4.Parent = Paragraph
		Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_4.BackgroundTransparency = 1.000
		Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_4.BorderSizePixel = 0
		Title_4.Position = UDim2.new(0.1175, 0, 0, 0)
		Title_4.Size = UDim2.new(0, 353, 0, 16)
		Title_4.Font = Enum.Font.SourceSansBold
		Title_4.Text = Title
		Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_4.TextSize = 14.000
		Title_4.TextXAlignment = Enum.TextXAlignment.Left

		Description.Name = "Description"
		Description.Parent = Paragraph
		Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Description.BackgroundTransparency = 1.000
		Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Description.BorderSizePixel = 0
		Description.Position = UDim2.new(0.1175, 0, 0.372093022, 0)
		Description.Size = UDim2.new(0, 353, 0, 24)
		Description.Font = Enum.Font.SourceSansBold
		Description.Text = Desc
		Description.TextColor3 = Color3.fromRGB(80, 80, 80)
		Description.TextSize = 14.000
		Description.TextWrapped = true
		Description.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding.Parent = Description
		UIPadding.PaddingBottom = UDim.new(0, 7)
	end
end


return LIB
