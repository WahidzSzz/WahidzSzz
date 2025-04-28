local Library = {};
local TweenService = game:GetService("TweenService")

---credit whiddd
function Library:AddWindow(tbl)
local Title = tbl.Title
local Description = tbl.Description
local Icon = tbl.Icon

-- StarterGui.NathubLibrary
Library["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
Library["1"]["Name"] = [[NathubLibrary]];
Library["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
Library["1"]["ResetOnSpawn"] = false

-- StarterGui.NathubLibrary.Holder
Library["2"] = Instance.new("Frame", Library["1"]);
Library["2"]["BorderSizePixel"] = 0;
Library["2"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
Library["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Library["2"]["Size"] = UDim2.new(0, 400, 0, 270);
Library["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
Library["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["2"]["Name"] = [[Holder]];
Library["2"]["BackgroundTransparency"] = 0.01;


-- StarterGui.NathubLibrary.Holder.Shadow
Library["3"] = Instance.new("Frame", Library["2"]);
Library["3"]["ZIndex"] = 0;
Library["3"]["Size"] = UDim2.new(1, 0, 1, 0);
Library["3"]["Name"] = [[Shadow]];
Library["3"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.Shadow.umbraShadow
Library["4"] = Instance.new("ImageLabel", Library["3"]);
Library["4"]["ZIndex"] = 0;
Library["4"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
Library["4"]["ScaleType"] = Enum.ScaleType.Slice;
Library["4"]["ImageTransparency"] = 0.86;
Library["4"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
Library["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Library["4"]["Image"] = [[rbxassetid://1316045217]];
Library["4"]["Size"] = UDim2.new(1, 10, 1, 10);
Library["4"]["BackgroundTransparency"] = 1;
Library["4"]["Name"] = [[umbraShadow]];
Library["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 8);


-- StarterGui.NathubLibrary.Holder.Shadow.penumbraShadow
Library["5"] = Instance.new("ImageLabel", Library["3"]);
Library["5"]["ZIndex"] = 0;
Library["5"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
Library["5"]["ScaleType"] = Enum.ScaleType.Slice;
Library["5"]["ImageTransparency"] = 0.88;
Library["5"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
Library["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Library["5"]["Image"] = [[rbxassetid://1316045217]];
Library["5"]["Size"] = UDim2.new(1, 10, 1, 10);
Library["5"]["BackgroundTransparency"] = 1;
Library["5"]["Name"] = [[penumbraShadow]];
Library["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 8);


-- StarterGui.NathubLibrary.Holder.Shadow.ambientShadow
Library["6"] = Instance.new("ImageLabel", Library["3"]);
Library["6"]["ZIndex"] = 0;
Library["6"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
Library["6"]["ScaleType"] = Enum.ScaleType.Slice;
Library["6"]["ImageTransparency"] = 0.88;
Library["6"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
Library["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
Library["6"]["Image"] = [[rbxassetid://1316045217]];
Library["6"]["Size"] = UDim2.new(1, 10, 1, 10);
Library["6"]["BackgroundTransparency"] = 1;
Library["6"]["Name"] = [[ambientShadow]];
Library["6"]["Position"] = UDim2.new(0.5, 0, 0.5, 8);


-- StarterGui.NathubLibrary.Holder.Shadow.UICorner
Library["7"] = Instance.new("UICorner", Library["3"]);
Library["7"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.NathubLibrary.Holder.Topbar
Library["8"] = Instance.new("Frame", Library["2"]);
Library["8"]["BorderSizePixel"] = 0;
Library["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Library["8"]["Size"] = UDim2.new(0, 400, 0, 31);
Library["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["8"]["Name"] = [[Topbar]];
Library["8"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.Topbar.UICorner
Library["9"] = Instance.new("UICorner", Library["8"]);
Library["9"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.NathubLibrary.Holder.Topbar.Minimize
Library["a"] = Instance.new("ImageButton", Library["8"]);
Library["a"]["BorderSizePixel"] = 0;
Library["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Library["a"]["Image"] = [[rbxassetid://10734895530]];
Library["a"]["Size"] = UDim2.new(0, 20, 0, 20);
Library["a"]["BackgroundTransparency"] = 1;
Library["a"]["Name"] = [[Minimize]];
Library["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["a"]["Position"] = UDim2.new(0.935, 0, 0.09677, 0);
Library["a"].MouseButton1Click:Connect(function()
		local script = Library["b"];
		local holder = Library["2"]
		local openbutton = Library["1f"]
		local TweenService = game:GetService("TweenService")
		local UIS = game:GetService("UserInputService")
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


-- StarterGui.NathubLibrary.Holder.Topbar.LocalScript
Library["c"] = Instance.new("LocalScript", Library["8"]);
	local function C_c()
		local script = Library["c"];
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
	end;
	task.spawn(C_c);


-- StarterGui.NathubLibrary.Holder.Topbar.Hub
Library["d"] = Instance.new("TextLabel", Library["8"]);
Library["d"]["BorderSizePixel"] = 0;
Library["d"]["TextSize"] = 18;
Library["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Library["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
Library["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Library["d"]["BackgroundTransparency"] = 1;
Library["d"]["Size"] = UDim2.new(0, 400, 0, 31);
Library["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["d"]["Text"] = Title;
Library["d"]["Name"] = [[Hub]];
Library["d"]["Position"] = UDim2.new(0, 0, 0.09677, 0);


-- StarterGui.NathubLibrary.Holder.UICorner
Library["e"] = Instance.new("UICorner", Library["2"]);
Library["e"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.NathubLibrary.Holder.One
Library["f"] = Instance.new("ScrollingFrame", Library["2"]);
Library["f"]["Active"] = true;
Library["f"]["BorderSizePixel"] = 0;
Library["f"]["CanvasSize"] = UDim2.new(0, 0, 3, 0);
Library["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Library["f"]["Name"] = [[One]];
Library["f"]["Size"] = UDim2.new(0, 400, 0, 233);
Library["f"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
Library["f"]["Position"] = UDim2.new(0, 0, 0.13333, 0);
Library["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["f"]["ScrollBarThickness"] = 0;
Library["f"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.One.Container
Library["10"] = Instance.new("Frame", Library["f"]);
Library["10"]["BorderSizePixel"] = 0;
Library["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Library["10"]["Size"] = UDim2.new(0, 400, 0, 233);
Library["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["10"]["Name"] = [[Container]];
Library["10"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.One.Container.UIListLayout
Library["11"] = Instance.new("UIListLayout", Library["10"]);
Library["11"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.NathubLibrary.Holder.UIAspectRatioConstraint
	Library["1e"] = Instance.new("UIAspectRatioConstraint", Library["2"]);
	Library["1e"]["AspectRatio"] = 1.48148;


	-- StarterGui.NathubLibrary.OpenButton
	Library["1f"] = Instance.new("Frame", Library["1"]);
	Library["1f"]["Visible"] = false;
	Library["1f"]["BorderSizePixel"] = 0;
	Library["1f"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
	Library["1f"]["Position"] = UDim2.new(0.0927, 0, 0.63306, 0);
	Library["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["1f"]["Name"] = [[OpenButton]];


	-- StarterGui.NathubLibrary.OpenButton.shadowHolder
	Library["20"] = Instance.new("Frame", Library["1f"]);
	Library["20"]["ZIndex"] = 0;
	Library["20"]["Size"] = UDim2.new(1, 0, 1, 0);
	Library["20"]["Name"] = [[shadowHolder]];
	Library["20"]["BackgroundTransparency"] = 1;


	-- StarterGui.NathubLibrary.OpenButton.shadowHolder.umbraShadow
	Library["21"] = Instance.new("ImageLabel", Library["20"]);
	Library["21"]["ZIndex"] = 0;
	Library["21"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
	Library["21"]["ScaleType"] = Enum.ScaleType.Slice;
	Library["21"]["ImageTransparency"] = 0.86;
	Library["21"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
	Library["21"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Library["21"]["Image"] = [[rbxassetid://1316045217]];
	Library["21"]["Size"] = UDim2.new(1, 3, 1, 3);
	Library["21"]["BackgroundTransparency"] = 1;
	Library["21"]["Name"] = [[umbraShadow]];
	Library["21"]["Position"] = UDim2.new(0.5, 0, 0.5, 3);


	-- StarterGui.NathubLibrary.OpenButton.shadowHolder.penumbraShadow
	Library["22"] = Instance.new("ImageLabel", Library["20"]);
	Library["22"]["ZIndex"] = 0;
	Library["22"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
	Library["22"]["ScaleType"] = Enum.ScaleType.Slice;
	Library["22"]["ImageTransparency"] = 0.88;
	Library["22"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
	Library["22"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Library["22"]["Image"] = [[rbxassetid://1316045217]];
	Library["22"]["Size"] = UDim2.new(1, 3, 1, 3);
	Library["22"]["BackgroundTransparency"] = 1;
	Library["22"]["Name"] = [[penumbraShadow]];
	Library["22"]["Position"] = UDim2.new(0.5, 0, 0.5, 3);


	-- StarterGui.NathubLibrary.OpenButton.shadowHolder.ambientShadow
	Library["23"] = Instance.new("ImageLabel", Library["20"]);
	Library["23"]["ZIndex"] = 0;
	Library["23"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
	Library["23"]["ScaleType"] = Enum.ScaleType.Slice;
	Library["23"]["ImageTransparency"] = 0.88;
	Library["23"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
	Library["23"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Library["23"]["Image"] = [[rbxassetid://1316045217]];
	Library["23"]["Size"] = UDim2.new(1, 3, 1, 3);
	Library["23"]["BackgroundTransparency"] = 1;
	Library["23"]["Name"] = [[ambientShadow]];
	Library["23"]["Position"] = UDim2.new(0.5, 0, 0.5, 3);


	-- StarterGui.NathubLibrary.OpenButton.UICorner
	Library["24"] = Instance.new("UICorner", Library["1f"]);
	Library["24"]["CornerRadius"] = UDim.new(0, 4);


	-- StarterGui.NathubLibrary.OpenButton.Icon
	Library["25"] = Instance.new("ImageLabel", Library["1f"]);
	Library["25"]["BorderSizePixel"] = 0;
	Library["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Library["25"]["Image"] = [[rbxassetid://99764942615873]];
	Library["25"]["Size"] = UDim2.new(0, 40, 0, 40);
	Library["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["25"]["BackgroundTransparency"] = 1;
	Library["25"]["Name"] = [[Icon]];
	Library["25"]["Position"] = UDim2.new(0, 0, 0.025, 0);


	-- StarterGui.NathubLibrary.OpenButton.Title
	Library["26"] = Instance.new("TextLabel", Library["1f"]);
	Library["26"]["BorderSizePixel"] = 0;
	Library["26"]["TextSize"] = 14;
	Library["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	Library["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Library["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	Library["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	Library["26"]["BackgroundTransparency"] = 1;
	Library["26"]["Size"] = UDim2.new(0, 86, 0, 40);
	Library["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["26"]["Text"] = Description;
	Library["26"]["Name"] = [[Title]];
	Library["26"]["Position"] = UDim2.new(0.28571, 0, 0.025, 0);


	-- StarterGui.NathubLibrary.OpenButton.Icon
	Library["27"] = Instance.new("ImageLabel", Library["1f"]);
	Library["27"]["BorderSizePixel"] = 0;
	Library["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Library["27"]["Image"] = Icon;
	Library["27"]["Size"] = UDim2.new(0, 20, 0, 20);
	Library["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["27"]["BackgroundTransparency"] = 1;
	Library["27"]["Name"] = [[Icon]];
	Library["27"]["Position"] = UDim2.new(0.80714, 0, 0.275, 0);


	-- StarterGui.NathubLibrary.OpenButton.Trigger
	Library["28"] = Instance.new("TextButton", Library["1f"]);
	Library["28"]["BorderSizePixel"] = 0;
	Library["28"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
	Library["28"]["TextSize"] = 14;
	Library["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Library["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	Library["28"]["Size"] = UDim2.new(0, 27, 0, 40);
	Library["28"]["BackgroundTransparency"] = 1;
	Library["28"]["Name"] = [[Trigger]];
	Library["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["28"]["Text"] = [[]];
	Library["28"]["Position"] = UDim2.new(0.80714, 0, 0, 0);
	Library["28"].MouseButton1Click:Connect(function()
			local script = Library["29"];
			local holder = Library["2"]
			local openbutton = Library["1f"]
			local TweenService = game:GetService("TweenService")
			local UIS = game:GetService("UserInputService")
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
	


	-- StarterGui.NathubLibrary.OpenButton.LocalScript
	Library["2a"] = Instance.new("LocalScript", Library["1f"]);
	local function C_2a()
		local script = Library["2a"];
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
	end;
	task.spawn(C_2a);



	-- StarterGui.NathubLibrary.Dialog
	Library["2b"] = Instance.new("Frame", Library["1"]);
	Library["2b"]["Visible"] = false;
	Library["2b"]["BorderSizePixel"] = 0;
	Library["2b"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
	Library["2b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Library["2b"]["Size"] = UDim2.new(0, 300, 0, 150);
	Library["2b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	Library["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["2b"]["Name"] = [[Dialog]];


	-- StarterGui.NathubLibrary.Dialog.shadowHolder
	Library["2c"] = Instance.new("Frame", Library["2b"]);
	Library["2c"]["ZIndex"] = 0;
	Library["2c"]["Size"] = UDim2.new(1, 0, 1, 0);
	Library["2c"]["Name"] = [[shadowHolder]];
	Library["2c"]["BackgroundTransparency"] = 1;


	-- StarterGui.NathubLibrary.Dialog.shadowHolder.umbraShadow
	Library["2d"] = Instance.new("ImageLabel", Library["2c"]);
	Library["2d"]["ZIndex"] = 0;
	Library["2d"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
	Library["2d"]["ScaleType"] = Enum.ScaleType.Slice;
	Library["2d"]["ImageTransparency"] = 0.86;
	Library["2d"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
	Library["2d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Library["2d"]["Image"] = [[rbxassetid://1316045217]];
	Library["2d"]["Size"] = UDim2.new(1, 24, 1, 24);
	Library["2d"]["BackgroundTransparency"] = 1;
	Library["2d"]["Name"] = [[umbraShadow]];
	Library["2d"]["Position"] = UDim2.new(0.5, 0, 0.4, 16);


	-- StarterGui.NathubLibrary.Dialog.shadowHolder.penumbraShadow
	Library["2e"] = Instance.new("ImageLabel", Library["2c"]);
	Library["2e"]["ZIndex"] = 0;
	Library["2e"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
	Library["2e"]["ScaleType"] = Enum.ScaleType.Slice;
	Library["2e"]["ImageTransparency"] = 0.88;
	Library["2e"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
	Library["2e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Library["2e"]["Image"] = [[rbxassetid://1316045217]];
	Library["2e"]["Size"] = UDim2.new(1, 24, 1, 24);
	Library["2e"]["BackgroundTransparency"] = 1;
	Library["2e"]["Name"] = [[penumbraShadow]];
	Library["2e"]["Position"] = UDim2.new(0.5, 0, 0.39333, 16);


	-- StarterGui.NathubLibrary.Dialog.shadowHolder.ambientShadow
	Library["2f"] = Instance.new("ImageLabel", Library["2c"]);
	Library["2f"]["ZIndex"] = 0;
	Library["2f"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
	Library["2f"]["ScaleType"] = Enum.ScaleType.Slice;
	Library["2f"]["ImageTransparency"] = 0.88;
	Library["2f"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
	Library["2f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Library["2f"]["Image"] = [[rbxassetid://1316045217]];
	Library["2f"]["Size"] = UDim2.new(1, 24, 1, 24);
	Library["2f"]["BackgroundTransparency"] = 1;
	Library["2f"]["Name"] = [[ambientShadow]];
	Library["2f"]["Position"] = UDim2.new(0.5, 0, 0.32, 16);


	-- StarterGui.NathubLibrary.Dialog.Title
	Library["30"] = Instance.new("TextLabel", Library["2b"]);
	Library["30"]["BorderSizePixel"] = 0;
	Library["30"]["TextSize"] = 17;
	Library["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Library["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	Library["30"]["TextColor3"] = Color3.fromRGB(251, 251, 251);
	Library["30"]["BackgroundTransparency"] = 1;
	Library["30"]["Size"] = UDim2.new(0, 200, 0, 25);
	Library["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["30"]["Text"] = [[Are You Sure?]];
	Library["30"]["Name"] = [[Title]];
	Library["30"]["Position"] = UDim2.new(0.16667, 0, 0, 0);


	-- StarterGui.NathubLibrary.Dialog.UICorner
	Library["31"] = Instance.new("UICorner", Library["2b"]);



	-- StarterGui.NathubLibrary.Dialog.Desc
	Library["32"] = Instance.new("TextLabel", Library["2b"]);
	Library["32"]["TextWrapped"] = true;
	Library["32"]["BorderSizePixel"] = 0;
	Library["32"]["TextSize"] = 12;
	Library["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Library["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	Library["32"]["TextColor3"] = Color3.fromRGB(71, 71, 71);
	Library["32"]["BackgroundTransparency"] = 1;
	Library["32"]["RichText"] = true;
	Library["32"]["Size"] = UDim2.new(0, 200, 0, 25);
	Library["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["32"]["Text"] = [[If you press Yes, then the GUI will disappear]];
	Library["32"]["Name"] = [[Desc]];
	Library["32"]["Position"] = UDim2.new(0.16667, 0, 0.16667, 0);


	-- StarterGui.NathubLibrary.Dialog.No
	Library["33"] = Instance.new("TextButton", Library["2b"]);
	Library["33"]["BorderSizePixel"] = 0;
	Library["33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	Library["33"]["TextSize"] = 14;
	Library["33"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
	Library["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	Library["33"]["Size"] = UDim2.new(0, 50, 0, 50);
	Library["33"]["BackgroundTransparency"] = 1;
	Library["33"]["Name"] = [[No]];
	Library["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["33"]["Text"] = [[NO]];
	Library["33"]["Position"] = UDim2.new(0.66667, 0, 0.56, 0);


	-- StarterGui.NathubLibrary.Dialog.No.LocalScript
	Library["34"] = Instance.new("LocalScript", Library["33"]);
	local function C_34()
		local script = Library["34"];
		local ms = script.Parent
		local holder = script.Parent.Parent.Parent.Holder
		local frme = script.Parent.Parent.Parent.Dialog

		ms.MouseButton1Click:Connect(function()

			holder.Visible = true
			frme.Visible = false
		end)
	end;
	task.spawn(C_34);


	-- StarterGui.NathubLibrary.Dialog.Yes
	Library["35"] = Instance.new("TextButton", Library["2b"]);
	Library["35"]["BorderSizePixel"] = 0;
	Library["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	Library["35"]["TextSize"] = 14;
	Library["35"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
	Library["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	Library["35"]["Size"] = UDim2.new(0, 50, 0, 50);
	Library["35"]["BackgroundTransparency"] = 1;
	Library["35"]["Name"] = [[Yes]];
	Library["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["35"]["Text"] = [[YES]];
	Library["35"]["Position"] = UDim2.new(0.16667, 0, 0.56, 0);


	-- StarterGui.NathubLibrary.Dialog.Yes.LocalScript
	Library["36"] = Instance.new("LocalScript", Library["35"]);
end

function Library:Notification(tbl)
	local Title = tbl.Title
	local Desc = tbl.Desc
	local Duration = tbl.Duration
	-- StarterGui.NathubLibrary.Notification
	Library["37"] = Instance.new("CanvasGroup", Library["1"]);
	Library["37"]["BorderSizePixel"] = 0;
	Library["37"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
	Library["37"]["AutomaticSize"] = Enum.AutomaticSize.Y;
	Library["37"]["Size"] = UDim2.new(0);
	Library["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["37"]["Name"] = [[Notification]];
	Library["37"].Visible = false
	Library["37"].Visible = true
	local ror = TweenService:Create(Library["37"], TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 199,0, 77
		)
	})
	ror:Play()

	-- StarterGui.NathubLibrary.Notification.Frame
	Library["38"] = Instance.new("Frame", Library["37"]);
	Library["38"]["ZIndex"] = 2;
	Library["38"]["BorderSizePixel"] = 0;
	Library["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Library["38"]["AutomaticSize"] = Enum.AutomaticSize.Y;
	Library["38"]["Size"] = UDim2.new(1, -25, 1, 0);
	Library["38"]["Position"] = UDim2.new(0, 15, 0, 0);
	Library["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["38"]["BackgroundTransparency"] = 1;


	-- StarterGui.NathubLibrary.Notification.Frame.UIListLayout
	Library["39"] = Instance.new("UIListLayout", Library["38"]);
	Library["39"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	Library["39"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


	-- StarterGui.NathubLibrary.Notification.Frame.UIPadding
	Library["3a"] = Instance.new("UIPadding", Library["38"]);
	Library["3a"]["PaddingTop"] = UDim.new(0, 16);
	Library["3a"]["PaddingBottom"] = UDim.new(0, 16);


	-- StarterGui.NathubLibrary.Notification.Frame.Title
	Library["3b"] = Instance.new("TextLabel", Library["38"]);
	Library["3b"]["TextWrapped"] = true;
	Library["3b"]["ZIndex"] = 2;
	Library["3b"]["BorderSizePixel"] = 0;
	Library["3b"]["TextSize"] = 16;
	Library["3b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	Library["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Library["3b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	Library["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	Library["3b"]["BackgroundTransparency"] = 1;
	Library["3b"]["RichText"] = true;
	Library["3b"]["AnchorPoint"] = Vector2.new(0.5, 0);
	Library["3b"]["Size"] = UDim2.new(1, 0, 0, 10);
	Library["3b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	Library["3b"]["Text"] = Title;
	Library["3b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
	Library["3b"]["Name"] = [[Title]];
	Library["3b"]["Position"] = UDim2.new(0.13793, 0, -1.19565, 15);


	-- StarterGui.NathubLibrary.Notification.Frame.Description
	Library["3c"] = Instance.new("TextLabel", Library["38"]);
	Library["3c"]["TextWrapped"] = true;
	Library["3c"]["ZIndex"] = 2;
	Library["3c"]["BorderSizePixel"] = 0;
	Library["3c"]["TextSize"] = 14;
	Library["3c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	Library["3c"]["TextTransparency"] = 0.15;
	Library["3c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
	Library["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Library["3c"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	Library["3c"]["TextColor3"] = Color3.fromRGB(121, 121, 121);
	Library["3c"]["BackgroundTransparency"] = 1;
	Library["3c"]["RichText"] = true;
	Library["3c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Library["3c"]["Size"] = UDim2.new(1, 0, 0, 5);
	Library["3c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	Library["3c"]["Text"] = Desc;
	Library["3c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
	Library["3c"]["Name"] = [[Description]];
	Library["3c"]["Position"] = UDim2.new(0.55172, 0, -0.34783, 7);


	-- StarterGui.NathubLibrary.Notification.Interact
	Library["3d"] = Instance.new("TextButton", Library["37"]);
	Library["3d"]["BorderSizePixel"] = 0;
	Library["3d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
	Library["3d"]["TextSize"] = 14;
	Library["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	Library["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	Library["3d"]["ZIndex"] = 5;
	Library["3d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	Library["3d"]["Size"] = UDim2.new(1, 0, 1, 0);
	Library["3d"]["BackgroundTransparency"] = 1;
	Library["3d"]["Name"] = [[Interact]];
	Library["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["3d"]["Text"] = [[]];
	Library["3d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


	-- StarterGui.NathubLibrary.Notification.Shadow
	Library["3e"] = Instance.new("UIStroke", Library["37"]);
	Library["3e"]["Transparency"] = 1;
	Library["3e"]["Name"] = [[Shadow]];
	Library["3e"]["Thickness"] = 1.2;
	Library["3e"]["Color"] = Color3.fromRGB(86, 86, 86);


	-- StarterGui.NathubLibrary.Notification.UICorner
	Library["3f"] = Instance.new("UICorner", Library["37"]);
	Library["3f"]["CornerRadius"] = UDim.new(0, 12);


	-- StarterGui.NathubLibrary.Notification.Timer
	Library["40"] = Instance.new("Frame", Library["37"]);
	Library["40"]["ZIndex"] = 2;
	Library["40"]["BorderSizePixel"] = 0;
	Library["40"]["BackgroundColor3"] = Color3.fromRGB(111, 159, 247);
	Library["40"]["Size"] = UDim2.new(1, 0, 0, 2);
	Library["40"]["Position"] = UDim2.new(0, 0, 1, -2);
	Library["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Library["40"]["Name"] = [[Timer]];


	-- StarterGui.NathubLibrary.Notification.Timer.Outline
	Library["41"] = Instance.new("UIStroke", Library["40"]);
	Library["41"]["Name"] = [[Outline]];
	Library["41"]["Thickness"] = 2;
	Library["41"]["Color"] = Color3.fromRGB(171, 219, 357);


	-- StarterGui.NathubLibrary.Notification.Timer.UICorner
	Library["42"] = Instance.new("UICorner", Library["40"]);



	-- StarterGui.NathubLibrary.Notification.AspectRatio
	Library["43"] = Instance.new("UIAspectRatioConstraint", Library["37"]);
	Library["43"]["AspectRatio"] = 2.55128;
	Library["43"]["Name"] = [[AspectRatio]];
	
	
	wait(Duration)
	local uror = TweenService:Create(Library["37"], TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0
		)
	})
	uror:Play()
	Library["37"].Visible = false
end

function Library:AddSection(tbl)
local Title = tbl.Title
local TextColor = tbl.TextColor
-- StarterGui.NathubLibrary.Holder.One.Container.Section
Library["12"] = Instance.new("TextLabel", Library["10"]);
Library["12"]["BorderSizePixel"] = 0;
Library["12"]["TextSize"] = 18;
Library["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Library["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Library["12"]["TextColor3"] = TextColor;
Library["12"]["BackgroundTransparency"] = 1;
Library["12"]["Size"] = UDim2.new(0, 400, 0, 30);
Library["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["12"]["Text"] = Title;
Library["12"]["Name"] = [[Section]];
end

function Library:AddToggle(tbl)
local Title = tbl.Title
local Callback = tbl.Callback
-- StarterGui.NathubLibrary.Holder.One.Container.Toggle
Library["14"] = Instance.new("Frame", Library["10"]);
Library["14"]["BorderSizePixel"] = 0;
Library["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Library["14"]["Size"] = UDim2.new(0, 400, 0, 30);
Library["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["14"]["Name"] = [[Toggle]];
Library["14"]["BackgroundTransparency"] = 1;


-- StarterGui.NathubLibrary.Holder.One.Container.Toggle.Title
Library["15"] = Instance.new("TextLabel", Library["14"]);
Library["15"]["BorderSizePixel"] = 0;
Library["15"]["TextSize"] = 14;
Library["15"]["TextXAlignment"] = Enum.TextXAlignment.Left;
Library["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Library["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Library["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Library["15"]["BackgroundTransparency"] = 1;
Library["15"]["Size"] = UDim2.new(0, 186, 0, 30);
Library["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["15"]["Text"] = Title;
Library["15"]["Name"] = [[Title]];
Library["15"]["Position"] = UDim2.new(0.16, 0, 0, 0);


-- StarterGui.NathubLibrary.Holder.One.Container.Toggle.Checkbox
Library["16"] = Instance.new("Frame", Library["14"]);
Library["16"]["BorderSizePixel"] = 0;
Library["16"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
Library["16"]["Size"] = UDim2.new(0, 20, 0, 20);
Library["16"]["Position"] = UDim2.new(0.805, 0, 0.16667, 0);
Library["16"]["BorderColor3"] = Color3.fromRGB(71, 71, 71);
Library["16"]["Name"] = [[Checkbox]];


-- StarterGui.NathubLibrary.Holder.One.Container.Toggle.Checkbox.Trigger
Library["17"] = Instance.new("ImageButton", Library["16"]);
Library["17"]["BorderSizePixel"] = 0;
Library["17"]["ImageTransparency"] = 1;
Library["17"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
Library["17"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
Library["17"]["Size"] = UDim2.new(0, 20, 0, 20);
Library["17"]["BackgroundTransparency"] = 1;
Library["17"]["Name"] = [[Trigger]];
Library["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["17"].MouseButton1Click:Connect(function()
	local icon =  Library["18"]
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
end)

-- StarterGui.NathubLibrary.Holder.One.Container.Toggle.Checkbox.Check
Library["18"] = Instance.new("ImageLabel", Library["16"]);
Library["18"]["BorderSizePixel"] = 0;
Library["18"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
Library["18"]["Image"] = [[rbxassetid://10709790644]];
Library["18"]["Visible"] = false;
Library["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["18"]["BackgroundTransparency"] = 1;
Library["18"]["Name"] = [[Check]];


-- StarterGui.NathubLibrary.Holder.One.Container.Toggle.Checkbox.Check.UICorner
Library["19"] = Instance.new("UICorner", Library["18"]);
Library["19"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.NathubLibrary.Holder.One.Container.Toggle.Checkbox.UICorner
Library["1a"] = Instance.new("UICorner", Library["16"]);
Library["1a"]["CornerRadius"] = UDim.new(0, 3);
end

function Library:AddButton(tbl)
local Title = tbl.Title
local Callback = tbl.Callback
-- StarterGui.NathubLibrary.Holder.One.Container.Button
Library["1b"] = Instance.new("Frame", Library["10"]);
Library["1b"]["BorderSizePixel"] = 0;
Library["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Library["1b"]["Size"] = UDim2.new(0, 400, 0, 30);
Library["1b"]["Position"] = UDim2.new(0, 0, 0.51502, 0);
Library["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["1b"]["Name"] = [[Button]];
Library["1b"]["BackgroundTransparency"] = 1;

-- StarterGui.NathubLibrary.Holder.One.Container.Button.Title
Library["1c"] = Instance.new("TextLabel", Library["1b"]);
Library["1c"]["BorderSizePixel"] = 0;
Library["1c"]["TextSize"] = 14;
Library["1c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
Library["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
Library["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Library["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
Library["1c"]["BackgroundTransparency"] = 1;
Library["1c"]["Size"] = UDim2.new(0, 186, 0, 30);
Library["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["1c"]["Text"] = Title;
Library["1c"]["Name"] = [[Title]];
Library["1c"]["Position"] = UDim2.new(0.16, 0, 0, 0);


-- StarterGui.NathubLibrary.Holder.One.Container.Button.Button
Library["1d"] = Instance.new("ImageButton", Library["1b"]);
Library["1d"]["BorderSizePixel"] = 0;
Library["1d"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
Library["1d"]["Image"] = [[rbxassetid://10734898355]];
Library["1d"]["Size"] = UDim2.new(0, 20, 0, 20);
Library["1d"]["BackgroundTransparency"] = 1;
Library["1d"]["Name"] = [[Button]];
Library["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
Library["1d"]["Position"] = UDim2.new(0.805, 0, 0.13367, 0);
Library["1d"].MouseButton1Click:Connect(function()
	pcall(Callback)
end)

end
return Library["1"], require;
