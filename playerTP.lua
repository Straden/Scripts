-- Gui to Lua
-- Version: 3.2

-- Instances:

local ABCD1234 = Instance.new("ScreenGui")
local MainFrame = Instance.new("ScrollingFrame")
local MainTXTLabel = Instance.new("TextLabel")
local MainLabel = Instance.new("ImageLabel")
local MainLabelTXT = Instance.new("TextLabel")
local OnOffButton = Instance.new("ImageButton")
local PlayerLable = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TeleportButton = Instance.new("ImageButton")
local RefreshButton = Instance.new("ImageButton")

--Properties:

ABCD1234.Name = "ABCD1234"
ABCD1234.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = ABCD1234
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.fromRGB(41, 44, 51)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.Position = UDim2.new(0.799696505, 0, 0.450210392, 0)
MainFrame.Size = UDim2.new(0, 234, 0, 144)
MainFrame.CanvasSize = UDim2.new(0, 0, 10, 0)
MainFrame.Active = true
MainFrame.Draggable = true

MainTXTLabel.Name = "MainTXTLabel"
MainTXTLabel.Parent = MainFrame
MainTXTLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainTXTLabel.BackgroundTransparency = 1.000
MainTXTLabel.BorderSizePixel = 0
MainTXTLabel.Size = UDim2.new(0, 172, 0, 38)
MainTXTLabel.Font = Enum.Font.SourceSans
MainTXTLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
MainTXTLabel.TextSize = 14.000

MainLabel.Name = "MainLabel"
MainLabel.Parent = MainTXTLabel
MainLabel.AnchorPoint = Vector2.new(0.5, 0.5)
MainLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainLabel.BackgroundTransparency = 1.000
MainLabel.Position = UDim2.new(0.398255825, 0, 0.5, 0)
MainLabel.Size = UDim2.new(0.79651165, 0, 1, 0)
MainLabel.Image = "rbxassetid://3570695787"
MainLabel.ImageColor3 = Color3.fromRGB(31, 31, 31)
MainLabel.ScaleType = Enum.ScaleType.Slice
MainLabel.SliceCenter = Rect.new(100, 100, 100, 100)
MainLabel.SliceScale = 0.120

MainLabelTXT.Name = "MainLabelTXT"
MainLabelTXT.Parent = MainTXTLabel
MainLabelTXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainLabelTXT.BackgroundTransparency = 1.000
MainLabelTXT.Position = UDim2.new(0.0406976752, 0, 0, 0)
MainLabelTXT.Size = UDim2.new(0, 124, 0, 38)
MainLabelTXT.Font = Enum.Font.Kalam
MainLabelTXT.Text = "Player Tp - GrayJay"
MainLabelTXT.TextColor3 = Color3.fromRGB(0, 255, 255)
MainLabelTXT.TextScaled = true
MainLabelTXT.TextSize = 14.000
MainLabelTXT.TextWrapped = true

OnOffButton.Name = "OnOffButton"
OnOffButton.Parent = MainTXTLabel
OnOffButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OnOffButton.BackgroundTransparency = 1.000
OnOffButton.Position = UDim2.new(1.04069769, 0, 0, 0)
OnOffButton.Size = UDim2.new(0, 38, 0, 38)
OnOffButton.Image = "rbxassetid://3570695787"
OnOffButton.ImageColor3 = Color3.fromRGB(255, 119, 0)

PlayerLable.Name = "PlayerLable"
PlayerLable.Parent = MainTXTLabel
PlayerLable.AnchorPoint = Vector2.new(0.5, 0.5)
PlayerLable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerLable.BackgroundTransparency = 1.000
PlayerLable.Position = UDim2.new(0.761627913, 0, 1.89473689, 0)
PlayerLable.Size = UDim2.new(1, 0, 1, 0)
PlayerLable.Image = "rbxassetid://3570695787"
PlayerLable.ImageColor3 = Color3.fromRGB(31, 31, 31)
PlayerLable.ScaleType = Enum.ScaleType.Slice
PlayerLable.SliceCenter = Rect.new(100, 100, 100, 100)
PlayerLable.SliceScale = 0.120

TextLabel.Parent = PlayerLable
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0465115905, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 155, 0, 38)
TextLabel.Font = Enum.Font.Kalam
TextLabel.Text = "Player"
TextLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TeleportButton.Name = "TeleportButton"
TeleportButton.Parent = PlayerLable
TeleportButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeleportButton.BackgroundTransparency = 1.000
TeleportButton.Position = UDim2.new(-0.226441845, 0, 0.0789473653, 0)
TeleportButton.Size = UDim2.new(0, 31, 0, 31)
TeleportButton.Image = "rbxassetid://3570695787"
TeleportButton.ImageColor3 = Color3.fromRGB(38, 0, 255)

RefreshButton.Name = "RefreshButton"
RefreshButton.Parent = MainTXTLabel
RefreshButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RefreshButton.BackgroundTransparency = 1.000
RefreshButton.Position = UDim2.new(0.79651165, 0, 0, 0)
RefreshButton.Size = UDim2.new(0, 38, 0, 38)
RefreshButton.Image = "http://www.roblox.com/asset/?id=69395121"
RefreshButton.ImageColor3 = Color3.fromRGB(3, 0, 90)


function listPlayers()
	Players = game:GetService("Players")
	plrCount = 1
	newYPos = 1.89473689
	for i, player in pairs(Players:GetPlayers()) do
		if plrCount == 1 then
			ClonedLabel = PlayerLable:Clone()
			ClonedLabel.Parent = MainTXTLabel
			ClonedLabel.Name = "ClonedLabel"
			newYPos = newYPos + (plrCount * 1.10526311)
			ClonedLabel.Position = UDim2.new(0.761627913, 0, 3, 0)
			ClonedLabel.TextLabel.Text = player.Name
			plrCount = plrCount + 0.03
			ClonedLabel.TeleportButton.MouseButton1Down:connect(function()
				print(ClonedLabel.TextLabel.Text)
			end)
		else
			ClonedLabel = PlayerLable:Clone()
			ClonedLabel.Parent = MainTXTLabel
			ClonedLabel.Name = "ClonedLabel"
			newYPos = newYPos + (plrCount * 1.10526311)
			ClonedLabel.Position = UDim2.new(0.761627913, 0, newYPos, 0)
			ClonedLabel.TextLabel.Text = player.Name
			ClonedLabel.TeleportButton.MouseButton1Down:connect(function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame

			end)
			plrCount = plrCount + 0.03
		end
	    
	end
end
listPlayers()
PlayerLable.TextLabel.Text = "Ignore :P"
RefreshButton.MouseButton1Down:connect(function()

	local children = MainTXTLabel:GetChildren()

	for i = 1, #children do

		local child = children[i]
		if child.Name == 'ClonedLabel' then
			child:Destroy()
			listPlayers()
		end
	end

end)
