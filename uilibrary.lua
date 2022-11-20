local module = {}
function module:NewWindow(nam)
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local TabButtons = Instance.new("ScrollingFrame")
	local Frame_2 = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local PageFolder = Instance.new("Folder")
	
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.343295008, 0, 0.348101288, 0)
	Frame.Size = UDim2.new(0, 445, 0, 26)
	
	PageFolder.Name = "PageFolder"
	PageFolder.Parent = Frame_2
	Frame_2.Parent = Frame
	Frame_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0, 0, 0.996104896, 0)
	Frame_2.Size = UDim2.new(0, 445, 0, 238)
	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TextLabel.Position = UDim2.new(0.711744189, 0, 0.153845549, 0)
	TextLabel.Size = UDim2.new(0, 110, 0, 18)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = nam
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 14.000
	TabButtons.Parent = Frame_2
	TabButtons.Active = true
	TabButtons.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	TabButtons.BorderSizePixel = 0
	TabButtons.Size = UDim2.new(0, 133, 0, 238)
	TabButtons.ScrollBarThickness = 0
	UIListLayout.Parent = TabButtons
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)
	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		dragSpeed = 0.15
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	dragify(Frame)

	
	local yeshaha = {}
	function yeshaha:Tab(lol)
		local yeslolhaha = Instance.new("ScrollingFrame")
		local TextButton = Instance.new("TextButton")
		local UIListLayout_2 = Instance.new("UIListLayout")
		yeslolhaha.Name = lol
		yeslolhaha.Parent = PageFolder
		yeslolhaha.Active = true
		yeslolhaha.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		yeslolhaha.BackgroundTransparency = 1.000
		yeslolhaha.BorderSizePixel = 0
		yeslolhaha.Position = UDim2.new(0.298144519, 0, 0.075630255, 0)
		yeslolhaha.Size = UDim2.new(0, 312, 0, 220)
		yeslolhaha.ScrollBarThickness = 3
		yeslolhaha.Visible = false
		TextButton.Parent = TabButtons
		TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(0.0902255625, 0, 0, 0)
		TextButton.Size = UDim2.new(0, 109, 0, 32)
		TextButton.Font = Enum.Font.GothamBold
		TextButton.Text = lol
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 15.000

		UIListLayout_2.Parent = yeslolhaha
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 4)
		TextButton.MouseButton1Click:Connect(function()
			for i,a in pairs(PageFolder:GetChildren()) do
				if a:IsA("ScrollingFrame") then
					a.Visible = false
				end
				yeslolhaha.Visible = true
			end
		end)
		
		local TabFunctions = {}
		function TabFunctions:Button(namlol, callback)
			local ExampleButton = Instance.new("TextButton")
			ExampleButton.Name = namlol
			ExampleButton.Parent = yeslolhaha
			ExampleButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			ExampleButton.BorderSizePixel = 0
			callback = callback or nil
			ExampleButton.Position = UDim2.new(0.179487184, 0, 0, 0)
			ExampleButton.Size = UDim2.new(0, 278, 0, 26)
			ExampleButton.Font = Enum.Font.GothamBold
			ExampleButton.Text = namlol
			ExampleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			ExampleButton.TextSize = 14.000
			
			ExampleButton.MouseButton1Click:Connect(function()
				callback()
			end)
		end
		function TabFunctions:Toggle(yesig, callback)
			value = false
			local ToggleLabel = Instance.new("TextLabel")
			local ToggleButton = Instance.new("TextButton")
			ToggleLabel.Parent = yeslolhaha
			ToggleLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			ToggleLabel.BorderSizePixel = 0
			ToggleLabel.Position = UDim2.new(-0.051282052, 0, 0.0340909101, 0)
			ToggleLabel.Size = UDim2.new(0, 278, 0, 26)
			ToggleLabel.Font = Enum.Font.GothamBold
			ToggleLabel.Text = "  "..yesig
			ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleLabel.TextSize = 14.000
			ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
            callback = callback or nil
			ToggleButton.Parent = ToggleLabel
			ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			ToggleButton.BorderSizePixel = 0
			ToggleButton.Position = UDim2.new(0.877697825, 0, 0.115384623, 0)
			ToggleButton.Size = UDim2.new(0, 23, 0, 19)
			ToggleButton.Font = Enum.Font.SourceSans
			ToggleButton.Text = ""
			ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToggleButton.TextSize = 14.000
			
			ToggleButton.MouseButton1Click:Connect(function()
				value = not value 
				callback(value)
				if value then
					game.TweenService:Create(ToggleButton, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					}):Play()
					
				else
					game.TweenService:Create(ToggleButton, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					}):Play()
					
				end
			end)
			
		end
		function TabFunctions:Label(text)
			local TextLabel_3 = Instance.new("TextLabel")
			TextLabel_3.Parent = yeslolhaha
			TextLabel_3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			TextLabel_3.BorderSizePixel = 0
			TextLabel_3.BackgroundTransparency = 1
			TextLabel_3.Position = UDim2.new(-0.051282052, 0, 0.0340909101, 0)
			TextLabel_3.Size = UDim2.new(0, 278, 0, 26)
			TextLabel_3.Font = Enum.Font.GothamBold
			TextLabel_3.Text = "  "..text
			TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_3.TextSize = 14.000
		end
		return TabFunctions
	end
	return yeshaha
	
end
return module
