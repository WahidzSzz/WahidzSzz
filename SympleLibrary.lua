local Library = {}
--- credit : whidd

local TweenService = game:GetService("TweenService")
local NathubLibrary = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local Shadow = Instance.new("Frame")
local umbraShadow = Instance.new("ImageLabel")
local penumbraShadow = Instance.new("ImageLabel")
local ambientShadow = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local Topbar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Hub = Instance.new("TextLabel")
local Minimize = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local OpenButton = Instance.new("Frame")
local shadowHolder = Instance.new("Frame")
local umbraShadow_2 = Instance.new("ImageLabel")
local penumbraShadow_2 = Instance.new("ImageLabel")
local ambientShadow_2 = Instance.new("ImageLabel")
local UICorner_6 = Instance.new("UICorner")
local Icon = Instance.new("ImageLabel")
local Title_3 = Instance.new("TextLabel")
local Icon_2 = Instance.new("ImageLabel")
local Trigger_2 = Instance.new("TextButton")
local Dialog = Instance.new("Frame")
local shadowHolder_2 = Instance.new("Frame")
local umbraShadow_3 = Instance.new("ImageLabel")
local penumbraShadow_3 = Instance.new("ImageLabel")
local ambientShadow_3 = Instance.new("ImageLabel")
local Title_4 = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local Desc = Instance.new("TextLabel")
local No = Instance.new("TextButton")
local Yes = Instance.new("TextButton")
local One = Instance.new("ScrollingFrame")
local Container = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

-- Scripts:

local function ZRSW_fake_script() -- Minimize.LocalScript 
	local script = Instance.new('LocalScript', Minimize)

	local holder = script.Parent.Parent.Parent.Parent.Holder
	local ms = script.Parent
	local openbutton = script.Parent.Parent.Parent.Parent.OpenButton
	local TweenService = game:GetService("TweenService")
	local UIS = game:GetService("UserInputService")

	ms.MouseButton1Click:Connect(function()
		local dropTween = TweenService:Create(openbutton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 140,0, 40
			)
		})

		local grownTween = TweenService:Create(holder, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(0
			)
		})

		grownTween:Play()
		dropTween:Play()
		holder.Visible = false
		openbutton.Visible = true
	end)
end
coroutine.wrap(ZRSW_fake_script)()
local function KKLXTNX_fake_script() -- Topbar.LocalScript 
	local script = Instance.new('LocalScript', Topbar)

	local UserInputService = game:GetService("UserInputService")

	local gui = script.Parent.Parent.Parent.Holder
	local topbar = script.Parent

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	topbar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	topbar.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(KKLXTNX_fake_script)()
local function FUIUA_fake_script() -- Trigger_2.LocalScript 
	local script = Instance.new('LocalScript', Trigger_2)

	local holder = script.Parent.Parent.Parent.Holder
	local ms = script.Parent
	local openbutton = script.Parent.Parent
	local TweenService = game:GetService("TweenService")
	local UIS = game:GetService("UserInputService")

	ms.MouseButton1Click:Connect(function()
		local dropTween = TweenService:Create(openbutton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 0, 0, 0
			)
		})

		local grownTween = TweenService:Create(holder, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 400,0, 270
			)
		})

		grownTween:Play()
		dropTween:Play()
		holder.Visible = true
		openbutton.Visible = false
	end)
end
coroutine.wrap(FUIUA_fake_script)()
local function SYUYEJ_fake_script() -- OpenButton.LocalScript 
	local script = Instance.new('LocalScript', OpenButton)

	local UserInputService = game:GetService("UserInputService")

	local gui = script.Parent


	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(SYUYEJ_fake_script)()
local function RBDCO_fake_script() -- No.LocalScript 
	local script = Instance.new('LocalScript', No)

	local ms = script.Parent
	local holder = script.Parent.Parent.Parent.Holder
	local frme = script.Parent.Parent.Parent.Dialog

	ms.MouseButton1Click:Connect(function()

		holder.Visible = true
		frme.Visible = false
	end)
end
coroutine.wrap(RBDCO_fake_script)()
local function JXETR_fake_script() -- Yes.LocalScript 
	local script = Instance.new('LocalScript', Yes)

	local ms = script.Parent
	local natui = script.Parent.Parent.Parent.Parent.NathubUI

	ms.MouseButton1Click:Connect(function()

		natui:Destroy()
	end)
end
coroutine.wrap(JXETR_fake_script)()

function Library:AddWindow(tbl)
	local Title = tbl.Title
	local Description = tbl.Description
	local Icon = tbl.Icon
	
	NathubLibrary.Name = "NathubLibrary"
	NathubLibrary.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	NathubLibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Holder.Name = "Holder"
	Holder.Parent = NathubLibrary
	Holder.AnchorPoint = Vector2.new(0.5, 0.5)
	Holder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Holder.BackgroundTransparency = 0.010
	Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Holder.BorderSizePixel = 0
	Holder.Position = UDim2.new(0.5, 0, 0.5, 0)
	Holder.Size = UDim2.new(0, 400, 0, 270)

	Shadow.Name = "Shadow"
	Shadow.Parent = Holder
	Shadow.BackgroundTransparency = 1.000
	Shadow.Size = UDim2.new(1, 0, 1, 0)
	Shadow.ZIndex = 0

	umbraShadow.Name = "umbraShadow"
	umbraShadow.Parent = Shadow
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
	penumbraShadow.Parent = Shadow
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
	ambientShadow.Parent = Shadow
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

	UICorner.CornerRadius = UDim.new(0, 6)
	UICorner.Parent = Shadow

	Topbar.Name = "Topbar"
	Topbar.Parent = Holder
	Topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Topbar.BackgroundTransparency = 1.000
	Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Topbar.BorderSizePixel = 0
	Topbar.Size = UDim2.new(0, 400, 0, 31)

	UICorner_2.CornerRadius = UDim.new(0, 6)
	UICorner_2.Parent = Topbar

	Hub.Name = "Hub"
	Hub.Parent = Topbar
	Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hub.BackgroundTransparency = 1.000
	Hub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Hub.BorderSizePixel = 0
	Hub.Position = UDim2.new(0, 0, 0.0967741907, 0)
	Hub.Size = UDim2.new(0, 400, 0, 31)
	Hub.Font = Enum.Font.FredokaOne
	Hub.Text = Title
	Hub.TextColor3 = Color3.fromRGB(255, 255, 255)
	Hub.TextSize = 18.000

	Minimize.Name = "Minimize"
	Minimize.Parent = Topbar
	Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Minimize.BackgroundTransparency = 1.000
	Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Minimize.BorderSizePixel = 0
	Minimize.Position = UDim2.new(0.935000002, 0, 0.0967741907, 0)
	Minimize.Size = UDim2.new(0, 20, 0, 20)
	Minimize.Image = "rbxassetid://10734895530"

	UICorner_3.CornerRadius = UDim.new(0, 6)
	UICorner_3.Parent = Holder
	
	UIAspectRatioConstraint.Parent = Holder
	UIAspectRatioConstraint.AspectRatio = 1.481

	OpenButton.Name = "OpenButton"
	OpenButton.Parent = NathubLibrary
	OpenButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	OpenButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	OpenButton.BorderSizePixel = 0
	OpenButton.Position = UDim2.new(0.0926966295, 0, 0.633057773, 0)
	OpenButton.Visible = false

	shadowHolder.Name = "shadowHolder"
	shadowHolder.Parent = OpenButton
	shadowHolder.BackgroundTransparency = 1.000
	shadowHolder.Size = UDim2.new(1, 0, 1, 0)
	shadowHolder.ZIndex = 0

	umbraShadow_2.Name = "umbraShadow"
	umbraShadow_2.Parent = shadowHolder
	umbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
	umbraShadow_2.BackgroundTransparency = 1.000
	umbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 3)
	umbraShadow_2.Size = UDim2.new(1, 3, 1, 3)
	umbraShadow_2.ZIndex = 0
	umbraShadow_2.Image = "rbxassetid://1316045217"
	umbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	umbraShadow_2.ImageTransparency = 0.860
	umbraShadow_2.ScaleType = Enum.ScaleType.Slice
	umbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

	penumbraShadow_2.Name = "penumbraShadow"
	penumbraShadow_2.Parent = shadowHolder
	penumbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
	penumbraShadow_2.BackgroundTransparency = 1.000
	penumbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 3)
	penumbraShadow_2.Size = UDim2.new(1, 3, 1, 3)
	penumbraShadow_2.ZIndex = 0
	penumbraShadow_2.Image = "rbxassetid://1316045217"
	penumbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	penumbraShadow_2.ImageTransparency = 0.880
	penumbraShadow_2.ScaleType = Enum.ScaleType.Slice
	penumbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

	ambientShadow_2.Name = "ambientShadow"
	ambientShadow_2.Parent = shadowHolder
	ambientShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
	ambientShadow_2.BackgroundTransparency = 1.000
	ambientShadow_2.Position = UDim2.new(0.5, 0, 0.5, 3)
	ambientShadow_2.Size = UDim2.new(1, 3, 1, 3)
	ambientShadow_2.ZIndex = 0
	ambientShadow_2.Image = "rbxassetid://1316045217"
	ambientShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ambientShadow_2.ImageTransparency = 0.880
	ambientShadow_2.ScaleType = Enum.ScaleType.Slice
	ambientShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

	UICorner_6.CornerRadius = UDim.new(0, 4)
	UICorner_6.Parent = OpenButton

	Icon.Name = "Icon"
	Icon.Parent = OpenButton
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon.BorderSizePixel = 0
	Icon.Position = UDim2.new(0, 0, 0.0250000004, 0)
	Icon.Size = UDim2.new(0, 40, 0, 40)
	Icon.Image = "rbxassetid://99764942615873"

	Title_3.Name = "Title"
	Title_3.Parent = OpenButton
	Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_3.BackgroundTransparency = 1.000
	Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_3.BorderSizePixel = 0
	Title_3.Position = UDim2.new(0.285714298, 0, 0.0250000004, 0)
	Title_3.Size = UDim2.new(0, 86, 0, 40)
	Title_3.Font = Enum.Font.GothamBold
	Title_3.Text = Description
	Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_3.TextSize = 14.000
	Title_3.TextXAlignment = Enum.TextXAlignment.Left

	Icon_2.Name = "Icon"
	Icon_2.Parent = OpenButton
	Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_2.BackgroundTransparency = 1.000
	Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_2.BorderSizePixel = 0
	Icon_2.Position = UDim2.new(0.807142854, 0, 0.275000006, 0)
	Icon_2.Size = UDim2.new(0, 20, 0, 20)
	Icon_2.Image = Icon

	Trigger_2.Name = "Trigger"
	Trigger_2.Parent = OpenButton
	Trigger_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Trigger_2.BackgroundTransparency = 1.000
	Trigger_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Trigger_2.BorderSizePixel = 0
	Trigger_2.Position = UDim2.new(0.807142854, 0, 0, 0)
	Trigger_2.Size = UDim2.new(0, 27, 0, 40)
	Trigger_2.Font = Enum.Font.SourceSans
	Trigger_2.Text = ""
	Trigger_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Trigger_2.TextSize = 14.000

	Dialog.Name = "Dialog"
	Dialog.Parent = NathubLibrary
	Dialog.AnchorPoint = Vector2.new(0.5, 0.5)
	Dialog.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Dialog.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Dialog.BorderSizePixel = 0
	Dialog.Position = UDim2.new(0.5, 0, 0.5, 0)
	Dialog.Size = UDim2.new(0, 300, 0, 150)
	Dialog.Visible = false

	shadowHolder_2.Name = "shadowHolder"
	shadowHolder_2.Parent = Dialog
	shadowHolder_2.BackgroundTransparency = 1.000
	shadowHolder_2.Size = UDim2.new(1, 0, 1, 0)
	shadowHolder_2.ZIndex = 0

	umbraShadow_3.Name = "umbraShadow"
	umbraShadow_3.Parent = shadowHolder_2
	umbraShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
	umbraShadow_3.BackgroundTransparency = 1.000
	umbraShadow_3.Position = UDim2.new(0.5, 0, 0.400000006, 16)
	umbraShadow_3.Size = UDim2.new(1, 24, 1, 24)
	umbraShadow_3.ZIndex = 0
	umbraShadow_3.Image = "rbxassetid://1316045217"
	umbraShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	umbraShadow_3.ImageTransparency = 0.860
	umbraShadow_3.ScaleType = Enum.ScaleType.Slice
	umbraShadow_3.SliceCenter = Rect.new(10, 10, 118, 118)

	penumbraShadow_3.Name = "penumbraShadow"
	penumbraShadow_3.Parent = shadowHolder_2
	penumbraShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
	penumbraShadow_3.BackgroundTransparency = 1.000
	penumbraShadow_3.Position = UDim2.new(0.5, 0, 0.393333346, 16)
	penumbraShadow_3.Size = UDim2.new(1, 24, 1, 24)
	penumbraShadow_3.ZIndex = 0
	penumbraShadow_3.Image = "rbxassetid://1316045217"
	penumbraShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	penumbraShadow_3.ImageTransparency = 0.880
	penumbraShadow_3.ScaleType = Enum.ScaleType.Slice
	penumbraShadow_3.SliceCenter = Rect.new(10, 10, 118, 118)

	ambientShadow_3.Name = "ambientShadow"
	ambientShadow_3.Parent = shadowHolder_2
	ambientShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
	ambientShadow_3.BackgroundTransparency = 1.000
	ambientShadow_3.Position = UDim2.new(0.5, 0, 0.319999993, 16)
	ambientShadow_3.Size = UDim2.new(1, 24, 1, 24)
	ambientShadow_3.ZIndex = 0
	ambientShadow_3.Image = "rbxassetid://1316045217"
	ambientShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ambientShadow_3.ImageTransparency = 0.880
	ambientShadow_3.ScaleType = Enum.ScaleType.Slice
	ambientShadow_3.SliceCenter = Rect.new(10, 10, 118, 118)

	Title_4.Name = "Title"
	Title_4.Parent = Dialog
	Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_4.BackgroundTransparency = 1.000
	Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_4.BorderSizePixel = 0
	Title_4.Position = UDim2.new(0.166666672, 0, 0, 0)
	Title_4.Size = UDim2.new(0, 200, 0, 25)
	Title_4.Font = Enum.Font.GothamBold
	Title_4.Text = "Are You Sure?"
	Title_4.TextColor3 = Color3.fromRGB(250, 250, 250)
	Title_4.TextSize = 17.000

	UICorner_7.Parent = Dialog

	Desc.Name = "Desc"
	Desc.Parent = Dialog
	Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Desc.BackgroundTransparency = 1.000
	Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Desc.BorderSizePixel = 0
	Desc.Position = UDim2.new(0.166666672, 0, 0.166666672, 0)
	Desc.Size = UDim2.new(0, 200, 0, 25)
	Desc.Font = Enum.Font.GothamBold
	Desc.Text = "If you press Yes, then the GUI will disappear"
	Desc.TextColor3 = Color3.fromRGB(70, 70, 70)
	Desc.TextSize = 12.000
	Desc.TextWrapped = true

	No.Name = "No"
	No.Parent = Dialog
	No.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	No.BackgroundTransparency = 1.000
	No.BorderColor3 = Color3.fromRGB(0, 0, 0)
	No.BorderSizePixel = 0
	No.Position = UDim2.new(0.666666687, 0, 0.560000002, 0)
	No.Size = UDim2.new(0, 50, 0, 50)
	No.Font = Enum.Font.Unknown
	No.Text = "NO"
	No.TextColor3 = Color3.fromRGB(255, 255, 255)
	No.TextSize = 14.000

	Yes.Name = "Yes"
	Yes.Parent = Dialog
	Yes.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Yes.BackgroundTransparency = 1.000
	Yes.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Yes.BorderSizePixel = 0
	Yes.Position = UDim2.new(0.166666672, 0, 0.560000002, 0)
	Yes.Size = UDim2.new(0, 50, 0, 50)
	Yes.Font = Enum.Font.Unknown
	Yes.Text = "YES"
	Yes.TextColor3 = Color3.fromRGB(255, 255, 255)
	Yes.TextSize = 14.000
	
	One.Name = "One"
	One.Parent = Holder
	One.Active = true
	One.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	One.BackgroundTransparency = 1.000
	One.BorderColor3 = Color3.fromRGB(0, 0, 0)
	One.BorderSizePixel = 0
	One.Position = UDim2.new(0, 0, 0.13333334, 0)
	One.Size = UDim2.new(0, 400, 0, 233)
	One.CanvasSize = UDim2.new(0, 0, 3, 0)
	One.ScrollBarThickness = 0

	Container.Name = "Container"
	Container.Parent = One
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1.000
	Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Container.BorderSizePixel = 0
	Container.Size = UDim2.new(0, 400, 0, 233)

	UIListLayout.Parent = Container
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
end

function Library:AddSection(tbl)
	local Section = Instance.new("TextLabel")
	local Title = tbl.Title
	local Color3 = tbl.Color3
	Section.Name = "Section"
	Section.Parent = Container
	Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Section.BackgroundTransparency = 1.000
	Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Section.BorderSizePixel = 0
	Section.Size = UDim2.new(0, 400, 0, 30)
	Section.Font = Enum.Font.SourceSansBold
	Section.Text = Title
	Section.TextColor3 = Color3.fromRGB(Color3)
	Section.TextSize = 18.000
end

function Library:AddToggle(tbl)
	local Title = tbl.Title
	local Callback = tbl.Callback
	local Toggle = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Checkbox = Instance.new("Frame")
	local Trigger = Instance.new("ImageButton")
	local Check = Instance.new("ImageLabel")
	local UICorner_4 = Instance.new("UICorner")
	local UICorner_5 = Instance.new("UICorner")
	
	Toggle.Name = "Toggle"
	Toggle.Parent = Container
	Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Toggle.BackgroundTransparency = 1.000
	Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Toggle.BorderSizePixel = 0
	Toggle.Size = UDim2.new(0, 400, 0, 30)

	Title.Name = "Title"
	Title.Parent = Toggle
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.159999996, 0, 0, 0)
	Title.Size = UDim2.new(0, 186, 0, 30)
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = Title
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Checkbox.Name = "Checkbox"
	Checkbox.Parent = Toggle
	Checkbox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Checkbox.BorderColor3 = Color3.fromRGB(70, 70, 70)
	Checkbox.BorderSizePixel = 0
	Checkbox.Position = UDim2.new(0.805000007, 0, 0.166666672, 0)
	Checkbox.Size = UDim2.new(0, 20, 0, 20)

	Trigger.Name = "Trigger"
	Trigger.Parent = Checkbox
	Trigger.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Trigger.BackgroundTransparency = 1.000
	Trigger.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Trigger.BorderSizePixel = 0
	Trigger.Size = UDim2.new(0, 20, 0, 20)
	Trigger.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	Trigger.ImageTransparency = 1.000
	Trigger.MouseButton1Click:Connect(function()
	if Check.Visible == false then

		local ror = TweenService:Create(Check, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 20,0, 20
			)
		})

		Check.Visible = true
		ror:Play()
		pcall(Callback)
		else
	local unror = TweenService:Create(Check, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0
		)
	})
	unror:Play()
	Check.Visible = false
	pcall(Callback)
end
	end)

	Check.Name = "Check"
	Check.Parent = Checkbox
	Check.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Check.BackgroundTransparency = 1.000
	Check.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Check.BorderSizePixel = 0
	Check.Visible = false
	Check.Image = "rbxassetid://10709790644"

	UICorner_4.CornerRadius = UDim.new(0, 3)
	UICorner_4.Parent = Check

	UICorner_5.CornerRadius = UDim.new(0, 3)
	UICorner_5.Parent = Checkbox
end

function Library:AddButton(tbl)
	local Title = tbl.Title
	local Callback = tbl.Callback
	local Button = Instance.new("Frame")
	local Title_2 = Instance.new("TextLabel")
	local Button_2 = Instance.new("ImageButton")	
	
	Button.Name = "Button"
	Button.Parent = Container
	Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundTransparency = 1.000
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0, 0, 0.515021443, 0)
	Button.Size = UDim2.new(0, 400, 0, 30)

	Title_2.Name = "Title"
	Title_2.Parent = Button
	Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.BackgroundTransparency = 1.000
	Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_2.BorderSizePixel = 0
	Title_2.Position = UDim2.new(0.159999996, 0, 0, 0)
	Title_2.Size = UDim2.new(0, 186, 0, 30)
	Title_2.Font = Enum.Font.SourceSansBold
	Title_2.Text = Title
	Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.TextSize = 14.000
	Title_2.TextXAlignment = Enum.TextXAlignment.Left

	Button_2.Name = "Button"
	Button_2.Parent = Button
	Button_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Button_2.BackgroundTransparency = 1.000
	Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button_2.BorderSizePixel = 0
	Button_2.Position = UDim2.new(0.805000007, 0, 0.133666992, 0)
	Button_2.Size = UDim2.new(0, 20, 0, 20)
	Button_2.Image = "rbxassetid://10734898355"
	Button_2.MouseButton1Click:Connect(function()
		pcall(Callback)
	end)
end

return Library
