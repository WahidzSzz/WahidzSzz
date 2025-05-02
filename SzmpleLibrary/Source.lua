local LIB = {}
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local UserInputService = game:GetService("UserInputService")
local TweenTime = 0.5
local TweenStyle = Enum.EasingStyle.Quart
local TweenDirection = Enum.EasingDirection.Out
local function Tween(obj, Prop)
	local TweenService = game:GetService("TweenService")
	local Tween = TweenService:Create(
		obj,
		TweenInfo.new(
			TweenTime,
			TweenStyle,
			TweenDirection
		),
		Prop
	)
	Tween:Play()
	return Tween
end

local Library = Instance.new("ScreenGui")
local Holder = Instance.new("Folder")
local UiFrame = Instance.new("Frame")
local Shadow = Instance.new("Folder")
local shadowHolder = Instance.new("Frame")
local umbraShadow = Instance.new("ImageLabel")
local penumbraShadow = Instance.new("ImageLabel")
local ambientShadow = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local Topbar = Instance.new("Folder")
local TopbarFrame = Instance.new("Frame")
local Line = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local Logo = Instance.new("ImageLabel")
local Minimize = Instance.new("ImageButton")
local Close = Instance.new("ImageButton")
local TabList = Instance.new("Folder")
local Scroll = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local One = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Two = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Line_2 = Instance.new("Frame")
local Template = Instance.new("Folder")
local One_2 = Instance.new("ScrollingFrame")
local FrameScroll = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Section = Instance.new("TextLabel")
local Toggle = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local Element = Instance.new("ImageButton")
local Knob = Instance.new("ImageLabel")
local Fill = Instance.new("ImageLabel")
local Button = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local Lock = Instance.new("ImageButton")
local Paragraph = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local Content = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local Two_2 = Instance.new("ScrollingFrame")
local FrameScroll_2 = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local Section_2 = Instance.new("TextLabel")
local Toggle_2 = Instance.new("Frame")
local Title_5 = Instance.new("TextLabel")
local Element_2 = Instance.new("ImageButton")
local Knob_2 = Instance.new("ImageLabel")
local Fill_2 = Instance.new("ImageLabel")
local Paragraph_2 = Instance.new("Frame")
local Title_6 = Instance.new("TextLabel")
local Content_2 = Instance.new("TextLabel")
local UIPadding_3 = Instance.new("UIPadding")
local OpenButton = Instance.new("Folder")
local Button_2 = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")

function LIB:EditOpenButton(tbl)
local Icon = tbl.Icon
local Size = tbl.Size
local Visible = tbl.Visible
	
OpenButton.Name = "OpenButton"
OpenButton.Parent = Library

Button_2.Name = "Button"
Button_2.Parent = OpenButton
Button_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_2.BorderSizePixel = 0
Button_2.Position = UDim2.new(0.163027659, 0, 0.363636374, 0)
Button_2.Size = Size
Button_2.Image = Icon
Button_2.Visible = Visible
	
UICorner_4.Parent = Button_2
	
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	Button_2.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Button_2.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Button_2.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Button_2.InputChanged:Connect(function(input)
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

function LIB:CreateWindow(tbl)
local self = {}
local Title = tbl.Title
local Icon = tbl.Icon
local Keybind = tbl.Keybind
	
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	UiFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Topbar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = UiFrame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Topbar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

Library.Name = "Library"
Library.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Holder.Name = "Holder"
Holder.Parent = Library

UiFrame.Name = "UiFrame"
UiFrame.Parent = Holder
UiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
UiFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
UiFrame.BackgroundTransparency = 0.050
UiFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
UiFrame.BorderSizePixel = 0
UiFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
UiFrame.Size = UDim2.new(0, 370, 0, 270)

Shadow.Name = "Shadow"
Shadow.Parent = UiFrame

shadowHolder.Name = "shadowHolder"
shadowHolder.Parent = Shadow
shadowHolder.BackgroundTransparency = 1.000
shadowHolder.Size = UDim2.new(1, 0, 1, 0)
shadowHolder.ZIndex = 0

umbraShadow.Name = "umbraShadow"
umbraShadow.Parent = shadowHolder
umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
umbraShadow.BackgroundTransparency = 1.000
umbraShadow.Position = UDim2.new(0.5, 0, 0.466666669, 9)
umbraShadow.Size = UDim2.new(1, 12, 1, 12)
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
penumbraShadow.Position = UDim2.new(0.5, 0, 0.466666669, 9)
penumbraShadow.Size = UDim2.new(1, 12, 1, 12)
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
ambientShadow.Position = UDim2.new(0.5, 0, 0.48888889, 9)
ambientShadow.Size = UDim2.new(1, 12, 1, 12)
ambientShadow.ZIndex = 0
ambientShadow.Image = "rbxassetid://1316045217"
ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
ambientShadow.ImageTransparency = 0.880
ambientShadow.ScaleType = Enum.ScaleType.Slice
ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = UiFrame

TabList.Name = "TabList"
TabList.Parent = UiFrame

Template.Name = "Template"
Template.Parent = UiFrame

Topbar.Name = "Topbar"
Topbar.Parent = UiFrame

TopbarFrame.Name = "TopbarFrame"
TopbarFrame.Parent = Topbar
TopbarFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TopbarFrame.BackgroundTransparency = 1.000
TopbarFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopbarFrame.BorderSizePixel = 0
TopbarFrame.Size = UDim2.new(0, 370, 0, 30)

Line.Name = "Line"
Line.Parent = Topbar
Line.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.122222222, 0)
Line.Size = UDim2.new(0, 370, 0, 2)

Title.Name = Title
Title.Parent = Topbar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.229729727, 0, 0, 0)
Title.Size = UDim2.new(0, 200, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.Text = Title
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20.000
Title.RichText = true

UIPadding.Parent = Title
UIPadding.PaddingTop = UDim.new(0, 3)
	
UserInputService.InputBegan:Connect(function(input) 
	if input.KeyCode == Enum.KeyCode.Keybind then 
		UiFrame = false
	else
		UiFrame.Visible = true
	end
end)
	
Line_2.Name = "Line"
Line_2.Parent = TabList
Line_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Line_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line_2.BorderSizePixel = 0
Line_2.Position = UDim2.new(0.240540534, 0, 0.13333334, 0)
Line_2.Size = UDim2.new(0, 2, 0, 234)

Logo.Name = "Logo"
Logo.Parent = Topbar
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.0162162166, 0, 0.00740740728, 0)
Logo.Size = UDim2.new(0, 25, 0, 25)
Logo.Image = Icon

Minimize.Name = "Minimize"
Minimize.Parent = Topbar
Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize.BackgroundTransparency = 1.000
Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.85945946, 0, 0.0185185187, 0)
Minimize.Size = UDim2.new(0, 20, 0, 20)
Minimize.Image = "rbxassetid://10734896206"
Minimize.MouseButton1Click:Connect(function()
	local dropTween = TweenService:Create(UiFrame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 0, 0, 0
		)
	})
	
	dropTween:Play()
	UiFrame.Visible = false
	
end)
Close.Name = "Close"
Close.Parent = Topbar
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.9297297, 0, 0.0185185187, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Image = "rbxassetid://10747384394"
Close.MouseButton1Click:Connect(function()
	local dropTween = TweenService:Create(UiFrame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 0, 0, 0
		)
	})
	
	dropTween:Play()
	Library:Destroy()
	
end)

local selected
function self:AddTab(tbl)
local Title = tbl.Title
		
One_2.Name = Title
One_2.Parent = Template
One_2.Active = true
One_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
One_2.BackgroundTransparency = 1.000
One_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
One_2.BorderSizePixel = 0
One_2.Position = UDim2.new(0.246000007, 0, 0.156000003, 0)
One_2.Size = UDim2.new(0, 279, 0, 228)
One_2.CanvasSize = UDim2.new(0, 0, 6, 0)
One_2.ScrollBarThickness = 3

FrameScroll.Name = "FrameScroll"
FrameScroll.Parent = One_2
FrameScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FrameScroll.BackgroundTransparency = 1.000
FrameScroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
FrameScroll.BorderSizePixel = 0
FrameScroll.Position = UDim2.new(-0.00848027691, 0, -0.00350885233, 0)
FrameScroll.Size = UDim2.new(0, 279, 0, 228)

UIListLayout_2.Parent = FrameScroll
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 4)
		
Scroll.Name = "Scroll"
Scroll.Parent = TabList
Scroll.Active = true
Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scroll.BackgroundTransparency = 1.000
Scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
Scroll.BorderSizePixel = 0
Scroll.Position = UDim2.new(0, 0, 0.129629627, 0)
Scroll.Size = UDim2.new(0, 91, 0, 234)
Scroll.CanvasSize = UDim2.new(0, 0, 5, 0)
Scroll.ScrollBarThickness = 2

UIListLayout.Parent = Scroll
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

One.Name = Title
One.Parent = Scroll
One.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
One.BackgroundTransparency = 0.070
One.BorderColor3 = Color3.fromRGB(0, 0, 0)
One.BorderSizePixel = 0
One.Size = UDim2.new(0, 85, 0, 25)
One.Font = Enum.Font.ArialBold
One.Text = Title
One.TextColor3 = Color3.fromRGB(255, 255, 255)
One.TextSize = 12.000
		selected = Title
		local tabs = script.Parent.Library.Holder.UiFrame.TabList.Scroll
		local items = script.Parent.Library.Holder.UiFrame.Template

		for i,v in pairs(tabs:GetChildren()) do
			if v.ClassName == "TextButton" then
				v.MouseButton1Click:Connect(function()
					for i,v2 in pairs(items:GetChildren()) do
						if v2.Name ~= v.Name then
							v2.Visible = false

						else
							v2.Visible = true

						end
					end
					for i,v3 in pairs(tabs:GetChildren()) do
						if v3.Name ~= v.Name then
							v.UIStroke.Enabled = false
						else
							v.UIStroke.Enabled = true
						end
					end
				end)
			end
		end


UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = One

function self:AddSection(tbl)
local Title = tbl.Title	
			
Section.Name = Title
Section.Parent = FrameScroll
Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Section.BackgroundTransparency = 1.000
Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Section.BorderSizePixel = 0
Section.Position = UDim2.new(0, 0, 0.0131578948, 0)
Section.Size = UDim2.new(0, 279, 0, 18)
Section.Font = Enum.Font.GothamBold
Section.Text = Title
Section.TextColor3 = Color3.fromRGB(255, 255, 255)
Section.TextSize = 14.000
			
function self:AddParagraph(tbl)
local Title = tbl.Title
local Description = tbl.Description

Paragraph.Name = Title
Paragraph.Parent = FrameScroll
Paragraph.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Paragraph.BackgroundTransparency = 1.000
Paragraph.BorderColor3 = Color3.fromRGB(0, 0, 0)
Paragraph.BorderSizePixel = 0
Paragraph.Position = UDim2.new(-5.46910002e-08, 0, 0.368421048, 0)
Paragraph.Size = UDim2.new(0, 279, 0, 50)

Title_4.Name = "Title"
Title_4.Parent = Paragraph
Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_4.BackgroundTransparency = 1.000
Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_4.BorderSizePixel = 0
Title_4.Position = UDim2.new(0.0237993356, 0, -0.0133331297, 0)
Title_4.Size = UDim2.new(0, 209, 0, 18)
Title_4.Font = Enum.Font.SourceSansBold
Title_4.Text = Title
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextSize = 14.000
Title_4.TextXAlignment = Enum.TextXAlignment.Left

Content.Name = "Content"
Content.Parent = Paragraph
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
Content.BorderSizePixel = 0
Content.Position = UDim2.new(0.0237993896, 0, 0.346666873, 0)
Content.Size = UDim2.new(0, 271, 0, 30)
Content.Font = Enum.Font.SourceSansBold
Content.Text = Description
Content.TextColor3 = Color3.fromRGB(100, 100, 100)
Content.TextSize = 13.000
Content.TextWrapped = true
Content.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_2.Parent = Content
UIPadding_2.PaddingBottom = UDim.new(0, 25)			
end
			
function self:AddButton(tbl)
local Title = tbl.Title
local Callback = tbl.Callback
				
Button.Name = Title
Button.Parent = FrameScroll
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 0, 0.092105262, 0)
Button.Size = UDim2.new(0, 279, 0, 27)

Title_3.Name = "Title"
Title_3.Parent = Button
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0.0237993356, 0, 0.0666667819, 0)
Title_3.Size = UDim2.new(0, 209, 0, 27)
Title_3.Font = Enum.Font.SourceSansBold
Title_3.Text = Title
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextSize = 14.000
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Lock.Name = "Lock"
Lock.Parent = Button
Lock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lock.BackgroundTransparency = 1.000
Lock.BorderColor3 = Color3.fromRGB(0, 0, 0)
Lock.BorderSizePixel = 0
Lock.Position = UDim2.new(0.792114675, 0, 0.185185179, 0)
Lock.Size = UDim2.new(0, 20, 0, 20)
Lock.Image = "rbxassetid://10734898194"
Lock.MouseButton1Click:Connect(function()
	pcall(Callback)		
end)
end
			
function self:AddToggle(tbl)
local Title = tbl.Title
local Callback = tbl.Callback
				
Toggle.Name = Title
Toggle.Parent = FrameScroll
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0, 0, 0.092105262, 0)
Toggle.Size = UDim2.new(0, 279, 0, 27)

Title_2.Name = "Title"
Title_2.Parent = Toggle
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0.0237993356, 0, 0.0666667819, 0)
Title_2.Size = UDim2.new(0, 209, 0, 27)
Title_2.Font = Enum.Font.SourceSansBold
Title_2.Text = Title
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 14.000
Title_2.TextXAlignment = Enum.TextXAlignment.Left
				
local ts,ti = game.TweenService,TweenInfo.new(.5,Enum.EasingStyle.Quint)

local on1,on2,off1,off2 = ts:Create(Fill,ti,{ImageTransparency=0}), ts:Create(Knob,ti,{Position=UDim2.new(1.779, -39,0.5, 0)}),ts:Create(Fill,ti,{ImageTransparency=1}), ts:Create(Knob,ti,{Position=UDim2.new(1.113, -39,0.5, 0)})

local state = script.Parent:GetAttribute("state")

if state then
	on1:Play()
	on2:Play()
else
	off1:Play()
	off2:Play()
end	
				
Element.Name = "Element"
Element.Parent = Toggle
Element.AnchorPoint = Vector2.new(0.5, 0.5)
Element.BackgroundTransparency = 1.000
Element.BorderColor3 = Color3.fromRGB(27, 42, 53)
Element.Position = UDim2.new(0.830089629, 0, 0.566666782, 0)
Element.Size = UDim2.new(0, 30, 0, 14)
Element.Image = "rbxasset://textures/ui/ImageSet/InGameMenu/img_set_1x_1.png"
Element.ImageRectOffset = Vector2.new(287, 0)
Element.ImageRectSize = Vector2.new(36, 36)
Element.ImageTransparency = 0.300
Element.ScaleType = Enum.ScaleType.Slice
Element.SliceCenter = Rect.new(18, 18, 18, 18)
Element.MouseButton1Click:Connect(function()
state = script.Parent:GetAttribute("state")
	
	if state then
		script.Parent:SetAttribute("state",false)
		off1:Play()
		off2:Play()
		pcall(Callback)				
	else
		script.Parent:SetAttribute("state",true)
		on1:Play()
		on2:Play()
		pcall(Callback)					
	end
end)
				
Knob.Name = "Knob"
Knob.Parent = Element
Knob.AnchorPoint = Vector2.new(0, 0.5)
Knob.BackgroundTransparency = 1.000
Knob.BorderColor3 = Color3.fromRGB(27, 42, 53)
Knob.Position = UDim2.new(1.77948713, -39, 0.5, 0)
Knob.Size = UDim2.new(0, 20, 0, 20)
Knob.ZIndex = 2
Knob.Image = "rbxasset://textures/ui/ImageSet/InGameMenu/img_set_1x_1.png"
Knob.ImageRectOffset = Vector2.new(0, 208)
Knob.ImageRectSize = Vector2.new(42, 42)

Fill.Name = "Fill"
Fill.Parent = Element
Fill.BackgroundTransparency = 1.000
Fill.BorderColor3 = Color3.fromRGB(27, 42, 53)
Fill.Size = UDim2.new(1, 0, 1, 0)
Fill.Image = "rbxasset://textures/ui/ImageSet/InGameMenu/img_set_1x_1.png"
Fill.ImageColor3 = Color3.fromRGB(0, 251, 255)
Fill.ImageRectOffset = Vector2.new(324, 0)
Fill.ImageRectSize = Vector2.new(36, 36)
Fill.ImageTransparency = 0.100
Fill.ScaleType = Enum.ScaleType.Slice
Fill.SliceCenter = Rect.new(18, 18, 18, 18)			
end		
return self
end
return LIB
end
end
