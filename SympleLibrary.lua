--- credit whidd
local SympleLibrary = {};
local Lib = {}
local TweenService = game:GetService("TweenService")
local self = {};
local asset = {};

function MakeDraggable()
	local UserInputService = game:GetService("UserInputService")

	local gui = SympleLibrary["2"]
	local topbar = SympleLibrary["8"]

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

function MakeDraggable2()
	local UserInputService = game:GetService("UserInputService")

	local gui = SympleLibrary["2a"]


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

function Lib:CreateWindow(tbl)
MakeDraggable()
local self = {};
local Title = tbl.Title
local Icon = tbl.Icon
-- StarterGui.NathubLibrary
SympleLibrary["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
SympleLibrary["1"]["Name"] = [[NathubLibrary]];
SympleLibrary["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.NathubLibrary.Holder
SympleLibrary["2"] = Instance.new("Frame", SympleLibrary["1"]);
SympleLibrary["2"]["BorderSizePixel"] = 0;
SympleLibrary["2"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
SympleLibrary["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["2"]["Size"] = UDim2.new(0, 400, 0, 270);
SympleLibrary["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
SympleLibrary["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["2"]["Name"] = [[Holder]];
SympleLibrary["2"]["BackgroundTransparency"] = 0.01;


-- StarterGui.NathubLibrary.Holder.Shadow
SympleLibrary["3"] = Instance.new("Frame", SympleLibrary["2"]);
SympleLibrary["3"]["ZIndex"] = 0;
SympleLibrary["3"]["Size"] = UDim2.new(1, 0, 1, 0);
SympleLibrary["3"]["Name"] = [[Shadow]];
SympleLibrary["3"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.Shadow.umbraShadow
SympleLibrary["4"] = Instance.new("ImageLabel", SympleLibrary["3"]);
SympleLibrary["4"]["ZIndex"] = 0;
SympleLibrary["4"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
SympleLibrary["4"]["ScaleType"] = Enum.ScaleType.Slice;
SympleLibrary["4"]["ImageTransparency"] = 0.86;
SympleLibrary["4"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["4"]["Image"] = [[rbxassetid://1316045217]];
SympleLibrary["4"]["Size"] = UDim2.new(1, 10, 1, 10);
SympleLibrary["4"]["BackgroundTransparency"] = 1;
SympleLibrary["4"]["Name"] = [[umbraShadow]];
SympleLibrary["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 8);


-- StarterGui.NathubLibrary.Holder.Shadow.penumbraShadow
SympleLibrary["5"] = Instance.new("ImageLabel", SympleLibrary["3"]);
SympleLibrary["5"]["ZIndex"] = 0;
SympleLibrary["5"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
SympleLibrary["5"]["ScaleType"] = Enum.ScaleType.Slice;
SympleLibrary["5"]["ImageTransparency"] = 0.88;
SympleLibrary["5"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["5"]["Image"] = [[rbxassetid://1316045217]];
SympleLibrary["5"]["Size"] = UDim2.new(1, 10, 1, 10);
SympleLibrary["5"]["BackgroundTransparency"] = 1;
SympleLibrary["5"]["Name"] = [[penumbraShadow]];
SympleLibrary["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 8);


-- StarterGui.NathubLibrary.Holder.Shadow.ambientShadow
SympleLibrary["6"] = Instance.new("ImageLabel", SympleLibrary["3"]);
SympleLibrary["6"]["ZIndex"] = 0;
SympleLibrary["6"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
SympleLibrary["6"]["ScaleType"] = Enum.ScaleType.Slice;
SympleLibrary["6"]["ImageTransparency"] = 0.88;
SympleLibrary["6"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["6"]["Image"] = [[rbxassetid://1316045217]];
SympleLibrary["6"]["Size"] = UDim2.new(1, 10, 1, 10);
SympleLibrary["6"]["BackgroundTransparency"] = 1;
SympleLibrary["6"]["Name"] = [[ambientShadow]];
SympleLibrary["6"]["Position"] = UDim2.new(0.5, 0, 0.5, 8);


-- StarterGui.NathubLibrary.Holder.Shadow.UICorner
SympleLibrary["7"] = Instance.new("UICorner", SympleLibrary["3"]);
SympleLibrary["7"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.NathubLibrary.Holder.Topbar
SympleLibrary["8"] = Instance.new("Frame", SympleLibrary["2"]);
SympleLibrary["8"]["BorderSizePixel"] = 0;
SympleLibrary["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["8"]["Size"] = UDim2.new(0, 400, 0, 31);
SympleLibrary["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["8"]["Name"] = [[Topbar]];
SympleLibrary["8"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.Topbar.UICorner
SympleLibrary["9"] = Instance.new("UICorner", SympleLibrary["8"]);
SympleLibrary["9"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.NathubLibrary.Holder.Topbar.Minimize
SympleLibrary["a"] = Instance.new("ImageButton", SympleLibrary["8"]);
SympleLibrary["a"]["BorderSizePixel"] = 0;
SympleLibrary["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["a"]["Image"] = [[rbxassetid://10734895530]];
SympleLibrary["a"]["Size"] = UDim2.new(0, 20, 0, 20);
SympleLibrary["a"]["BackgroundTransparency"] = 1;
SympleLibrary["a"]["Name"] = [[Minimize]];
SympleLibrary["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["a"]["Position"] = UDim2.new(0.935, 0, 0.09677, 0);


-- StarterGui.NathubLibrary.Holder.Topbar.Minimize.LocalScript
SympleLibrary["b"] = Instance.new("LocalScript", SympleLibrary["a"]);
	-- StarterGui.NathubLibrary.Holder.Topbar.Minimize.LocalScript
	local function C_b()
		local script = SympleLibrary["b"];
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
	end;
	task.spawn(C_b);


-- StarterGui.NathubLibrary.Holder.Topbar.LocalScript
SympleLibrary["c"] = Instance.new("LocalScript", SympleLibrary["8"]);



-- StarterGui.NathubLibrary.Holder.Topbar.Hub
SympleLibrary["d"] = Instance.new("TextLabel", SympleLibrary["8"]);
SympleLibrary["d"]["BorderSizePixel"] = 0;
SympleLibrary["d"]["TextSize"] = 18;
SympleLibrary["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
SympleLibrary["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["d"]["BackgroundTransparency"] = 1;
SympleLibrary["d"]["Size"] = UDim2.new(0, 400, 0, 31);
SympleLibrary["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["d"]["Text"] = Title;
SympleLibrary["d"]["Name"] = [[Hub]];
SympleLibrary["d"]["Position"] = UDim2.new(0, 0, 0.09677, 0);


-- StarterGui.NathubLibrary.Holder.Topbar.IconHub
SympleLibrary["e"] = Instance.new("ImageLabel", SympleLibrary["8"]);
SympleLibrary["e"]["BorderSizePixel"] = 0;
SympleLibrary["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["e"]["Image"] = Icon;
SympleLibrary["e"]["Size"] = UDim2.new(0, 30, 0, 30);
SympleLibrary["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["e"]["BackgroundTransparency"] = 1;
SympleLibrary["e"]["Name"] = [[IconHub]];
SympleLibrary["e"]["Position"] = UDim2.new(0.0225, 0, 0, 0);


-- StarterGui.NathubLibrary.Holder.UICorner
SympleLibrary["f"] = Instance.new("UICorner", SympleLibrary["2"]);
SympleLibrary["f"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.NathubLibrary.Holder.One
SympleLibrary["10"] = Instance.new("ScrollingFrame", SympleLibrary["2"]);
SympleLibrary["10"]["Active"] = true;
SympleLibrary["10"]["BorderSizePixel"] = 0;
SympleLibrary["10"]["CanvasSize"] = UDim2.new(0, 0, 20, 0);
SympleLibrary["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["10"]["Name"] = [[One]];
SympleLibrary["10"]["Size"] = UDim2.new(0, 400, 0, 233);
SympleLibrary["10"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["10"]["Position"] = UDim2.new(0, 0, 0.13333, 0);
SympleLibrary["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["10"]["ScrollBarThickness"] = 0;
SympleLibrary["10"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.One.Container
SympleLibrary["11"] = Instance.new("Frame", SympleLibrary["10"]);
SympleLibrary["11"]["BorderSizePixel"] = 0;
SympleLibrary["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["11"]["Size"] = UDim2.new(0, 400, 0, 233);
SympleLibrary["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["11"]["Name"] = [[Container]];
SympleLibrary["11"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.One.Container.UIListLayout
SympleLibrary["12"] = Instance.new("UIListLayout", SympleLibrary["11"]);
SympleLibrary["12"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.NathubLibrary.Holder.UIAspectRatioConstraint
SympleLibrary["29"] = Instance.new("UIAspectRatioConstraint", SympleLibrary["2"]);
SympleLibrary["29"]["AspectRatio"] = 1.48148;
end

function self:AddSection(tbl)
local Title = tbl.Title
local TextColor = tbl.TextColor
-- StarterGui.NathubLibrary.Holder.One.Container.Section
SympleLibrary["13"] = Instance.new("TextLabel", SympleLibrary["11"]);
SympleLibrary["13"]["BorderSizePixel"] = 0;
SympleLibrary["13"]["TextSize"] = 18;
SympleLibrary["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["13"]["TextColor3"] = TextColor;
SympleLibrary["13"]["BackgroundTransparency"] = 1;
SympleLibrary["13"]["Size"] = UDim2.new(0, 400, 0, 30);
SympleLibrary["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["13"]["Text"] = Title;
SympleLibrary["13"]["Name"] = Title;
end

function self:AddCheckBox(tbl)
local Title = tbl.Title
local Callback = tbl.Callback
	if not Callback then
		Callback = function() end
	end
-- StarterGui.NathubLibrary.Holder.One.Container.Checkbox
SympleLibrary["15"] = Instance.new("Frame", SympleLibrary["11"]);
SympleLibrary["15"]["BorderSizePixel"] = 0;
SympleLibrary["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["15"]["Size"] = UDim2.new(0, 400, 0, 30);
SympleLibrary["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["15"]["Name"] = Title;
SympleLibrary["15"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.One.Container.Checkbox.Title
SympleLibrary["16"] = Instance.new("TextLabel", SympleLibrary["15"]);
SympleLibrary["16"]["BorderSizePixel"] = 0;
SympleLibrary["16"]["TextSize"] = 14;
SympleLibrary["16"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SympleLibrary["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["16"]["BackgroundTransparency"] = 1;
SympleLibrary["16"]["Size"] = UDim2.new(0, 186, 0, 30);
SympleLibrary["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["16"]["Text"] = Title;
SympleLibrary["16"]["Name"] = [[Title]];
SympleLibrary["16"]["Position"] = UDim2.new(0.16, 0, 0, 0);


-- StarterGui.NathubLibrary.Holder.One.Container.Checkbox.Checkbox
SympleLibrary["17"] = Instance.new("Frame", SympleLibrary["15"]);
SympleLibrary["17"]["BorderSizePixel"] = 0;
SympleLibrary["17"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
SympleLibrary["17"]["Size"] = UDim2.new(0, 20, 0, 20);
SympleLibrary["17"]["Position"] = UDim2.new(0.805, 0, 0.16667, 0);
SympleLibrary["17"]["BorderColor3"] = Color3.fromRGB(71, 71, 71);
SympleLibrary["17"]["Name"] = [[Checkbox]];


-- StarterGui.NathubLibrary.Holder.One.Container.Checkbox.Checkbox.Trigger
SympleLibrary["18"] = Instance.new("ImageButton", SympleLibrary["17"]);
SympleLibrary["18"]["BorderSizePixel"] = 0;
SympleLibrary["18"]["ImageTransparency"] = 1;
SympleLibrary["18"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
SympleLibrary["18"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
SympleLibrary["18"]["Size"] = UDim2.new(0, 20, 0, 20);
SympleLibrary["18"]["BackgroundTransparency"] = 1;
SympleLibrary["18"]["Name"] = [[Trigger]];
SympleLibrary["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["18"].MouseButton1Click:Connect(function()
		local icon =  SympleLibrary["19"]
		if icon.Visible == false then
			local ror = TweenService:Create(icon, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, 20,0, 20
				)
			})

			icon.Visible = true
			ror:Play()
			pcall(Callback)
		elseif icon.Visible == true then
			local uror = TweenService:Create(icon, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, 0,0, 0
				)
			})

			icon.Visible = false
			uror:Play()
			pcall(Callback)
		end
		return self
end)

-- StarterGui.NathubLibrary.Holder.One.Container.Checkbox.Checkbox.Check
SympleLibrary["19"] = Instance.new("ImageLabel", SympleLibrary["17"]);
SympleLibrary["19"]["BorderSizePixel"] = 0;
SympleLibrary["19"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
SympleLibrary["19"]["Image"] = [[rbxassetid://10709790644]];
SympleLibrary["19"]["Visible"] = false;
SympleLibrary["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["19"]["BackgroundTransparency"] = 1;
SympleLibrary["19"]["Name"] = [[Check]];


-- StarterGui.NathubLibrary.Holder.One.Container.Checkbox.Checkbox.Check.UICorner
SympleLibrary["1a"] = Instance.new("UICorner", SympleLibrary["19"]);
SympleLibrary["1a"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.NathubLibrary.Holder.One.Container.Checkbox.Checkbox.UICorner
SympleLibrary["1b"] = Instance.new("UICorner", SympleLibrary["17"]);
SympleLibrary["1b"]["CornerRadius"] = UDim.new(0, 3);
end


function self:AddButton(tbl)
local self = {}
local Title = tbl.Title
local Callback = tbl.Callback
	if not Callback then
		Callback = function() end
	end
-- StarterGui.NathubLibrary.Holder.One.Container.Button
SympleLibrary["1c"] = Instance.new("Frame", SympleLibrary["11"]);
SympleLibrary["1c"]["BorderSizePixel"] = 0;
SympleLibrary["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["1c"]["Size"] = UDim2.new(0, 400, 0, 30);
SympleLibrary["1c"]["Position"] = UDim2.new(0, 0, 0.51502, 0);
SympleLibrary["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["1c"]["Name"] = [[Button]];
SympleLibrary["1c"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.One.Container.Button.Title
SympleLibrary["1d"] = Instance.new("TextLabel", SympleLibrary["1c"]);
SympleLibrary["1d"]["BorderSizePixel"] = 0;
SympleLibrary["1d"]["TextSize"] = 14;
SympleLibrary["1d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SympleLibrary["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["1d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["1d"]["BackgroundTransparency"] = 1;
SympleLibrary["1d"]["Size"] = UDim2.new(0, 186, 0, 30);
SympleLibrary["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["1d"]["Text"] = Title;
SympleLibrary["1d"]["Name"] = [[Title]];
SympleLibrary["1d"]["Position"] = UDim2.new(0.16, 0, 0, 0);


-- StarterGui.NathubLibrary.Holder.One.Container.Button.Button
SympleLibrary["1e"] = Instance.new("ImageButton", SympleLibrary["1c"]);
SympleLibrary["1e"]["BorderSizePixel"] = 0;
SympleLibrary["1e"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
SympleLibrary["1e"]["Image"] = [[rbxassetid://10734898355]];
SympleLibrary["1e"]["Size"] = UDim2.new(0, 20, 0, 20);
SympleLibrary["1e"]["BackgroundTransparency"] = 1;
SympleLibrary["1e"]["Name"] = [[Button]];
SympleLibrary["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["1e"]["Position"] = UDim2.new(0.805, 0, 0.13367, 0);
SympleLibrary["1e"].MouseButton1Click:Connect(function()
	pcall(Callback)
end)
return self
end

function self:AddParagraph(tbl)
local self = {}
local Title = tbl.Title
local Description = tbl.Description
-- StarterGui.NathubLibrary.Holder.One.Container.Paragraph
SympleLibrary["1f"] = Instance.new("Frame", SympleLibrary["11"]);
SympleLibrary["1f"]["BorderSizePixel"] = 0;
SympleLibrary["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["1f"]["Size"] = UDim2.new(0, 400, 0, 45);
SympleLibrary["1f"]["Position"] = UDim2.new(0, 0, 0.38627, 0);
SympleLibrary["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["1f"]["Name"] = [[Paragraph]];
SympleLibrary["1f"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.One.Container.Paragraph.Title
SympleLibrary["20"] = Instance.new("TextLabel", SympleLibrary["1f"]);
SympleLibrary["20"]["BorderSizePixel"] = 0;
SympleLibrary["20"]["TextSize"] = 14;
SympleLibrary["20"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SympleLibrary["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["20"]["BackgroundTransparency"] = 1;
SympleLibrary["20"]["Size"] = UDim2.new(0, 186, 0, 30);
SympleLibrary["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["20"]["Text"] = Title;
SympleLibrary["20"]["Name"] = [[Title]];
SympleLibrary["20"]["Position"] = UDim2.new(0.16, 0, 0, 0);


-- StarterGui.NathubLibrary.Holder.One.Container.Paragraph.Desc
SympleLibrary["21"] = Instance.new("TextLabel", SympleLibrary["1f"]);
SympleLibrary["21"]["TextWrapped"] = true;
SympleLibrary["21"]["BorderSizePixel"] = 0;
SympleLibrary["21"]["TextSize"] = 12;
SympleLibrary["21"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SympleLibrary["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["21"]["TextColor3"] = Color3.fromRGB(86, 86, 86);
SympleLibrary["21"]["BackgroundTransparency"] = 1;
SympleLibrary["21"]["RichText"] = true;
SympleLibrary["21"]["Size"] = UDim2.new(0, 278, 0, 20);
SympleLibrary["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["21"]["Text"] = Description;
SympleLibrary["21"]["Name"] = [[Desc]];
SympleLibrary["21"]["Position"] = UDim2.new(0.16, 0, 0.55, 0);


-- StarterGui.NathubLibrary.Holder.One.Container.Paragraph.Desc.UIPadding
SympleLibrary["22"] = Instance.new("UIPadding", SympleLibrary["21"]);
SympleLibrary["22"]["PaddingBottom"] = UDim.new(0, 12);

function self:SetDesc(newdesc)
local Title = newdesc.Title
SympleLibrary["21"]["Text"] = Title;
end
return self
end

function self:AddToggle(tbl)
local Title = tbl.Title
local Callback = tbl.Callback
	if not Callback then
		Callback = function() end
	end
-- StarterGui.NathubLibrary.Holder.One.Container.Toggle
SympleLibrary["23"] = Instance.new("Frame", SympleLibrary["11"]);
SympleLibrary["23"]["BorderSizePixel"] = 0;
SympleLibrary["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["23"]["Size"] = UDim2.new(0, 400, 0, 30);
SympleLibrary["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["23"]["Name"] = Title;
SympleLibrary["23"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.One.Container.Toggle.Title
SympleLibrary["24"] = Instance.new("TextLabel", SympleLibrary["23"]);
SympleLibrary["24"]["BorderSizePixel"] = 0;
SympleLibrary["24"]["TextSize"] = 14;
SympleLibrary["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SympleLibrary["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["24"]["BackgroundTransparency"] = 1;
SympleLibrary["24"]["Size"] = UDim2.new(0, 186, 0, 30);
SympleLibrary["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["24"]["Text"] = Title
SympleLibrary["24"]["Name"] = [[Title]];
SympleLibrary["24"]["Position"] = UDim2.new(0.16, 0, 0, 0);


-- StarterGui.NathubLibrary.Holder.One.Container.Toggle.Element
SympleLibrary["25"] = Instance.new("ImageButton", SympleLibrary["23"]);
SympleLibrary["25"]["SliceCenter"] = Rect.new(18, 18, 18, 18);
SympleLibrary["25"]["ScaleType"] = Enum.ScaleType.Slice;
SympleLibrary["25"]["ImageTransparency"] = 0.3;
SympleLibrary["25"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["25"]["Image"] = [[rbxasset://textures/ui/ImageSet/InGameMenu/img_set_1x_1.png]];
SympleLibrary["25"]["ImageRectSize"] = Vector2.new(36, 36);
SympleLibrary["25"]["Size"] = UDim2.new(0, 30, 0, 14);
SympleLibrary["25"]["BackgroundTransparency"] = 1;
SympleLibrary["25"]["Name"] = [[Element]];
SympleLibrary["25"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
SympleLibrary["25"]["ImageRectOffset"] = Vector2.new(287, 0);
SympleLibrary["25"]["Position"] = UDim2.new(0.805, 0, 0.5, 0);
-- Attributes
SympleLibrary["25"]:SetAttribute([[state]], false);
SympleLibrary["25"].MouseButton1Click:Connect(function()
		local ts,ti = game.TweenService,TweenInfo.new(.5,Enum.EasingStyle.Quint)

		local on1,on2,off1,off2 = ts:Create(SympleLibrary["27"],ti,{ImageTransparency=0}), ts:Create(SympleLibrary["26"],ti,{Position=UDim2.new(1.779, -39,0.5, 0)}),ts:Create(SympleLibrary["27"],ti,{ImageTransparency=1}), ts:Create(SympleLibrary["26"],ti,{Position=UDim2.new(1.113, -39,0.5, 0)})

		local state = script.Parent:GetAttribute("state")

		if state then
			on1:Play()
			on2:Play()
		else
			off1:Play()
			off2:Play()
		end

		script.Parent.MouseButton1Click:Connect(function()
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
end)

-- StarterGui.NathubLibrary.Holder.One.Container.Toggle.Element.Knob
SympleLibrary["26"] = Instance.new("ImageLabel", SympleLibrary["25"]);
SympleLibrary["26"]["ZIndex"] = 2;
SympleLibrary["26"]["AnchorPoint"] = Vector2.new(0, 0.5);
SympleLibrary["26"]["Image"] = [[rbxasset://textures/ui/ImageSet/InGameMenu/img_set_1x_1.png]];
SympleLibrary["26"]["ImageRectSize"] = Vector2.new(42, 42);
SympleLibrary["26"]["Size"] = UDim2.new(0, 20, 0, 20);
SympleLibrary["26"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
SympleLibrary["26"]["BackgroundTransparency"] = 1;
SympleLibrary["26"]["ImageRectOffset"] = Vector2.new(0, 208);
SympleLibrary["26"]["Name"] = [[Knob]];
SympleLibrary["26"]["Position"] = UDim2.new(1.77949, -39, 0.5, 0);


-- StarterGui.NathubLibrary.Holder.One.Container.Toggle.Element.Fill
SympleLibrary["27"] = Instance.new("ImageLabel", SympleLibrary["25"]);
SympleLibrary["27"]["SliceCenter"] = Rect.new(18, 18, 18, 18);
SympleLibrary["27"]["ScaleType"] = Enum.ScaleType.Slice;
SympleLibrary["27"]["ImageColor3"] = Color3.fromRGB(0, 214, 218);
SympleLibrary["27"]["Image"] = [[rbxasset://textures/ui/ImageSet/InGameMenu/img_set_1x_1.png]];
SympleLibrary["27"]["ImageRectSize"] = Vector2.new(36, 36);
SympleLibrary["27"]["Size"] = UDim2.new(1, 0, 1, 0);
SympleLibrary["27"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
SympleLibrary["27"]["BackgroundTransparency"] = 1;
SympleLibrary["27"]["ImageRectOffset"] = Vector2.new(324, 0);
SympleLibrary["27"]["Name"] = [[Fill]];


-- StarterGui.NathubLibrary.Holder.One.Container.Toggle.Element.LocalScript
SympleLibrary["28"] = Instance.new("LocalScript", SympleLibrary["25"]);
end

function self:EditOpenButton(tbl)
local Title = tbl.Title
local Icon = tbl.Icon
MakeDraggable2()
-- StarterGui.NathubLibrary.OpenButton
SympleLibrary["2a"] = Instance.new("Frame", SympleLibrary["1"]);
SympleLibrary["2a"]["Visible"] = false;
SympleLibrary["2a"]["BorderSizePixel"] = 0;
SympleLibrary["2a"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
SympleLibrary["2a"]["Position"] = UDim2.new(0.0927, 0, 0.63306, 0);
SympleLibrary["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["2a"]["Name"] = [[OpenButton]];


-- StarterGui.NathubLibrary.OpenButton.shadowHolder
SympleLibrary["2b"] = Instance.new("Frame", SympleLibrary["2a"]);
SympleLibrary["2b"]["ZIndex"] = 0;
SympleLibrary["2b"]["Size"] = UDim2.new(1, 0, 1, 0);
SympleLibrary["2b"]["Name"] = [[shadowHolder]];
SympleLibrary["2b"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.OpenButton.shadowHolder.umbraShadow
SympleLibrary["2c"] = Instance.new("ImageLabel", SympleLibrary["2b"]);
SympleLibrary["2c"]["ZIndex"] = 0;
SympleLibrary["2c"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
SympleLibrary["2c"]["ScaleType"] = Enum.ScaleType.Slice;
SympleLibrary["2c"]["ImageTransparency"] = 0.86;
SympleLibrary["2c"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["2c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["2c"]["Image"] = [[rbxassetid://1316045217]];
SympleLibrary["2c"]["Size"] = UDim2.new(1, 3, 1, 3);
SympleLibrary["2c"]["BackgroundTransparency"] = 1;
SympleLibrary["2c"]["Name"] = [[umbraShadow]];
SympleLibrary["2c"]["Position"] = UDim2.new(0.5, 0, 0.5, 3);


-- StarterGui.NathubLibrary.OpenButton.shadowHolder.penumbraShadow
SympleLibrary["2d"] = Instance.new("ImageLabel", SympleLibrary["2b"]);
SympleLibrary["2d"]["ZIndex"] = 0;
SympleLibrary["2d"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
SympleLibrary["2d"]["ScaleType"] = Enum.ScaleType.Slice;
SympleLibrary["2d"]["ImageTransparency"] = 0.88;
SympleLibrary["2d"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["2d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["2d"]["Image"] = [[rbxassetid://1316045217]];
SympleLibrary["2d"]["Size"] = UDim2.new(1, 3, 1, 3);
SympleLibrary["2d"]["BackgroundTransparency"] = 1;
SympleLibrary["2d"]["Name"] = [[penumbraShadow]];
SympleLibrary["2d"]["Position"] = UDim2.new(0.5, 0, 0.5, 3);


-- StarterGui.NathubLibrary.OpenButton.shadowHolder.ambientShadow
SympleLibrary["2e"] = Instance.new("ImageLabel", SympleLibrary["2b"]);
SympleLibrary["2e"]["ZIndex"] = 0;
SympleLibrary["2e"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
SympleLibrary["2e"]["ScaleType"] = Enum.ScaleType.Slice;
SympleLibrary["2e"]["ImageTransparency"] = 0.88;
SympleLibrary["2e"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["2e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["2e"]["Image"] = [[rbxassetid://1316045217]];
SympleLibrary["2e"]["Size"] = UDim2.new(1, 3, 1, 3);
SympleLibrary["2e"]["BackgroundTransparency"] = 1;
SympleLibrary["2e"]["Name"] = [[ambientShadow]];
SympleLibrary["2e"]["Position"] = UDim2.new(0.5, 0, 0.5, 3);


-- StarterGui.NathubLibrary.OpenButton.UICorner
SympleLibrary["2f"] = Instance.new("UICorner", SympleLibrary["2a"]);
SympleLibrary["2f"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.NathubLibrary.OpenButton.Logo
SympleLibrary["30"] = Instance.new("ImageLabel", SympleLibrary["2a"]);
SympleLibrary["30"]["BorderSizePixel"] = 0;
SympleLibrary["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["30"]["Image"] = Icon;
SympleLibrary["30"]["Size"] = UDim2.new(0, 40, 0, 40);
SympleLibrary["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["30"]["BackgroundTransparency"] = 1;
SympleLibrary["30"]["Name"] = [[Logo]];
SympleLibrary["30"]["Position"] = UDim2.new(0, 0, 0.025, 0);


-- StarterGui.NathubLibrary.OpenButton.Title
SympleLibrary["31"] = Instance.new("TextLabel", SympleLibrary["2a"]);
SympleLibrary["31"]["BorderSizePixel"] = 0;
SympleLibrary["31"]["TextSize"] = 14;
SympleLibrary["31"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SympleLibrary["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["31"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["31"]["BackgroundTransparency"] = 1;
SympleLibrary["31"]["Size"] = UDim2.new(0, 86, 0, 40);
SympleLibrary["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["31"]["Text"] = Title;
SympleLibrary["31"]["Name"] = [[Title]];
SympleLibrary["31"]["Position"] = UDim2.new(0.28571, 0, 0.025, 0);


-- StarterGui.NathubLibrary.OpenButton.Icon
SympleLibrary["32"] = Instance.new("ImageLabel", SympleLibrary["2a"]);
SympleLibrary["32"]["BorderSizePixel"] = 0;
SympleLibrary["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["32"]["Image"] = [[rbxassetid://10734895698]];
SympleLibrary["32"]["Size"] = UDim2.new(0, 20, 0, 20);
SympleLibrary["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["32"]["BackgroundTransparency"] = 1;
SympleLibrary["32"]["Name"] = [[Icon]];
SympleLibrary["32"]["Position"] = UDim2.new(0.80714, 0, 0.275, 0);


-- StarterGui.NathubLibrary.OpenButton.Trigger
SympleLibrary["33"] = Instance.new("TextButton", SympleLibrary["2a"]);
SympleLibrary["33"]["BorderSizePixel"] = 0;
SympleLibrary["33"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["33"]["TextSize"] = 14;
SympleLibrary["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
SympleLibrary["33"]["Size"] = UDim2.new(0, 27, 0, 40);
SympleLibrary["33"]["BackgroundTransparency"] = 1;
SympleLibrary["33"]["Name"] = [[Trigger]];
SympleLibrary["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["33"]["Text"] = [[]];
SympleLibrary["33"]["Position"] = UDim2.new(0.80714, 0, 0, 0);


-- StarterGui.NathubLibrary.OpenButton.Trigger.LocalScript
SympleLibrary["34"] = Instance.new("LocalScript", SympleLibrary["33"]);
	-- StarterGui.NathubLibrary.OpenButton.Trigger.LocalScript
	local function C_34()
		local script = SympleLibrary["34"];
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
	end;
	task.spawn(C_34)


-- StarterGui.NathubLibrary.OpenButton.LocalScript
SympleLibrary["35"] = Instance.new("LocalScript", SympleLibrary["2a"]);
end

function self:LibraryDestroy()
-- StarterGui.NathubLibrary.Dialog
SympleLibrary["36"] = Instance.new("Frame", SympleLibrary["1"]);
SympleLibrary["36"]["Visible"] = false;
SympleLibrary["36"]["BorderSizePixel"] = 0;
SympleLibrary["36"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
SympleLibrary["36"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["36"]["Size"] = UDim2.new(0, 300, 0, 150);
SympleLibrary["36"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
SympleLibrary["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["36"]["Name"] = [[Dialog]];


-- StarterGui.NathubLibrary.Dialog.shadowHolder
SympleLibrary["37"] = Instance.new("Frame", SympleLibrary["36"]);
SympleLibrary["37"]["ZIndex"] = 0;
SympleLibrary["37"]["Size"] = UDim2.new(1, 0, 1, 0);
SympleLibrary["37"]["Name"] = [[shadowHolder]];
SympleLibrary["37"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Dialog.shadowHolder.umbraShadow
SympleLibrary["38"] = Instance.new("ImageLabel", SympleLibrary["37"]);
SympleLibrary["38"]["ZIndex"] = 0;
SympleLibrary["38"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
SympleLibrary["38"]["ScaleType"] = Enum.ScaleType.Slice;
SympleLibrary["38"]["ImageTransparency"] = 0.86;
SympleLibrary["38"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["38"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["38"]["Image"] = [[rbxassetid://1316045217]];
SympleLibrary["38"]["Size"] = UDim2.new(1, 24, 1, 24);
SympleLibrary["38"]["BackgroundTransparency"] = 1;
SympleLibrary["38"]["Name"] = [[umbraShadow]];
SympleLibrary["38"]["Position"] = UDim2.new(0.5, 0, 0.4, 16);


-- StarterGui.NathubLibrary.Dialog.shadowHolder.penumbraShadow
SympleLibrary["39"] = Instance.new("ImageLabel", SympleLibrary["37"]);
SympleLibrary["39"]["ZIndex"] = 0;
SympleLibrary["39"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
SympleLibrary["39"]["ScaleType"] = Enum.ScaleType.Slice;
SympleLibrary["39"]["ImageTransparency"] = 0.88;
SympleLibrary["39"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["39"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["39"]["Image"] = [[rbxassetid://1316045217]];
SympleLibrary["39"]["Size"] = UDim2.new(1, 24, 1, 24);
SympleLibrary["39"]["BackgroundTransparency"] = 1;
SympleLibrary["39"]["Name"] = [[penumbraShadow]];
SympleLibrary["39"]["Position"] = UDim2.new(0.5, 0, 0.39333, 16);


-- StarterGui.NathubLibrary.Dialog.shadowHolder.ambientShadow
SympleLibrary["3a"] = Instance.new("ImageLabel", SympleLibrary["37"]);
SympleLibrary["3a"]["ZIndex"] = 0;
SympleLibrary["3a"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
SympleLibrary["3a"]["ScaleType"] = Enum.ScaleType.Slice;
SympleLibrary["3a"]["ImageTransparency"] = 0.88;
SympleLibrary["3a"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["3a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["3a"]["Image"] = [[rbxassetid://1316045217]];
SympleLibrary["3a"]["Size"] = UDim2.new(1, 24, 1, 24);
SympleLibrary["3a"]["BackgroundTransparency"] = 1;
SympleLibrary["3a"]["Name"] = [[ambientShadow]];
SympleLibrary["3a"]["Position"] = UDim2.new(0.5, 0, 0.32, 16);


-- StarterGui.NathubLibrary.Dialog.Title
SympleLibrary["3b"] = Instance.new("TextLabel", SympleLibrary["36"]);
SympleLibrary["3b"]["BorderSizePixel"] = 0;
SympleLibrary["3b"]["TextSize"] = 17;
SympleLibrary["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["3b"]["TextColor3"] = Color3.fromRGB(251, 251, 251);
SympleLibrary["3b"]["BackgroundTransparency"] = 1;
SympleLibrary["3b"]["Size"] = UDim2.new(0, 200, 0, 25);
SympleLibrary["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["3b"]["Text"] = [[Are You Sure?]];
SympleLibrary["3b"]["Name"] = [[Title]];
SympleLibrary["3b"]["Position"] = UDim2.new(0.16667, 0, 0, 0);


-- StarterGui.NathubLibrary.Dialog.UICorner
SympleLibrary["3c"] = Instance.new("UICorner", SympleLibrary["36"]);



-- StarterGui.NathubLibrary.Dialog.Desc
SympleLibrary["3d"] = Instance.new("TextLabel", SympleLibrary["36"]);
SympleLibrary["3d"]["TextWrapped"] = true;
SympleLibrary["3d"]["BorderSizePixel"] = 0;
SympleLibrary["3d"]["TextSize"] = 12;
SympleLibrary["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["3d"]["TextColor3"] = Color3.fromRGB(71, 71, 71);
SympleLibrary["3d"]["BackgroundTransparency"] = 1;
SympleLibrary["3d"]["RichText"] = true;
SympleLibrary["3d"]["Size"] = UDim2.new(0, 200, 0, 25);
SympleLibrary["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["3d"]["Text"] = [[If you press Yes, then the GUI will disappear]];
SympleLibrary["3d"]["Name"] = [[Desc]];
SympleLibrary["3d"]["Position"] = UDim2.new(0.16667, 0, 0.16667, 0);


-- StarterGui.NathubLibrary.Dialog.No
SympleLibrary["3e"] = Instance.new("TextButton", SympleLibrary["36"]);
SympleLibrary["3e"]["BorderSizePixel"] = 0;
SympleLibrary["3e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["3e"]["TextSize"] = 14;
SympleLibrary["3e"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
SympleLibrary["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["3e"]["Size"] = UDim2.new(0, 50, 0, 50);
SympleLibrary["3e"]["BackgroundTransparency"] = 1;
SympleLibrary["3e"]["Name"] = [[No]];
SympleLibrary["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["3e"]["Text"] = [[NO]];
SympleLibrary["3e"]["Position"] = UDim2.new(0.66667, 0, 0.56, 0);


-- StarterGui.NathubLibrary.Dialog.No.LocalScript
SympleLibrary["3f"] = Instance.new("LocalScript", SympleLibrary["3e"]);



-- StarterGui.NathubLibrary.Dialog.Yes
SympleLibrary["40"] = Instance.new("TextButton", SympleLibrary["36"]);
SympleLibrary["40"]["BorderSizePixel"] = 0;
SympleLibrary["40"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["40"]["TextSize"] = 14;
SympleLibrary["40"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
SympleLibrary["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["40"]["Size"] = UDim2.new(0, 50, 0, 50);
SympleLibrary["40"]["BackgroundTransparency"] = 1;
SympleLibrary["40"]["Name"] = [[Yes]];
SympleLibrary["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["40"]["Text"] = [[YES]];
SympleLibrary["40"]["Position"] = UDim2.new(0.16667, 0, 0.56, 0);


-- StarterGui.NathubLibrary.Dialog.Yes.LocalScript
SympleLibrary["41"] = Instance.new("LocalScript", SympleLibrary["40"]);

	-- StarterGui.NathubLibrary.Dialog.No.LocalScript
local function C_3f()
local script = SympleLibrary["3f"];
	local ms = script.Parent
	local holder = script.Parent.Parent.Parent.Holder
	local frme = script.Parent.Parent.Parent.Dialog
	
	ms.MouseButton1Click:Connect(function()
		
		holder.Visible = true
		frme.Visible = false
	end)
end;
task.spawn(C_3f);
-- StarterGui.NathubLibrary.Dialog.Yes.LocalScript
local function C_41()
local script = SympleLibrary["41"];
	local ms = script.Parent
	local natui = script.Parent.Parent.Parent.Parent.NathubUI
	
	ms.MouseButton1Click:Connect(function()
		
		natui:Destroy()
	end)
end;
task.spawn(C_41);
end

function self:Notification(tbl)
local Title = tbl.Title
local Desc = tbl.Desc
local Duration = tbl.Duration
-- StarterGui.NathubLibrary.Notification
SympleLibrary["42"] = Instance.new("CanvasGroup", SympleLibrary["1"]);
SympleLibrary["42"]["BorderSizePixel"] = 0;
SympleLibrary["42"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
SympleLibrary["42"]["Size"] = UDim2.new(0);
SympleLibrary["42"]["AutomaticSize"] = Enum.AutomaticSize.Y;
SympleLibrary["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["42"]["Name"] = [[Notification]];
SympleLibrary["42"]["Visible"] = true
	local ror = TweenService:Create(SympleLibrary["42"], TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 199,0, 77
		)
	})
	ror:Play()

-- StarterGui.NathubLibrary.Notification.Frame
SympleLibrary["43"] = Instance.new("Frame", SympleLibrary["42"]);
SympleLibrary["43"]["ZIndex"] = 2;
SympleLibrary["43"]["BorderSizePixel"] = 0;
SympleLibrary["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["43"]["AutomaticSize"] = Enum.AutomaticSize.Y;
SympleLibrary["43"]["Size"] = UDim2.new(1, -25, 1, 0);
SympleLibrary["43"]["Position"] = UDim2.new(0, 15, 0, 0);
SympleLibrary["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["43"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Notification.Frame.UIListLayout
SympleLibrary["44"] = Instance.new("UIListLayout", SympleLibrary["43"]);
SympleLibrary["44"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
SympleLibrary["44"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.NathubLibrary.Notification.Frame.UIPadding
SympleLibrary["45"] = Instance.new("UIPadding", SympleLibrary["43"]);
SympleLibrary["45"]["PaddingTop"] = UDim.new(0, 16);
SympleLibrary["45"]["PaddingBottom"] = UDim.new(0, 16);


-- StarterGui.NathubLibrary.Notification.Frame.Title
SympleLibrary["46"] = Instance.new("TextLabel", SympleLibrary["43"]);
SympleLibrary["46"]["TextWrapped"] = true;
SympleLibrary["46"]["ZIndex"] = 2;
SympleLibrary["46"]["BorderSizePixel"] = 0;
SympleLibrary["46"]["TextSize"] = 16;
SympleLibrary["46"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SympleLibrary["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["46"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SympleLibrary["46"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["46"]["BackgroundTransparency"] = 1;
SympleLibrary["46"]["RichText"] = true;
SympleLibrary["46"]["AnchorPoint"] = Vector2.new(0.5, 0);
SympleLibrary["46"]["Size"] = UDim2.new(1, 0, 0, 10);
SympleLibrary["46"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
SympleLibrary["46"]["Text"] = Title;
SympleLibrary["46"]["AutomaticSize"] = Enum.AutomaticSize.Y;
SympleLibrary["46"]["Name"] = [[Title]];
SympleLibrary["46"]["Position"] = UDim2.new(0.13793, 0, -1.19565, 15);


-- StarterGui.NathubLibrary.Notification.Frame.Description
SympleLibrary["47"] = Instance.new("TextLabel", SympleLibrary["43"]);
SympleLibrary["47"]["TextWrapped"] = true;
SympleLibrary["47"]["ZIndex"] = 2;
SympleLibrary["47"]["BorderSizePixel"] = 0;
SympleLibrary["47"]["TextSize"] = 14;
SympleLibrary["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SympleLibrary["47"]["TextTransparency"] = 0.15;
SympleLibrary["47"]["TextYAlignment"] = Enum.TextYAlignment.Top;
SympleLibrary["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["47"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
SympleLibrary["47"]["TextColor3"] = Color3.fromRGB(121, 121, 121);
SympleLibrary["47"]["BackgroundTransparency"] = 1;
SympleLibrary["47"]["RichText"] = true;
SympleLibrary["47"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["47"]["Size"] = UDim2.new(1, 0, 0, 5);
SympleLibrary["47"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
SympleLibrary["47"]["Text"] = Desc;
SympleLibrary["47"]["AutomaticSize"] = Enum.AutomaticSize.Y;
SympleLibrary["47"]["Name"] = [[Description]];
SympleLibrary["47"]["Position"] = UDim2.new(0.55172, 0, -0.34783, 7);


-- StarterGui.NathubLibrary.Notification.Interact
SympleLibrary["48"] = Instance.new("TextButton", SympleLibrary["42"]);
SympleLibrary["48"]["BorderSizePixel"] = 0;
SympleLibrary["48"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["48"]["TextSize"] = 14;
SympleLibrary["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SympleLibrary["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
SympleLibrary["48"]["ZIndex"] = 5;
SympleLibrary["48"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SympleLibrary["48"]["Size"] = UDim2.new(1, 0, 1, 0);
SympleLibrary["48"]["BackgroundTransparency"] = 1;
SympleLibrary["48"]["Name"] = [[Interact]];
SympleLibrary["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["48"]["Text"] = [[]];
SympleLibrary["48"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.NathubLibrary.Notification.Shadow
SympleLibrary["49"] = Instance.new("UIStroke", SympleLibrary["42"]);
SympleLibrary["49"]["Transparency"] = 1;
SympleLibrary["49"]["Name"] = [[Shadow]];
SympleLibrary["49"]["Thickness"] = 1.2;
SympleLibrary["49"]["Color"] = Color3.fromRGB(86, 86, 86);


-- StarterGui.NathubLibrary.Notification.UICorner
SympleLibrary["4a"] = Instance.new("UICorner", SympleLibrary["42"]);
SympleLibrary["4a"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.NathubLibrary.Notification.Timer
SympleLibrary["4b"] = Instance.new("Frame", SympleLibrary["42"]);
SympleLibrary["4b"]["ZIndex"] = 2;
SympleLibrary["4b"]["BorderSizePixel"] = 0;
SympleLibrary["4b"]["BackgroundColor3"] = Color3.fromRGB(111, 159, 247);
SympleLibrary["4b"]["Size"] = UDim2.new(1, 0, 0, 2);
SympleLibrary["4b"]["Position"] = UDim2.new(0, 0, 1, -2);
SympleLibrary["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SympleLibrary["4b"]["Name"] = [[Timer]];


-- StarterGui.NathubLibrary.Notification.Timer.Outline
SympleLibrary["4c"] = Instance.new("UIStroke", SympleLibrary["4b"]);
SympleLibrary["4c"]["Name"] = [[Outline]];
SympleLibrary["4c"]["Thickness"] = 2;
SympleLibrary["4c"]["Color"] = Color3.fromRGB(171, 219, 357);


-- StarterGui.NathubLibrary.Notification.Timer.UICorner
SympleLibrary["4d"] = Instance.new("UICorner", SympleLibrary["4b"]);



-- StarterGui.NathubLibrary.Notification.AspectRatio
SympleLibrary["4e"] = Instance.new("UIAspectRatioConstraint", SympleLibrary["42"]);
SympleLibrary["4e"]["AspectRatio"] = 2.55128;
SympleLibrary["4e"]["Name"] = [[AspectRatio]];
	wait(Duration)
	local uror = TweenService:Create(SympleLibrary["42"], TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0
		)
	})
	uror:Play()
	SympleLibrary["42"].Visible = false
end

return SympleLibrary["1"], require;
