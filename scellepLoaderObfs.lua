local scellepLoader = {}
function scellepLoader:Init()
	local Loader = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local LoadStatus = Instance.new("TextLabel")
	local LoaderCorner = Instance.new("UICorner")
	local BGSlider = Instance.new("TextLabel")
	local BGSliderCorner = Instance.new("UICorner")
	local Slider = Instance.new("TextLabel")
	local SliderCorner = Instance.new("UICorner")
	local MainLabel = Instance.new("TextLabel")
	local HubLabel = Instance.new("TextLabel")
	local DetailedStatus = Instance.new("TextLabel")
	Loader.Name = "Loader"
	Loader.Parent = game.CoreGui
	Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Loader
	MainFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.344198167, 0, 0.181091875, 0)
	MainFrame.Size = UDim2.new(0, 478, 0, 478)
	LoadStatus.Name = "LoadStatus"
	LoadStatus.Parent = MainFrame
	LoadStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadStatus.BackgroundTransparency = 1.000
	LoadStatus.Position = UDim2.new(0.0167364012, 0, 0.202928871, 0)
	LoadStatus.Size = UDim2.new(0, 461, 0, 34)
	LoadStatus.Text = "Waiting..."
	LoadStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
	LoadStatus.TextSize = 20.000
	LoadStatus.TextWrapped = true
	LoadStatus.TextYAlignment = Enum.TextYAlignment.Top
	LoaderCorner.Name = "LoaderCorner"
	LoaderCorner.Parent = MainFrame
	BGSlider.Name = "BGSlider"
	BGSlider.Parent = MainFrame
	BGSlider.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
	BGSlider.Position = UDim2.new(0.0376569033, 0, 0.410041839, 0)
	BGSlider.Size = UDim2.new(0, 442, 0, 13)
	BGSlider.Font = Enum.Font.SourceSans
	BGSlider.Text = ""
	BGSlider.TextColor3 = Color3.fromRGB(0, 0, 0)
	BGSlider.TextSize = 14.000
	BGSliderCorner.Name = "BGSliderCorner"
	BGSliderCorner.Parent = BGSlider
	Slider.Name = "Slider"
	Slider.Parent = BGSlider
	Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Slider.BackgroundTransparency = 1.000
	Slider.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Slider.Position = UDim2.new(0, 0, 0.102348916, 0)
	Slider.Size = UDim2.new(0, 0, 1, 0)
	Slider.Font = Enum.Font.SourceSans
	Slider.Text = ""
	Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
	Slider.TextSize = 14.000
	SliderCorner.Name = "SliderCorner"
	SliderCorner.Parent = Slider
	MainLabel.Name = "MainLabel"
	MainLabel.Parent = MainFrame
	MainLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainLabel.BackgroundTransparency = 1.000
	MainLabel.Position = UDim2.new(0.0376569033, 0, 0, 0)
	MainLabel.Size = UDim2.new(0, 115, 0, 49)
	MainLabel.Font = Enum.Font.Kalam
	MainLabel.Text = "Scellep"
	MainLabel.TextColor3 = Color3.fromRGB(255, 171, 173)
	MainLabel.TextSize = 60.000
	MainLabel.TextWrapped = true
	MainLabel.TextYAlignment = Enum.TextYAlignment.Top
	HubLabel.Name = "HubLabel"
	HubLabel.Parent = MainLabel
	HubLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HubLabel.BackgroundTransparency = 1.000
	HubLabel.Position = UDim2.new(1.06983805, 0, 0, 0)
	HubLabel.Size = UDim2.new(0, 65, 0, 49)
	HubLabel.Font = Enum.Font.Kalam
	HubLabel.Text = "Hub"
	HubLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	HubLabel.TextSize = 60.000
	HubLabel.TextWrapped = true
	HubLabel.TextYAlignment = Enum.TextYAlignment.Top
	DetailedStatus.Name = "DetailedStatus"
	DetailedStatus.Parent = MainFrame
	DetailedStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DetailedStatus.BackgroundTransparency = 1.000
	DetailedStatus.Position = UDim2.new(0.0167364012, 0, 0.476987451, 0)
	DetailedStatus.Size = UDim2.new(0, 461, 0, 232)
	DetailedStatus.Text = "Waiting..."
	DetailedStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
	DetailedStatus.TextSize = 14.000
	DetailedStatus.TextWrapped = true
	DetailedStatus.TextYAlignment = Enum.TextYAlignment.Top
	local loaderFuncs = {}
	function loaderFuncs:SetStatus(txt)
		LoadStatus.Text = txt 
	end
	function loaderFuncs:DetailStatus(txt)
		DetailedStatus.Text = txt 
	end
	function loaderFuncs:IncreaseSlider(amt)
		local willTween = Slider:TweenSize(
			UDim2.new(amt/100, 0, 1, 0),
			Enum.EasingDirection.In,  
			Enum.EasingStyle.Sine,     
			0.2,                          
			true,                       
			nil                                         
		)
		Slider.BackgroundTransparency = 0 

	end
	function loaderFuncs:End()
		Loader:Destroy()
	end
	return loaderFuncs
end 
return scellepLoader
