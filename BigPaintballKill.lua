_G.Debug = true

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
Players = game:GetService("Players")


local GrayJayUI = Instance.new("ScreenGui")
GrayJayUI.Name = "GrayJayUI"
GrayJayUI.Parent = game.CoreGui
GrayJayUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
categoryAmount = 0
local GrayJayLibrary = {}
function GrayJayLibrary:CreateCategory(categoryName)
    categoryAmount = categoryAmount + 1
    
	local Category = Instance.new("TextLabel")
	local Container = Instance.new("Frame")
	local Divider = Instance.new("TextLabel")
	local UIGridLayout = Instance.new("UIGridLayout")

	

	Category.Name = "Category"
	Category.Parent = GrayJayUI
	Category.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	Category.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Category.BorderSizePixel = 0
	Category.Position = UDim2.new(0.0033333313 + categoryAmount * 0.1, 0, 0.0246376805, 0)
	Category.Size = UDim2.new(0, 169, 0, 30)
	Category.Font = Enum.Font.Arial
	Category.TextColor3 = Color3.fromRGB(255, 255, 255)
	Category.TextSize = 14.000
	Category.TextWrapped = true
	Category.Text = categoryName
	Category.Active = true
	Category.Draggable = true
	

	Container.Name = "Container"
	Container.Parent = Category
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BorderSizePixel = 0
	Container.Position = UDim2.new(0, 0, 1, 0)
	Container.Size = UDim2.new(0, 169, 0, 566)
	Container.BackgroundTransparency = 1
	
	Divider.Name = "Divider"
	Divider.Parent = Category
	Divider.BackgroundColor3 = Color3.fromRGB(0, 230, 255)
	Divider.BorderSizePixel = 0
	Divider.Position = UDim2.new(0, 0, 1, 0)
	Divider.Size = UDim2.new(0, 169, 0, 2)
	Divider.Font = Enum.Font.SourceSans
	Divider.Text = ""
	Divider.TextColor3 = Color3.fromRGB(0, 0, 0)
	Divider.TextSize = 14.000
	
	UIGridLayout.Parent = Container
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
	UIGridLayout.CellSize = UDim2.new(0, 169, 0, 30)
	
	
	
	
	GJLibrary = {}
    function GJLibrary:CreateButton(BtnTxt, BtnFunction)
        local TextButton = Instance.new("TextButton")
		TextButton.Parent = Container
		TextButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
		TextButton.BorderSizePixel = 0
		TextButton.Size = UDim2.new(0, 200, 0, 50)
		TextButton.AutoButtonColor = false
		TextButton.Font = Enum.Font.Arial
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 14.000
		TextButton.Text = BtnTxt
		
		TextButton.MouseButton1Click:connect(function()
			pcall(BtnFunction)
		end)
    end
    
    function GJLibrary:CreateLabel(LabelTxt)
		local BaseLabel = Instance.new("TextLabel")
		
		BaseLabel.Name = LabelTxt
		BaseLabel.Parent = Container
		BaseLabel.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		BaseLabel.BorderColor3 = Color3.fromRGB(16, 16, 16)
		BaseLabel.BorderSizePixel = 0
		BaseLabel.Position = UDim2.new(0, 0, 0.00353356823, 0)
		BaseLabel.Size = UDim2.new(0, 169, 0, 30)
		BaseLabel.Font = Enum.Font.Arial
		BaseLabel.Text = LabelTxt
		BaseLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		BaseLabel.TextSize = 14.000
	end
    
    
    function GJLibrary:CreateWarn(WarnMsg, OKF, CAF)
        local Warning = Instance.new("ImageLabel")
		local UIGradient = Instance.new("UIGradient")
		local WarningSignLeft = Instance.new("ImageButton")
		local WarningSignRight = Instance.new("ImageButton")
		local WarningText = Instance.new("TextLabel")
		local CancelButton = Instance.new("TextButton")
		local CancelBorder = Instance.new("ImageLabel")
		local OkayButton = Instance.new("TextButton")
		local OkayBorder = Instance.new("ImageLabel")
		
		Warning.Name = "Warning"
		Warning.Parent = GrayJayUI
		Warning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Warning.BackgroundTransparency = 1.000
		Warning.Position = UDim2.new(0.428351581, 0, 0.466045558, 0)
		Warning.Size = UDim2.new(0, 235, 0, 46)
		Warning.Visible = true
		Warning.Image = "rbxassetid://3570695787"
		Warning.ScaleType = Enum.ScaleType.Slice
		Warning.SliceCenter = Rect.new(100, 100, 100, 100)
		Warning.SliceScale = 0.120

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(203, 215, 253)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(225, 226, 227))}
		UIGradient.Parent = Warning

		WarningSignLeft.Name = "WarningSignLeft"
		WarningSignLeft.Parent = Warning
		WarningSignLeft.BackgroundTransparency = 1.000
		WarningSignLeft.Size = UDim2.new(0, 25, 0, 25)
		WarningSignLeft.ZIndex = 2
		WarningSignLeft.Image = "rbxassetid://3926305904"
		WarningSignLeft.ImageColor3 = Color3.fromRGB(255, 238, 0)
		WarningSignLeft.ImageRectOffset = Vector2.new(364, 324)
		WarningSignLeft.ImageRectSize = Vector2.new(36, 36)

		WarningSignRight.Name = "WarningSignRight"
		WarningSignRight.Parent = Warning
		WarningSignRight.BackgroundTransparency = 1.000
		WarningSignRight.Position = UDim2.new(0.891021311, 0, 0, 0)
		WarningSignRight.Size = UDim2.new(0, 25, 0, 25)
		WarningSignRight.ZIndex = 2
		WarningSignRight.Image = "rbxassetid://3926305904"
		WarningSignRight.ImageColor3 = Color3.fromRGB(255, 238, 0)
		WarningSignRight.ImageRectOffset = Vector2.new(364, 324)
		WarningSignRight.ImageRectSize = Vector2.new(36, 36)

		WarningText.Name = "WarningText"
		WarningText.Parent = Warning
		WarningText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		WarningText.BackgroundTransparency = 1.000
		WarningText.Position = UDim2.new(0.165957451, 0, -0.0869999975, 0)
		WarningText.Size = UDim2.new(0, 156, 0, 33)
		WarningText.Font = Enum.Font.Arial
		WarningText.Text = WarnMsg
		WarningText.TextColor3 = Color3.fromRGB(0, 0, 0)
		WarningText.TextSize = 14.000

		CancelButton.Name = "CancelButton"
		CancelButton.Parent = Warning
		CancelButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CancelButton.BackgroundTransparency = 1.000
		CancelButton.Position = UDim2.new(0.552999973, 0, 0.522000015, 0)
		CancelButton.Size = UDim2.new(0, 82, 0, 21)
		CancelButton.Font = Enum.Font.Arial
		CancelButton.Text = "Cancel"
		CancelButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		CancelButton.TextSize = 14.000

		CancelBorder.Name = "CancelBorder"
		CancelBorder.Parent = CancelButton
		CancelBorder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CancelBorder.BackgroundTransparency = 1.000
		CancelBorder.Position = UDim2.new(-0.00680488348, 0, -0.0284285545, 0)
		CancelBorder.Size = UDim2.new(0, 82, 0, 21)
		CancelBorder.Image = "http://www.roblox.com/asset/?id=13786085"

		OkayButton.Name = "OkayButton"
		OkayButton.Parent = Warning
		OkayButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		OkayButton.BackgroundTransparency = 1.000
		OkayButton.Position = UDim2.new(0.100000001, 0, 0.522000015, 0)
		OkayButton.Size = UDim2.new(0, 82, 0, 21)
		OkayButton.Font = Enum.Font.Arial
		OkayButton.Text = "OK"
		OkayButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		OkayButton.TextSize = 14.000
        OkayButton.MouseButton1Click:connect(function()
            pcall(OKF)
            Warning.Visible = false
        end)
        CancelButton.MouseButton1Click:connect(function()
            pcall(CAF)
            Warning.Visible = false
        end)
		OkayBorder.Name = "OkayBorder"
		OkayBorder.Parent = OkayButton
		OkayBorder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		OkayBorder.BackgroundTransparency = 1.000
		OkayBorder.Position = UDim2.new(-0.00680488348, 0, -0.0284285545, 0)
		OkayBorder.Size = UDim2.new(0, 82, 0, 21)
		OkayBorder.Image = "http://www.roblox.com/asset/?id=13786085"
		
		
    end
    
    function GJLibrary:CreateError(ErrorMsg, EF)

        local Error = Instance.new("ImageLabel")
        local UIGradient = Instance.new("UIGradient")
        local OkayButton = Instance.new("TextButton")
        local OkayBorder = Instance.new("ImageLabel")
        local ErrorText = Instance.new("TextLabel")
        local ErrorSignLeft = Instance.new("ImageButton")
        local ErrorSignRight = Instance.new("ImageButton")
        
        Error.Name = "Error"
        Error.Parent = GrayJayUI
        Error.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Error.BackgroundTransparency = 1.000
        Error.Position = UDim2.new(0.42824626, 0, 0.466666698, 0)
        Error.Size = UDim2.new(0, 235, 0, 46)
        Error.Image = "rbxassetid://3570695787"
        Error.ScaleType = Enum.ScaleType.Slice
        Error.SliceCenter = Rect.new(100, 100, 100, 100)
        Error.SliceScale = 0.120
        
        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(224, 43, 39)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(168, 3, 3))}
        UIGradient.Parent = Error
        
        OkayButton.Name = "OkayButton"
        OkayButton.Parent = Error
        OkayButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        OkayButton.BackgroundTransparency = 1.000
        OkayButton.Position = UDim2.new(0.321276605, 0, 0.522000015, 0)
        OkayButton.Size = UDim2.new(0, 82, 0, 21)
        OkayButton.Font = Enum.Font.Arial
        OkayButton.Text = "OK"
        OkayButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        OkayButton.TextSize = 14.000
        
        OkayBorder.Name = "OkayBorder"
        OkayBorder.Parent = OkayButton
        OkayBorder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        OkayBorder.BackgroundTransparency = 1.000
        OkayBorder.Position = UDim2.new(-0.00680488348, 0, -0.0284285545, 0)
        OkayBorder.Size = UDim2.new(0, 82, 0, 21)
        OkayBorder.Image = "http://www.roblox.com/asset/?id=13786085"
        OkayBorder.ImageColor3 = Color3.fromRGB(0, 0, 0)
        
        ErrorText.Name = "WarningText"
        ErrorText.Parent = Error
        ErrorText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ErrorText.BackgroundTransparency = 1.000
        ErrorText.Position = UDim2.new(0.165957451, 0, -0.173956499, 0)
        ErrorText.Size = UDim2.new(0, 156, 0, 33)
        ErrorText.Font = Enum.Font.Arial
        ErrorText.Text = ErrorMsg
        ErrorText.TextColor3 = Color3.fromRGB(255, 255, 255)
        ErrorText.TextSize = 14.000
        
        ErrorSignLeft.Name = "ErrorSignLeft"
        ErrorSignLeft.Parent = Error
        ErrorSignLeft.BackgroundTransparency = 1.000
        ErrorSignLeft.Size = UDim2.new(0, 25, 0, 25)
        ErrorSignLeft.ZIndex = 2
        ErrorSignLeft.Image = "rbxassetid://3926305904"
        ErrorSignLeft.ImageRectOffset = Vector2.new(964, 84)
        ErrorSignLeft.ImageRectSize = Vector2.new(36, 36)
        
        ErrorSignRight.Name = "ErrorSignRight"
        ErrorSignRight.Parent = Error
        ErrorSignRight.BackgroundTransparency = 1.000
        ErrorSignRight.Position = UDim2.new(0.890999973, 0, 0, 0)
        ErrorSignRight.Size = UDim2.new(0, 25, 0, 25)
        ErrorSignRight.ZIndex = 2
        ErrorSignRight.Image = "rbxassetid://3926305904"
        ErrorSignRight.ImageRectOffset = Vector2.new(964, 84)
        ErrorSignRight.ImageRectSize = Vector2.new(36, 36)
		
		OkayButton.MouseButton1Click:connect(function()
            pcall(EF)
            Error.Visible = false
        end)
		
    end

    
    function GJLibrary:CreateToggle(ToggleTxt, ToggleFunctionON, ToggleFunctionOFF)
		local Toggle = Instance.new("TextLabel")
		local ToggleLeftButton = Instance.new("TextButton")
		local ToggleRightButton = Instance.new("TextButton")
		Toggle.Name = "Toggle"
		Toggle.Parent = Container
		Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Toggle.BorderSizePixel = 0
		Toggle.Size = UDim2.new(0, 200, 0, 50)
		Toggle.Font = Enum.Font.SourceSans
		Toggle.Text = ""
		Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
		Toggle.TextSize = 14.000

		ToggleLeftButton.Name = "ToggleLeftButton"
		ToggleLeftButton.Parent = Toggle
		ToggleLeftButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ToggleLeftButton.BackgroundTransparency = 1.000
		ToggleLeftButton.Size = UDim2.new(0, 124, 0, 30)
		ToggleLeftButton.Font = Enum.Font.Arial
		ToggleLeftButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		ToggleLeftButton.TextSize = 14.000
		ToggleLeftButton.Text = ToggleTxt

		ToggleRightButton.Name = "ToggleRightButton"
		ToggleRightButton.Parent = Toggle
		ToggleRightButton.BackgroundColor3 = Color3.fromRGB(147, 0, 0)
		ToggleRightButton.BorderSizePixel = 0
		ToggleRightButton.Position = UDim2.new(0.79289943, 0, 0.166666672, 0)
		ToggleRightButton.Size = UDim2.new(0, 20, 0, 20)
		ToggleRightButton.Font = Enum.Font.Arial
		ToggleRightButton.Text = ""
		ToggleRightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		ToggleRightButton.TextSize = 14.000
		
		local toggled = false
		
		ToggleLeftButton.MouseButton1Click:connect(function()
			wait()
		end)
		
		ToggleRightButton.MouseButton1Click:connect(function()
			wait()
		end)
end
    
    return GJLibrary
    
end

mouse.KeyDown:connect(function(key)
        if key == "u" then
            local children = GrayJayUI:GetChildren()
            for i, Category in ipairs(children) do
            	if Category.Name == "Category" then
            	if Category.Visible == true then
                Category.Visible = false
            else
                Category.Visible = true
            	end
            end

            
        end
    end
end)

KillAll = false



mouse.KeyDown:connect(function(key)
        if key == "k" then
            if KillAll then
                KillAll = false
                _G.ENABLED = false
                ENABLED = false
                Respawn = false

                
                
            else
                KillAll = true
                _G.ENABLED = true
                ENABLED = true
                Respawn = true


            end
        end
end)

Credits = GrayJayLibrary:CreateCategory("Credits")
Credits:CreateLabel("Throit Cheats")
Credits:CreateLabel("Throit#1612")
Credits:CreateLabel("ThroitUILibrary")
Credits:CreateLabel("Fusion Development")
Credits:CreateWarn("Aimbot is not mine :)",function()wait() end, function() wait()end)

Controls = GrayJayLibrary:CreateCategory("Controls")
Controls:CreateLabel("K - KillAll")
Controls:CreateLabel("U - ToggleGui")


PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()
CC      = game.Workspace.CurrentCamera

ENABLED      = true

_G.FREE_FOR_ALL = false



_G.AIM_AT = 'Head'

wait(1)

function GetNearestPlayerToMouse()
	local PLAYERS      = {}
	local PLAYER_HOLD  = {}
	local DISTANCES    = {}
	for i, v in pairs(game.Players:GetPlayers()) do
		if v ~= PLAYER then
			table.insert(PLAYERS, v)
		end
	end
	for i, v in pairs(PLAYERS) do
		if _G.FREE_FOR_ALL == false then
			if v and (v.Character) ~= nil and v.TeamColor ~= PLAYER.TeamColor then
				local AIM = v.Character:FindFirstChild(_G.AIM_AT)
				if AIM ~= nil then
					local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
					local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
					local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
					local DIFF                     = math.floor((POS - AIM.Position).magnitude)
					PLAYER_HOLD[v.Name .. i]       = {}
					PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
					PLAYER_HOLD[v.Name .. i].plr   = v
					PLAYER_HOLD[v.Name .. i].diff  = DIFF
					table.insert(DISTANCES, DIFF)
				end
			end
		elseif _G.FREE_FOR_ALL == true then
			local AIM = v.Character:FindFirstChild(_G.AIM_AT)
			if AIM ~= nil then
				local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
				local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
				local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
				local DIFF                     = math.floor((POS - AIM.Position).magnitude)
				PLAYER_HOLD[v.Name .. i]       = {}
				PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
				PLAYER_HOLD[v.Name .. i].plr   = v
				PLAYER_HOLD[v.Name .. i].diff  = DIFF
				table.insert(DISTANCES, DIFF)
			end
		end
	end

	if unpack(DISTANCES) == nil then
		return false
	end

	local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
	if L_DISTANCE > 20 then
		return false
	end

	for i, v in pairs(PLAYER_HOLD) do
		if v.diff == L_DISTANCE then
			return v.plr
		end
	end
	return false
end

GUI_MAIN                           = Instance.new('ScreenGui', game.CoreGui)
GUI_TARGET                         = Instance.new('TextLabel', GUI_MAIN)
GUI_AIM_AT                         = Instance.new('TextLabel', GUI_MAIN)
GUI_AIM_AT.Visible = false
GUI_TARGET.Visible = false
GUI_MAIN.Name                      = 'AIMBOT'

GUI_TARGET.Size                    = UDim2.new(0,200,0,30)
GUI_TARGET.BackgroundTransparency  = 0.5
GUI_TARGET.BackgroundColor         = BrickColor.new('Fossil')
GUI_TARGET.BorderSizePixel         = 0
GUI_TARGET.Position                = UDim2.new(0.5,-100,0,0)
GUI_TARGET.Text                    = 'AIMBOT : OFF'
GUI_TARGET.TextColor3              = Color3.new(1,1,1)
GUI_TARGET.TextStrokeTransparency  = 1
GUI_TARGET.TextWrapped             = true
GUI_TARGET.FontSize                = 'Size24'
GUI_TARGET.Font                    = 'SourceSansBold'

GUI_AIM_AT.Size                    = UDim2.new(0,200,0,20)
GUI_AIM_AT.BackgroundTransparency  = 0.5
GUI_AIM_AT.BackgroundColor         = BrickColor.new('Fossil')
GUI_AIM_AT.BorderSizePixel         = 0
GUI_AIM_AT.Position                = UDim2.new(0.5,-100,0,30)
GUI_AIM_AT.Text                    = 'AIMING : HEAD'
GUI_AIM_AT.TextColor3              = Color3.new(1,1,1)
GUI_AIM_AT.TextStrokeTransparency  = 1
GUI_AIM_AT.TextWrapped             = true
GUI_AIM_AT.FontSize                = 'Size18'
GUI_AIM_AT.Font                    = 'SourceSansBold'

local TRACK = false




function FIND()
	CLEAR()
	TRACK = true
	spawn(function()
		while wait() do
			if TRACK then
				CLEAR()
				for i,v in pairs(game.Players:GetChildren()) do
					if v.Character and v.Character:FindFirstChild('Head') then
						if _G.FREE_FOR_ALL == false then
							if v.TeamColor ~= PLAYER.TeamColor then
								if v.Character:FindFirstChild('Head') then
									CREATE(v.Character.Head, true)
								end
							end
						else
							if v.Character:FindFirstChild('Head') then
								CREATE(v.Character.Head, true)
							end
						end
					end
				end
			end
		end
		wait(1)
	end)
end

local player = game.Players.LocalPlayer
local mouse = player:GetMouse() -- get the mouse
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local ready = true






game:GetService('RunService').RenderStepped:connect(function()
	if ENABLED then
		local TARGET = GetNearestPlayerToMouse()
		if (TARGET ~= false) then
			local AIM = TARGET.Character:FindFirstChild(_G.AIM_AT)
			if AIM then
				CC.CoordinateFrame = CFrame.new(CC.CoordinateFrame.p, AIM.CFrame.p)
			end
		
		end
	end
end)

wait()
Respawn = false
_G.FREE_FOR_ALL = false
------------------------------------------------
Players = game:GetService("Players")
LocalPlayer = game.Players.LocalPlayer
LocalCharacter = LocalPlayer.Character
LocalCFrame = LocalCharacter.HumanoidRootPart.CFrame
------------------------------------------------

while wait(0.1) do
    if LocalCharacter and LocalPlayer.Character and KillAll then
    if Respawn then
        keypress(0x20)
    end
    for i, player in pairs(Players:GetPlayers()) do
        if player.TeamColor ~= LocalPlayer.TeamColor and player.Character and player.Character.HumanoidRootPart then
                if _G.Debug then
                    print("Enemy          : "..player.Name)
                    print("Teleporting to : "..player.Name)
                end
                ------------------------------------------------
                Players = game:GetService("Players")
                LocalPlayer = game.Players.LocalPlayer
                LocalCharacter = LocalPlayer.Character
                LocalCFrame = LocalCharacter.HumanoidRootPart.CFrame
                ------------------------------------------------
                root = game.Players.LocalPlayer.Character.HumanoidRootPart
                root.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
                mouse1click()
                
                wait(0.1)
        end
    end
end
end
