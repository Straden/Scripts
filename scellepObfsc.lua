local scellepLib = {}
function scellepLib:Init(gn)
	local UserInputService = game:GetService("UserInputService")
	local ScellepHub = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local Containers = Instance.new("Frame")
	local GameName = Instance.new("TextLabel")
	local Divider = Instance.new("TextLabel")
	local Tabs = Instance.new("Frame")
	local TabsListUI = Instance.new("UIListLayout")
	local tabs = 0
	ScellepHub.Name = "ScellepHub"
	ScellepHub.Parent = game.CoreGui
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = ScellepHub
	MainFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	MainFrame.BorderColor3 = Color3.fromRGB(31, 31, 31)
	MainFrame.BorderSizePixel = 5
	MainFrame.Position = UDim2.new(0.404147118, 0, 0.219707042, 0)
	MainFrame.Size = UDim2.new(0, 343, 0, 420)
	MainFrame.Active = true
	MainFrame.Draggable = true
	Containers.Name = "Containers"
	Containers.Parent = MainFrame
	Containers.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	Containers.BackgroundTransparency = 1.000
	Containers.BorderColor3 = Color3.fromRGB(31, 31, 31)
	Containers.BorderSizePixel = 5
	Containers.Position = UDim2.new(-0.00239091436, 0, 0.0857142881, 0)
	Containers.Size = UDim2.new(0, 235, 0, 383)
	GameName.Name = "GameName"
	GameName.Parent = MainFrame
	GameName.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
	GameName.BackgroundTransparency = 1.000
	GameName.Position = UDim2.new(0, 0, -0.000370933907, 0)
	GameName.Size = UDim2.new(0, 218, 0, 28)
	GameName.Font = Enum.Font.Nunito
	GameName.Text = gn
	GameName.TextColor3 = Color3.fromRGB(255, 255, 255)
	GameName.TextSize = 20.000
	GameName.TextXAlignment = Enum.TextXAlignment.Left
	GameName.TextYAlignment = Enum.TextYAlignment.Top
	Divider.Name = "Divider"
	Divider.Parent = MainFrame
	Divider.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
	Divider.BorderColor3 = Color3.fromRGB(255, 171, 173)
	Divider.BorderSizePixel = 0
	Divider.Position = UDim2.new(0.681999981, -10, 0, -5)
	Divider.Size = UDim2.new(0, 2, 1, 10)
	Divider.Font = Enum.Font.SourceSans
	Divider.Text = ""
	Divider.TextColor3 = Color3.fromRGB(0, 0, 0)
	Divider.TextSize = 14.000
	Tabs.Name = "Tabs"
	Tabs.Parent = MainFrame
	Tabs.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	Tabs.BackgroundTransparency = 1.000
	Tabs.BorderColor3 = Color3.fromRGB(31, 31, 31)
	Tabs.BorderSizePixel = 5
	Tabs.Position = UDim2.new(0.682740271, 0, -0.000370933907, 0)
	Tabs.Size = UDim2.new(0, 108, 0, 420)
	TabsListUI.Name = "TabsListUI"
	TabsListUI.Parent = Tabs
	TabsListUI.SortOrder = Enum.SortOrder.LayoutOrder
	TabsListUI.Padding = UDim.new(0, 5)
	function onKeyPress(actionName, userInputState, inputObject)
	    if userInputState == Enum.UserInputState.Begin then
		MainFrame.Visible = not MainFrame.Visible
	    end
	end
	game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.RightShift)
	local loaderFuncs = {}
	function loaderFuncs:newTab(tn)
		local TabContainer = Instance.new("ScrollingFrame")
		local ContainerListUi = Instance.new("UIListLayout")
		local TabBtn = Instance.new("TextButton")
		local TabCorner = Instance.new("UICorner")
		TabContainer.Name = tn.."Container"
		TabContainer.Parent = Containers
		TabContainer.Active = true
		TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabContainer.BackgroundTransparency = 1.000
		TabContainer.BorderSizePixel = 0
		TabContainer.Position = UDim2.new(0, 0, 0.00260416674, 0)
		TabContainer.Size = UDim2.new(0, 227, 0, 384)
		TabContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
		TabContainer.ScrollBarImageTransparency = 1
		tabs = tabs + 1 
		if tabs > 1 then TabContainer.Visible = false end
		ContainerListUi.Name = "ContainerListUi"
		ContainerListUi.Parent = TabContainer
		ContainerListUi.SortOrder = Enum.SortOrder.LayoutOrder
		ContainerListUi.Padding = UDim.new(0, 5)
		TabBtn.Name = tn.."Main"
		TabBtn.Parent = Tabs
		TabBtn.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
		TabBtn.Size = UDim2.new(0, 108, 0, 28)
		TabBtn.Font = Enum.Font.Nunito
		TabBtn.Text = tn
		TabBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
		TabBtn.TextSize = 20.000
		TabBtn.AutoButtonColor = false
		TabCorner.Name = "TabCorner"
		TabCorner.Parent = TabBtn
		TabBtn.MouseButton1Down:connect(function()
			for i, v in ipairs(Containers:GetChildren()) do 
				if v ~= TabContainer then v.Visible = false end
			end
			TabContainer.Visible = true
		end)
		return TabContainer
	end
	function loaderFuncs:newLabel(tab, labelTxt)
		local ExampleLabel = Instance.new("TextLabel")
		local LabelCorner = Instance.new("UICorner")
		ExampleLabel.Name = "ExampleLabel"
		ExampleLabel.Parent = tab
		ExampleLabel.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
		ExampleLabel.BackgroundTransparency = 1.000
		ExampleLabel.Size = UDim2.new(0, 218, 0, 22)
		ExampleLabel.Font = Enum.Font.Nunito
		ExampleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		ExampleLabel.TextSize = 20.000
		ExampleLabel.Text = labelTxt
		LabelCorner.Name = "LabelCorner"
		LabelCorner.Parent = ExampleLabel
		tab.CanvasSize = UDim2.new(0, 0, 0, tab.ContainerListUi.AbsoluteContentSize.Y)
	end
	function loaderFuncs:newButton(tab, labelTxt,func)
		local ExampleButton = Instance.new("TextButton")
		local ButtonCorner = Instance.new("UICorner")
		ExampleButton.Name = "ExampleButton"
		ExampleButton.Parent = tab
		ExampleButton.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
		ExampleButton.Size = UDim2.new(0, 218, 0, 22)
		ExampleButton.AutoButtonColor = false
		ExampleButton.Font = Enum.Font.Nunito
		ExampleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		ExampleButton.TextSize = 20.000
		ExampleButton.Text = labelTxt
		ExampleButton.MouseButton1Down:connect(function()pcall(func) end)
		ButtonCorner.Name = "ButtonCorner"
		ButtonCorner.Parent = ExampleButton
		tab.CanvasSize = UDim2.new(0, 0, 0, tab.ContainerListUi.AbsoluteContentSize.Y)
	end
	function loaderFuncs:newTextbox(tab, labelTxt, placeHolder, func)
		local ExampleTextbox = Instance.new("TextLabel")
		local TextboxLabelCorner = Instance.new("UICorner")
		local MainTextbox = Instance.new("TextBox")
		ExampleTextbox.Name = "ExampleTextbox"
		ExampleTextbox.Parent = tab
		ExampleTextbox.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
		ExampleTextbox.BackgroundTransparency = 1.000
		ExampleTextbox.Position = UDim2.new(0, 0, 0.140625, 0)
		ExampleTextbox.Size = UDim2.new(0, 76, 0, 22)
		ExampleTextbox.Font = Enum.Font.Nunito
		ExampleTextbox.Text = labelTxt
		ExampleTextbox.TextColor3 = Color3.fromRGB(255, 255, 255)
		ExampleTextbox.TextSize = 20.000
		ExampleTextbox.TextXAlignment = Enum.TextXAlignment.Left
		TextboxLabelCorner.Name = "TextboxLabelCorner"
		TextboxLabelCorner.Parent = ExampleTextbox
		MainTextbox.Name = "MainTextbox"
		MainTextbox.Parent = ExampleTextbox
		MainTextbox.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
		MainTextbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
		MainTextbox.Position = UDim2.new(1.43246543, 0, 0, 0)
		MainTextbox.Size = UDim2.new(0, 100, 0, 22)
		MainTextbox.Font = Enum.Font.SourceSans
		MainTextbox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
		MainTextbox.PlaceholderText = placeHolder
		MainTextbox.Text = ""
		MainTextbox.TextColor3 = Color3.fromRGB(0, 0, 0)
		MainTextbox.TextSize = 14.000
		MainTextbox.Changed:connect(function()
			pcall(func(MainTextbox.Text))
		end)
	end
	function loaderFuncs:newToggle(tab, labelTxt, onFunc, offFunc)
		local ToggleExample = Instance.new("TextLabel")
		local ToggleLabelCorner = Instance.new("UICorner")
		local ToggleBG = Instance.new("TextLabel")
		local ToggleBGCorner = Instance.new("UICorner")
		local MainToggle = Instance.new("ImageLabel")
		local ToggleDetector = Instance.new("TextButton")
		ToggleExample.Name = "ToggleExample"
		ToggleExample.Parent = tab
		ToggleExample.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
		ToggleExample.BackgroundTransparency = 1.000
		ToggleExample.Position = UDim2.new(0, 0, 0.140625, 0)
		ToggleExample.Size = UDim2.new(0, 76, 0, 22)
		ToggleExample.Font = Enum.Font.Nunito
		ToggleExample.Text = labelTxt
		ToggleExample.TextColor3 = Color3.fromRGB(255, 255, 255)
		ToggleExample.TextSize = 20.000
		ToggleExample.TextXAlignment = Enum.TextXAlignment.Left
		ToggleLabelCorner.Name = "ToggleLabelCorner"
		ToggleLabelCorner.Parent = ToggleExample
		ToggleBG.Name = "ToggleBG"
		ToggleBG.Parent = ToggleExample
		ToggleBG.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
		ToggleBG.Position = UDim2.new(0.998254895, 0, 0, 0)
		ToggleBG.Size = UDim2.new(0, 66, 0, 22)
		ToggleBG.Font = Enum.Font.Nunito
		ToggleBG.Text = ""
		ToggleBG.TextColor3 = Color3.fromRGB(255, 255, 255)
		ToggleBG.TextSize = 20.000
		ToggleBGCorner.Name = "ToggleBGCorner"
		ToggleBGCorner.Parent = ToggleBG
		MainToggle.Name = "MainToggle"
		MainToggle.Parent = ToggleBG
		MainToggle.AnchorPoint = Vector2.new(0.5, 0.5)
		MainToggle.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
		MainToggle.BackgroundTransparency = 1.000
		MainToggle.Position = UDim2.new(0.25, 0, 0.5, 0)
		MainToggle.Size = UDim2.new(0.5, 0, 1, 0)
		MainToggle.Image = "rbxassetid://3570695787"
		MainToggle.ImageColor3 = Color3.fromRGB(255, 171, 173)
		MainToggle.ScaleType = Enum.ScaleType.Slice
		MainToggle.SliceCenter = Rect.new(100, 100, 100, 100)
		MainToggle.SliceScale = 0.120
		ToggleDetector.Name = "ToggleDetector"
		ToggleDetector.Parent = ToggleExample
		ToggleDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ToggleDetector.BackgroundTransparency = 1.000
		ToggleDetector.Position = UDim2.new(1, 0, 0, 0)
		ToggleDetector.Size = UDim2.new(0, 72, 0, 22)
		ToggleDetector.Font = Enum.Font.SourceSans
		ToggleDetector.Text = ""
		ToggleDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
		ToggleDetector.TextSize = 14.000
		local toggled = false
		ToggleDetector.MouseButton1Down:connect(function()
			if not toggled then
				local willTween = MainToggle:TweenPosition(
					UDim2.new(0.75,0,0.5,0),
					Enum.EasingDirection.In,  
					Enum.EasingStyle.Sine,     
					0.1,                          
					true,                       
					nil                                         
				)
				pcall(onFunc)
				toggled = not toggled
			else 
				toggled = not toggled
				local willTween = MainToggle:TweenPosition(
					UDim2.new(0.25,0,0.5,0),
					Enum.EasingDirection.In,  
					Enum.EasingStyle.Sine,     
					0.1,                          
					true,                       
					nil                                         
				)
				pcall(offFunc)
			end
		end)
	end
	function loaderFuncs:newDropdown(tab, labelTxt, options, func)
		local dropped = false
		local ExampleDropdown = Instance.new("TextButton")
		local DropdownCorner = Instance.new("UICorner")
		local DropdownBG = Instance.new("TextLabel")
		local DropdownBGCorner = Instance.new("UICorner")
		local DropdownListUI = Instance.new("UIListLayout")
		local DropdownSelected = Instance.new("TextLabel")
		ExampleDropdown.Name = "ExampleDropdown"
		ExampleDropdown.Parent = tab
		ExampleDropdown.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
		ExampleDropdown.Position = UDim2.new(0, 0, 0.28125, 0)
		ExampleDropdown.Size = UDim2.new(0, 141, 0, 22)
		ExampleDropdown.AutoButtonColor = false
		ExampleDropdown.Font = Enum.Font.Nunito
		ExampleDropdown.Text = labelTxt
		ExampleDropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
		ExampleDropdown.TextSize = 20.000
		DropdownCorner.Name = "DropdownCorner"
		DropdownCorner.Parent = ExampleDropdown
		DropdownBG.Name = "DropdownBG"
		DropdownBG.Parent = ExampleDropdown
		DropdownBG.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
		DropdownBG.Position = UDim2.new(-0.00174491853, 0, 1.29332376, 0)
		DropdownBG.Size = UDim2.new(0, 208, 0, 22)
		DropdownBG.Visible = false
		DropdownBG.Font = Enum.Font.Nunito
		DropdownBG.Text = ""
		DropdownBG.TextColor3 = Color3.fromRGB(255, 255, 255)
		DropdownBG.TextSize = 20.000
		DropdownBGCorner.Name = "DropdownBGCorner"
		DropdownBGCorner.Parent = DropdownBG
		DropdownBG.ZIndex = 900
		DropdownListUI.Name = "DropdownListUI"
		DropdownListUI.Parent = DropdownBG
		DropdownListUI.SortOrder = Enum.SortOrder.LayoutOrder
		DropdownListUI.Padding = UDim.new(0, 5)
		DropdownSelected.Name = "DropdownSelected"
		DropdownSelected.Parent = ExampleDropdown
		DropdownSelected.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
		DropdownSelected.BackgroundTransparency = 1.000
		DropdownSelected.Position = UDim2.new(1.04727054, 0, 0.4, 0)
		DropdownSelected.Size = UDim2.new(0, 66, 0, 0)
		DropdownSelected.Font = Enum.Font.Nunito
		DropdownSelected.Text = options[1]
		DropdownSelected.TextColor3 = Color3.fromRGB(255, 255, 255)
		DropdownSelected.TextSize = 20.000
		DropdownSelected.TextXAlignment = Enum.TextXAlignment.Left
		for i, v in ipairs(options) do 
			local ExampleOption = Instance.new("TextButton")
			local OptionCorner = Instance.new("UICorner")
			ExampleOption.Name = "ExampleOption"
			ExampleOption.Parent = DropdownBG
			ExampleOption.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
			ExampleOption.Size = UDim2.new(0, 208, 0, 22)
			ExampleOption.AutoButtonColor = false
			ExampleOption.Font = Enum.Font.Nunito
			ExampleOption.Text = v
			ExampleOption.TextColor3 = Color3.fromRGB(0, 0, 0)
			ExampleOption.TextSize = 20.000
			ExampleOption.ZIndex = 900 + i
			OptionCorner.Name = "OptionCorner"
			OptionCorner.Parent = ExampleOption
			ExampleOption.MouseButton1Down:connect(function()
				DropdownSelected.Text = v
				pcall(func(v))
			end)
		end
		DropdownBG.Size = UDim2.new(0, 208, 0, DropdownListUI.AbsoluteContentSize.Y)
		ExampleDropdown.MouseButton1Down:connect(function()
			dropped = not dropped
			DropdownBG.Visible = dropped
		end)
	end
	function loaderFuncs:newSlider(tab, labelTxt, minNum, maxNum, roundAmount, func)
		local function round(number, decimalPlaces)
			return math.round(number * 10^decimalPlaces) * 10^-decimalPlaces
		end
		maxNum = maxNum- minNum
		local SliderExample = Instance.new("TextLabel")
		local SliderLabelCorner = Instance.new("UICorner")
		local SliderBG = Instance.new("TextLabel")
		local SliderBGCorner = Instance.new("UICorner")
		local Slider = Instance.new("TextLabel")
		local SliderCorner = Instance.new("UICorner")
		local SliderShower = Instance.new("TextLabel")
		local SliderClickDetector = Instance.new("TextButton")
		local SliderShowerCorner = Instance.new("UICorner")
		SliderExample.Name = "SliderExample"
		SliderExample.Parent = tab
		SliderExample.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
		SliderExample.BackgroundTransparency = 1.000
		SliderExample.Position = UDim2.new(0, 0, 0.140625, 0)
		SliderExample.Size = UDim2.new(0, 76, 0, 22)
		SliderExample.Font = Enum.Font.Nunito
		SliderExample.Text = labelTxt
		SliderExample.TextColor3 = Color3.fromRGB(255, 255, 255)
		SliderExample.TextSize = 20.000
		SliderExample.TextXAlignment = Enum.TextXAlignment.Left
		SliderLabelCorner.Name = "SliderLabelCorner"
		SliderLabelCorner.Parent = SliderExample
		SliderBG.Name = "SliderBG"
		SliderBG.Parent = SliderExample
		SliderBG.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
		SliderBG.Position = UDim2.new(0.998255253, 0, 0.202414766, 0)
		SliderBG.Size = UDim2.new(0, 142, 0, 12)
		SliderBG.Font = Enum.Font.Nunito
		SliderBG.Text = ""
		SliderBG.TextColor3 = Color3.fromRGB(255, 255, 255)
		SliderBG.TextSize = 20.000
		SliderBGCorner.Name = "SliderBGCorner"
		SliderBGCorner.Parent = SliderBG
		SliderClickDetector.Name = "SliderClickDetector"
		SliderClickDetector.Parent = SliderExample
		SliderClickDetector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SliderClickDetector.BackgroundTransparency = 1.000
		SliderClickDetector.Position = UDim2.new(1, 0, 0, 0)
		SliderClickDetector.Size = UDim2.new(0, 141, 0, 22)
		SliderClickDetector.Font = Enum.Font.SourceSans
		SliderClickDetector.Text = ""
		SliderClickDetector.TextColor3 = Color3.fromRGB(0, 0, 0)
		SliderClickDetector.TextSize = 14.000
		Slider.Name = "Slider"
		Slider.Parent = SliderBG
		Slider.BackgroundColor3 = Color3.fromRGB(255, 171, 173)
		Slider.BorderColor3 = Color3.fromRGB(255, 171, 173)
		Slider.Size = UDim2.new(0, 142, 0, 12)
		Slider.Font = Enum.Font.Nunito
		Slider.Text = ""
		Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
		Slider.TextSize = 20.000
		SliderCorner.Name = "SliderCorner"
		SliderCorner.Parent = Slider
		SliderShower.Name = "SliderShower"
		SliderShower.Parent = SliderExample
		SliderShower.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
		SliderShower.Position = UDim2.new(1.05263162, 0, -0.636363626, 0)
		SliderShower.Size = UDim2.new(0, 44, 0, 14)
		SliderShower.Font = Enum.Font.SourceSans
		SliderShower.Text = "100"
		SliderShower.TextColor3 = Color3.fromRGB(255, 255, 255)
		SliderShower.TextSize = 14.000
		SliderShower.Visible = false
		SliderShowerCorner.Name = "SliderShowerCorner"
		SliderShowerCorner.Parent = SliderShower
		local holdingSlider = false
		SliderClickDetector.MouseButton1Down:connect(function()
			holdingSlider = true
		end)
		SliderClickDetector.MouseButton1Up:connect(function()
			holdingSlider = false
		end)
		local function onInputEnded(input, gameProcessed)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				holdingSlider = false 
			end
		end
		local mouse = game.Players.LocalPlayer:GetMouse()
		UserInputService.InputEnded:Connect(onInputEnded)
		game:GetService("RunService").RenderStepped:Connect(function(step)
			if holdingSlider then 
				SliderShower.Visible = true
				local mouseX = mouse.X   
				if Slider.AbsolutePosition.X < mouseX then
					local localMouseX = (mouseX - Slider.AbsolutePosition.X)
					if localMouseX < SliderBG.AbsoluteSize.X + 1 then
						SliderShower.Position = UDim2.new(0,localMouseX + 50,-0.896, 0)
						Slider.Size = UDim2.new(0, localMouseX, 0, SliderBG.AbsoluteSize.Y)
						local maxSize = SliderBG.AbsoluteSize.X
						local size = localMouseX
						local num = maxNum * (size / maxSize)
						num = num + minNum
						num = round(num, roundAmount)
						SliderShower.Text = tostring(num)
						if num == minNum then 
							Slider.Visible = false
						else 
							Slider.Visible = true
						end
						func(num)
					end
				end
			else
				SliderShower.Visible = false
			end
		end)		
	end
	return loaderFuncs
end
return scellepLib
