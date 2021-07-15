--Is this clean? no. do i care? no
local function round(number, decimalPlaces)
	return math.round(number * 10^decimalPlaces) * 10^-decimalPlaces
end
local ScellepLibrary = {}
function ScellepLibrary:CreateWindow(gameNameVar)
	local ScellepUi = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local GameName = Instance.new("TextLabel")
	local Tabs = Instance.new("Frame")
	local Containers = Instance.new("Frame")
	local TabGrid = Instance.new("UIGridLayout")
	local tabs = 0 
	ScellepUi.Name = "ScellepUi"
	ScellepUi.Parent = game.CoreGui
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = ScellepUi
	MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
	MainFrame.BorderSizePixel = 5
	MainFrame.Position = UDim2.new(0.0921397358, 0, 0.0671217293, 0)
	MainFrame.Size = UDim2.new(0, 706, 0, 656)
	MainFrame.Active = true
	MainFrame.Draggable = true
	GameName.Name = "GameName"
	GameName.Parent = MainFrame
	GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GameName.BackgroundTransparency = 1.000
	GameName.Size = UDim2.new(0, 154, 0, 28)
	GameName.Font = Enum.Font.SourceSans
	GameName.Text = gameNameVar
	GameName.TextColor3 = Color3.fromRGB(33, 106, 88)
	GameName.TextSize = 30.000
	GameName.TextXAlignment = Enum.TextXAlignment.Left
	Tabs.Name = "Tabs"
	Tabs.Parent = MainFrame
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.Position = UDim2.new(0.242519692, 0, 0, 0)
	Tabs.Size = UDim2.new(0, 480, 0, 28)
	TabGrid.Name = "TabGrid"
	TabGrid.Parent = Tabs
	TabGrid.SortOrder = Enum.SortOrder.LayoutOrder
	TabGrid.CellSize = UDim2.new(0, 88, 0, 26)
	Containers.Name = "Containers"
	Containers.Parent = MainFrame
	Containers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Containers.BackgroundTransparency = 1.000
	Containers.Position = UDim2.new(0, 0, 0.0426829271, 0)
	Containers.Size = UDim2.new(1, 0, 0.957317054, 0)
	local LibFunctions = {}

	function LibFunctions:CreateTab(tabName)
	    tabs=tabs + 1
		local MainTab = Instance.new("TextButton")
		local SelectedTabLabel = Instance.new("TextLabel")
		local TabContainer = Instance.new("Frame")
		MainTab.Name = "Main"..tabName
		MainTab.Parent = Tabs
		MainTab.BackgroundColor3 = Color3.fromRGB(129, 245, 191)
		MainTab.BackgroundTransparency = 1.000
		MainTab.BorderSizePixel = 0
		MainTab.Position = UDim2.new(-0.128289476, 0, 0, 0)
		MainTab.Size = UDim2.new(0, 88, 0, 26)
		MainTab.Font = Enum.Font.Nunito
		MainTab.Text = tabName
		MainTab.TextColor3 = Color3.fromRGB(33, 106, 88)
		MainTab.TextSize = 20.000
		SelectedTabLabel.Name = "SelectedTabLabel"
		SelectedTabLabel.Parent = MainTab
		SelectedTabLabel.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
		SelectedTabLabel.BorderSizePixel = 0
		SelectedTabLabel.Position = UDim2.new(0, 0, 1, 0)
		if tabs > 1 then
    		SelectedTabLabel.Size = UDim2.new(0, 0, 0, 2)
		else
		    SelectedTabLabel.Size = UDim2.new(1, 0, 0, 2)
		end
		SelectedTabLabel.Font = Enum.Font.SourceSans
		SelectedTabLabel.Text = ""
		SelectedTabLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
		SelectedTabLabel.TextSize = 14.000
		TabContainer.Name = tabName.."Container"
		TabContainer.Parent = Containers
		TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabContainer.BackgroundTransparency = 1.000
		TabContainer.Size = UDim2.new(1, 0, 1, 0)
		if tabs > 1 then
    		TabContainer.Visible = false
		end
		local function SelectAnim(obj)
			local willTween = obj:TweenSize(
				UDim2.new(1, 0, 0, 2),  
				Enum.EasingDirection.In,    
				Enum.EasingStyle.Sine,      
				0.2,                         
				true  
			)
		end
		local function DeSelectAnim(obj)
			local willTween = obj:TweenSize(
				UDim2.new(0, 0, 0, 2),  
				Enum.EasingDirection.In,    
				Enum.EasingStyle.Sine,      
				0.2,                         
				true  
			)
		end
		MainTab.MouseButton1Down:connect(function()
			for i, v in ipairs(MainTab.Parent:GetChildren()) do 
				if v.Name ~= "TabGrid" then 
					local Rname = v.Name:sub(5, #v.Name)
					local realTab = Containers:FindFirstChild(Rname.."Container")
					if realTab then realTab.Visible = false end
					if v:FindFirstChild("SelectedTabLabel").AbsoluteSize.X > 0 then 
						DeSelectAnim(v:FindFirstChild("SelectedTabLabel"))
					end
				end
			end
			if MainTab:FindFirstChild("SelectedTabLabel").AbsoluteSize.X == 0 then 
				SelectAnim(MainTab:FindFirstChild("SelectedTabLabel"))
			end
			local realTab = Containers:FindFirstChild(tabName.."Container")
			if realTab then realTab.Visible = true end
		end)
	end
	function LibFunctions:newSection(tabName, sectionName)
		local TabTestSection = Instance.new("TextLabel")
		local SectionCorner = Instance.new("UICorner")
		local MainSection = Instance.new("TextLabel")
		local MainSectionCorner = Instance.new("UICorner")
		local SectionName = Instance.new("TextLabel")
		local MainSectionList = Instance.new("UIListLayout")
		TabTestSection.Name = tabName..sectionName
		local count = 0 
		for i, v in ipairs(Containers:FindFirstChild(tabName.."Container"):GetChildren()) do 
		    count = count + 1    
		end
		local xPos = count * 240
		local yPlus = 0 
		while xPos >= 720 do
		    xPos = xPos - 720 
		    print(xPos)
             yPlus = yPlus + 1 
		end
		local children = Containers:FindFirstChild(tabName.."Container"):GetChildren()
		TabTestSection.Parent = Containers:FindFirstChild(tabName.."Container")
		TabTestSection.BackgroundColor3 = Color3.fromRGB(202, 231, 241)
		TabTestSection.BorderSizePixel = 0
		TabTestSection.Position = UDim2.new(0, xPos, 0.0175159238, 180 * yPlus)
		TabTestSection.Size = UDim2.new(0, 225, 0, 26)
		TabTestSection.Font = Enum.Font.SourceSans
		TabTestSection.Text = ""
		TabTestSection.TextColor3 = Color3.fromRGB(0, 0, 0)
		TabTestSection.TextSize = 14.000
		SectionCorner.Name = "SectionCorner"
		SectionCorner.Parent = TabTestSection
		MainSection.Name = "MainSection"
		MainSection.Parent = TabTestSection
		MainSection.BackgroundColor3 = Color3.fromRGB(202, 231, 241)
		MainSection.BackgroundTransparency = 1.000
		MainSection.BorderSizePixel = 0
		MainSection.Position = UDim2.new(0, 5, 0, 1)
		MainSection.Size = UDim2.new(1, -5, 1, -5)
		MainSection.Font = Enum.Font.SourceSans
		MainSection.Text = ""
		MainSection.TextColor3 = Color3.fromRGB(0, 0, 0)
		MainSection.TextSize = 14.000
		MainSectionCorner.Name = "MainSectionCorner"
		MainSectionCorner.Parent = MainSection
		SectionName.Name = "SectionName"
		SectionName.Parent = MainSection
		SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SectionName.BackgroundTransparency = 1.000
		SectionName.Position = UDim2.new(0.0310000274, 5, 0, 0)
		SectionName.Size = UDim2.new(0, 213, 0, 23)
		SectionName.Font = Enum.Font.Nunito
		SectionName.Text = sectionName
		SectionName.TextColor3 = Color3.fromRGB(33, 106, 88)
		SectionName.TextSize = 20.000
		SectionName.TextXAlignment = Enum.TextXAlignment.Left
		MainSectionList.Name = "MainSectionList"
		MainSectionList.Parent = MainSection
		MainSectionList.SortOrder = Enum.SortOrder.LayoutOrder
		MainSectionList.Padding = UDim.new(0, 5)
	end
	function LibFunctions:newButton(tabName, sectionName, buttonTxt, buttonFunc)
		local ExampleButton = Instance.new("TextButton")
		local ButtonCorner = Instance.new("UICorner")
		ExampleButton.Name = "ExampleButton"
		ExampleButton.Parent = Containers:FindFirstChild(tabName.."Container"):FindFirstChild(tabName..sectionName).MainSection
		ExampleButton.BackgroundColor3 = Color3.fromRGB(205, 234, 255)
		ExampleButton.Size = UDim2.new(0, 213, 0, 29)
		ExampleButton.AutoButtonColor = false
		ExampleButton.Font = Enum.Font.Nunito
		ExampleButton.Text = buttonTxt
		ExampleButton.TextColor3 = Color3.fromRGB(30, 106, 88)
		ExampleButton.TextSize = 20.000
		ButtonCorner.Name = "ButtonCorner"
		ButtonCorner.Parent = ExampleButton
		local count = 0 
		for i,v in ipairs(ExampleButton.Parent:GetChildren()) do
			count = count + 1 
		end
		count = count - 3
		ExampleButton.Parent.Parent.Size = UDim2.new(0,225,0,26 + (35.25 * count) + 5)
		ExampleButton.MouseButton1Click:Connect(function()
			pcall(buttonFunc)
		end)
	end
	function LibFunctions:newTextBox(tabName, sectionName, labelTxt, func)
		local ExampleTextBox = Instance.new("TextLabel")
		local MainTextBox = Instance.new("TextBox")
		ExampleTextBox.Name = "ExampleTextBox"
		ExampleTextBox.Parent = Containers:FindFirstChild(tabName.."Container"):FindFirstChild(tabName..sectionName).MainSection
		ExampleTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ExampleTextBox.BackgroundTransparency = 1.000
		ExampleTextBox.Position = UDim2.new(0, 0, 0.337662339, 0)
		ExampleTextBox.Size = UDim2.new(0, 128, 0, 29)
		ExampleTextBox.Font = Enum.Font.Nunito
		ExampleTextBox.Text = labelTxt
		ExampleTextBox.TextColor3 = Color3.fromRGB(30, 106, 88)
		ExampleTextBox.TextSize = 20.000
		ExampleTextBox.TextXAlignment = Enum.TextXAlignment.Left
		MainTextBox.Name = "MainTextBox"
		MainTextBox.Parent = ExampleTextBox
		MainTextBox.BackgroundColor3 = Color3.fromRGB(233, 249, 255)
		MainTextBox.BorderSizePixel = 0
		MainTextBox.Position = UDim2.new(1, 0, 0, 0)
		MainTextBox.Size = UDim2.new(0, 85, 0, 29)
		MainTextBox.Font = Enum.Font.Nunito
		MainTextBox.PlaceholderText = "Type Here"
		MainTextBox.Text = ""
		MainTextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
		MainTextBox.TextSize = 14.000
		MainTextBox.TextWrapped = true
		local count = 0 
		for i,v in ipairs(ExampleTextBox.Parent:GetChildren()) do
			count = count + 1 
		end
		count = count - 3
		ExampleTextBox.Parent.Parent.Size = UDim2.new(0,225,0,26 + (35.25 * count) + 5)
		MainTextBox.Changed:connect(function()
			pcall(func(MainTextBox.Text))
		end)
	end
	function LibFunctions:newToggle(tabName, sectionName, labelTxt, onFunc, offFunc)
		local ExampleToggle = Instance.new("TextLabel")
		local ToggleBG = Instance.new("ImageLabel")
		local MainToggle = Instance.new("ImageLabel")
		local ToggleDetector = Instance.new("TextButton")
		local TweenService = game:GetService("TweenService")
		ExampleToggle.Name = "ExampleToggle"
		ExampleToggle.Parent = Containers:FindFirstChild(tabName.."Container"):FindFirstChild(tabName..sectionName).MainSection
		ExampleToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ExampleToggle.BackgroundTransparency = 1.000
		ExampleToggle.Position = UDim2.new(0, 0, 0.337662339, 0)
		ExampleToggle.Size = UDim2.new(0, 128, 0, 29)
		ExampleToggle.Font = Enum.Font.Nunito
		ExampleToggle.Text = " "..labelTxt
		ExampleToggle.TextColor3 = Color3.fromRGB(30, 106, 88)
		ExampleToggle.TextSize = 20.000
		ExampleToggle.TextXAlignment = Enum.TextXAlignment.Left
		ToggleBG.Name = "ToggleBG"
		ToggleBG.Parent = ExampleToggle
		ToggleBG.AnchorPoint = Vector2.new(0.5, 0.5)
		ToggleBG.BackgroundColor3 = Color3.fromRGB(233, 249, 255)
		ToggleBG.BackgroundTransparency = 1.000
		ToggleBG.Position = UDim2.new(1.33203125, 0, 0.5, 0)
		ToggleBG.Size = UDim2.new(0.6640625, 0, 1, 0)
		ToggleBG.Image = "rbxassetid://3570695787"
		ToggleBG.ImageColor3 = Color3.fromRGB(233, 249, 255)
		ToggleBG.ScaleType = Enum.ScaleType.Slice
		ToggleBG.SliceCenter = Rect.new(100, 100, 100, 100)
		ToggleBG.SliceScale = 0.120
		MainToggle.Name = "MainToggle"
		MainToggle.Parent = ExampleToggle
		MainToggle.AnchorPoint = Vector2.new(0.5, 0.5)
		MainToggle.BackgroundColor3 = Color3.fromRGB(233, 249, 255)
		MainToggle.BackgroundTransparency = 1.000
		MainToggle.Position = UDim2.new(1.1640625, 0, 0.5, 0)
		MainToggle.Size = UDim2.new(0.328125, 0, 1, 0)
		MainToggle.Image = "rbxassetid://3570695787"
		MainToggle.ImageColor3 = Color3.fromRGB(176, 211, 255)
		MainToggle.ScaleType = Enum.ScaleType.Slice
		MainToggle.SliceCenter = Rect.new(100, 100, 100, 100)
		MainToggle.SliceScale = 0.120
		ToggleDetector.Name = "ToggleDetector"
		ToggleDetector.Parent = ExampleToggle
		ToggleDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ToggleDetector.BackgroundTransparency = 1.000
		ToggleDetector.Position = UDim2.new(1, 0, 0, 0)
		ToggleDetector.Size = UDim2.new(0, 84, 0, 29)
		ToggleDetector.Font = Enum.Font.SourceSans
		ToggleDetector.Text = ""
		ToggleDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
		ToggleDetector.TextSize = 14.000
		local isEnabled = false
		local count = 0 
		for i,v in ipairs(ExampleToggle.Parent:GetChildren()) do
			count = count + 1 
		end
		count = count - 3
		ExampleToggle.Parent.Parent.Size = UDim2.new(0,225,0,26 + (35.25 * count) + 5)

		ToggleDetector.MouseButton1Down:connect(function()
			isEnabled = not isEnabled
			if isEnabled then
				local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
				local tween = TweenService:Create(MainToggle, tweenInfo, {Position=UDim2.new(1.5, 0,0.5, 0)})
				tween:Play()
				pcall(onFunc)
			else
				local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
				local tween = TweenService:Create(MainToggle, tweenInfo, {Position=UDim2.new(1.1640625, 0, 0.5, 0)})
				tween:Play()
				pcall(offFunc)
			end
		end)
	end
	function LibFunctions:newSlider(tabName, sectionName, labelTxt, max, min, roundAmount, func)
		max=max-min
		print(max)
		local ExampleSlider = Instance.new("TextLabel")
		local SliderBG = Instance.new("TextLabel")
		local SliderBGCorner = Instance.new("UICorner")
		local SliderAmountLabel = Instance.new("TextLabel")
		local MainSlider = Instance.new("TextLabel")
		local SliderCorner = Instance.new("UICorner")
		local SliderDector = Instance.new("TextButton")
		local UserInputService = game:GetService("UserInputService")
		ExampleSlider.Name = "ExampleSlider"
		ExampleSlider.Parent = Containers:FindFirstChild(tabName.."Container"):FindFirstChild(tabName..sectionName).MainSection
		ExampleSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ExampleSlider.BackgroundTransparency = 1.000
		ExampleSlider.Position = UDim2.new(0, 0, 0.623376608, 0)
		ExampleSlider.Size = UDim2.new(0, 79, 0, 29)
		ExampleSlider.Font = Enum.Font.Nunito
		ExampleSlider.Text = labelTxt
		ExampleSlider.TextColor3 = Color3.fromRGB(30, 106, 88)
		ExampleSlider.TextSize = 20.000
		ExampleSlider.TextXAlignment = Enum.TextXAlignment.Left
		SliderBG.Name = "SliderBG"
		SliderBG.Parent = ExampleSlider
		SliderBG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SliderBG.BorderSizePixel = 0
		SliderBG.Position = UDim2.new(1.06329107, 0, 0.413793117, 0)
		SliderBG.Size = UDim2.new(0, 128, 0, 5)
		SliderBG.Font = Enum.Font.SourceSans
		SliderBG.Text = ""
		SliderBG.TextColor3 = Color3.fromRGB(0, 0, 0)
		SliderBG.TextSize = 14.000
		SliderBGCorner.Name = "SliderBGCorner"
		SliderBGCorner.Parent = SliderBG
		SliderAmountLabel.Name = "SliderAmountLabel"
		SliderAmountLabel.Parent = ExampleSlider
		SliderAmountLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SliderAmountLabel.BackgroundTransparency = 1.000
		SliderAmountLabel.Position = UDim2.new(0, 0, -0.172413796, 0)
		SliderAmountLabel.Size = UDim2.new(0, 212, 0, 17)
		SliderAmountLabel.Font = Enum.Font.SourceSans
		SliderAmountLabel.Text = tostring(min)
		SliderAmountLabel.TextColor3 = Color3.fromRGB(30, 106, 88)
		SliderAmountLabel.TextSize = 20.000
		SliderAmountLabel.TextXAlignment = Enum.TextXAlignment.Right
		MainSlider.Name = "MainSlider"
		MainSlider.Parent = ExampleSlider
		MainSlider.BackgroundColor3 = Color3.fromRGB(176, 211, 255)
		MainSlider.BorderSizePixel = 0
		MainSlider.Position = UDim2.new(1.06329107, 0, 0.413793117, 0)
		MainSlider.Size = UDim2.new(0, 0, 0, 5)
		MainSlider.Font = Enum.Font.SourceSans
		MainSlider.Text = ""
		MainSlider.TextColor3 = Color3.fromRGB(0, 0, 0)
		MainSlider.TextSize = 14.000
		SliderCorner.Name = "SliderCorner"
		SliderCorner.Parent = MainSlider
		SliderDector.Name = "SliderDector"
		SliderDector.Parent = ExampleSlider
		SliderDector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SliderDector.BackgroundTransparency = 1.000
		SliderDector.Position = UDim2.new(1.06329119, 0, 0.413793117, 0)
		SliderDector.Size = UDim2.new(0, 128, 0, 5)
		SliderDector.Font = Enum.Font.SourceSans
		SliderDector.Text = ""
		SliderDector.TextColor3 = Color3.fromRGB(0, 0, 0)
		SliderDector.TextSize = 14.000
		local holdingSlider = false
		local count = 0 
		for i,v in ipairs(ExampleSlider.Parent:GetChildren()) do
			count = count + 1 
		end
		count = count - 3
		ExampleSlider.Parent.Parent.Size = UDim2.new(0,225,0,26 + (35.25 * count) + 5)
		SliderDector.MouseButton1Down:connect(function()
			holdingSlider = true
		end)
		SliderDector.MouseButton1Up:connect(function()
			holdingSlider = false
		end)
		local function onInputEnded(input, gameProcessed)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				holdingSlider = false 
			end
		end
		UserInputService.InputEnded:Connect(onInputEnded)
		local mouse = game.Players.LocalPlayer:GetMouse()

		game:GetService("RunService").RenderStepped:Connect(function(step)
			if holdingSlider then 
				local mouseX = mouse.X   
				if MainSlider.AbsolutePosition.X < mouseX then
					local localMouseX = (mouseX - MainSlider.AbsolutePosition.X)
					if localMouseX < SliderBG.AbsoluteSize.X + 1 then
						MainSlider.Size = UDim2.new(0, localMouseX, 0, SliderBG.AbsoluteSize.Y)
						local maxSize = SliderBG.AbsoluteSize.X
						local size = localMouseX
						local num = max * (size / maxSize)
						num = round(num, roundAmount)
						num = num + min
						SliderAmountLabel.Text = tostring(num)
						func(num)
					end
				end
			end
		end)

	end
    game:GetService("UserInputService").InputBegan:connect(function(input,proc)
    if not proc and input.KeyCode == Enum.KeyCode.RightControl then
        MainFrame.Visible = not MainFrame.Visible
    end
end)
	return LibFunctions
end
return ScellepLibrary

