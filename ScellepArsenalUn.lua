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
			if toggled then
				ToggleRightButton.BackgroundColor3 = Color3.fromRGB(147, 0, 0)
				pcall(ToggleFunctionOFF)
				toggled = false
			else
				ToggleRightButton.BackgroundColor3 = Color3.fromRGB(20, 156, 0)
				pcall(ToggleFunctionON)
				toggled = true
			end
		end)
		
		ToggleRightButton.MouseButton1Click:connect(function()
			if toggled then
				ToggleRightButton.BackgroundColor3 = Color3.fromRGB(147, 0, 0)
				pcall(ToggleFunctionOFF)
				toggled = false
			else
				ToggleRightButton.BackgroundColor3 = Color3.fromRGB(20, 156, 0)
				pcall(ToggleFunctionON)
				toggled = true
			end
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

Combat = GrayJayLibrary:CreateCategory("Main")
Combat:CreateWarn("Silent no work w/ some  mods", function() wait(0.1) end, function()
    while wait(0.01) do
        wait(0.1)
    end
end)

repeat wait(0.1) until game.CoreGui.GrayJayUI.Warning.Visible == false

--Needed Variables
Players = game:GetService("Players")
plr = game.Players.LocalPlayer
local Mouse = game.Players.LocalPlayer:GetMouse()
xCenter = Mouse.ViewSizeX / 2
yCenter = Mouse.ViewSizeY / 2
Tracers = { }
TracedPlayers = { }
Paused = false
_G.TracersEnabled = false
_G.ENABLED = false

--Functions
function isPlayerLoaded(plr)
    local playerLoaded = false
    if game.Workspace:FindFirstChild(plr.Name) then
        if plr.Character:FindFirstChild("HumanoidRootPart") then
            playerLoaded = true
        end
    end
    return playerLoaded
end

function WorldToScreen(pos)
    local camera = workspace.CurrentCamera
    local worldPoint = pos
    local vector, inViewport = camera:WorldToViewportPoint(worldPoint)
     
    local viewportPoint = Vector2.new(vector.X, vector.Y)
    local depth = vector.Z
    return viewportPoint
end

function getTraceFromPlayer(plr)
    plrName = plr.Name
    index = 999999
    box = nil
    for i, tracedPlayer in ipairs(TracedPlayers) do
        if tracedPlayer == plrName then
            index = i
            break
        end
    end
    if index ~= 999999 then
        box = Boxes[index]
    end
    if box ~= nil then
        return box    
    else
        return nil
    end
end

function getPlayerFromTrace(trace)
    index = 999999
    player = nil
    for i, Ptrace in ipairs(Tracers) do
        if Ptrace == trace then
            index = i
            break
        end
    end
    if index ~= 999999 then
        player = TracedPlayers[index]
    end
    if player ~= nil then
        return player    
    else
        return nil
    end
    
end



function teamColorCodeTracers()
    for i, trace in ipairs(Tracers) do
        player = getPlayerFromTrace(trace)
            if player ~= nil then
                if player.TeamColor == plr.TeamColor then
                    if trace.Color ~= Color3.fromRGB(0, 255, 255) then
                        trace.Color = Color3.fromRGB(0, 255, 255)
                        
                    end
                else
                    if trace.Color ~= Color3.fromRGB(255, 0, 0) then
                        trace.Color = Color3.fromRGB(255, 0, 0)
                    end
                end
            end
        end
    end

function resetTracers()
    Paused = true
    for i, trace in ipairs(Tracers) do
        trace.Visible = false
    end
    Tracers = { }
    TracedPlayers = { }
    for i, player in ipairs(Players:GetPlayers()) do
        if isPlayerLoaded(player) and player.Name ~= plr.Name then
            headPos = WorldToScreen(player.Character.Head.Position)
            local Trace = Drawing.new("Line")
            Trace.Visible = true
            Trace.Thickness = 2
            Trace.Color = Color3.fromRGB(0, 255, 255)
            Trace.To = Vector2.new(xCenter, yCenter + yCenter)
            Trace.From = headPos
            table.insert(Tracers, Trace)
            table.insert(TracedPlayers, player)
        end
    end
    teamColorCodeTracers()
    Paused = false
end


function updateTraces()
    teamColorCodeTracers()
    for i, trace in ipairs(Tracers) do
        getPlayerFromTrace(trace)
        if player ~= nil and player ~= false then
            if isPlayerLoaded(player) then
                headPos = WorldToScreen(player.Character.Head.Position)
                trace.To = Vector2.new(xCenter, yCenter + yCenter)
                trace.From = headPos
                local Camera = workspace.CurrentCamera
                local _, withinScreenBounds = Camera:WorldToScreenPoint(player.Character.HumanoidRootPart.Position)
                if withinScreenBounds then
                    if trace.Visible == false then
                        trace.Visible = true    
                    end
                else
                    if trace.Visible == true then
                        trace.Visible = false    
                    end
                end
            else
                trace.Visible = false    
            end
        end
    end

end

Players.PlayerAdded:Connect(function(player)
	resetTracers()
end)
 
Players.PlayerRemoving:Connect(function(player)
	resetTracers()
end)
resetTracers()

--Variables
_G.FREE_FOR_ALL = false
_G.BoxEsp = false
_G.AimbotToggle = false
Paused = false
Players = game:GetService("Players")
local Mouse = game.Players.LocalPlayer:GetMouse()
xCenter = Mouse.ViewSizeX / 2
yCenter = Mouse.ViewSizeY / 2
plr = game.Players.LocalPlayer
char = plr.Character
Boxes = { }
BoxedPlayers = { }
PlayerNames = { }

--Functions
function isPlayerLoaded(plr)
    local playerLoaded = false
    if game.Workspace:FindFirstChild(plr.Name) then
        if plr.Character:FindFirstChild("HumanoidRootPart") then
            playerLoaded = true
        end
    end
    return playerLoaded
end

function WorldToScreen(pos)
    local camera = workspace.CurrentCamera
    local worldPoint = pos
    local vector, inViewport = camera:WorldToViewportPoint(worldPoint)
     
    local viewportPoint = Vector2.new(vector.X, vector.Y)
    local depth = vector.Z
    return viewportPoint
end

function getBoxSizeForPlr(player)
    plrChar = player.Character
    plrHead = plrChar.Head
    plrFoot = plrChar.LeftFoot
    plrLfArm = plrChar.LeftUpperArm
    plrRiArm = plrChar.RightUpperArm
    headPos = WorldToScreen(plrHead.Position)
    footPos = WorldToScreen(plrFoot.Position)
    leftPos = WorldToScreen(plrLfArm.Position)
    rightPos = WorldToScreen(plrRiArm.Position)
    --X
    if leftPos.X > rightPos.X then
        xDist = leftPos.X - rightPos.X
    else
        xDist = rightPos.X - leftPos.X
    end
    --Y
    if headPos.Y > footPos.Y then
        yDist = headPos.Y - footPos.Y
    else
        yDist = footPos.Y- headPos.Y
    end
    size = Vector2.new(xDist, yDist)
    return size, xDist, yDist
    
end
for i, player in ipairs(Players:GetPlayers()) do
    table.insert(PlayerNames, player.Name)
end

function resetEsp()
    Paused = true
    for i, box in ipairs(Boxes) do
        box.Visible = false
    end
    Boxes = { }
    BoxedPlayers = { }
    PlayerNames = { }
    for i, player in ipairs(Players:GetPlayers()) do
        if isPlayerLoaded(player) and player.Name ~= plr.Name then
            size, xDist, yDist = getBoxSizeForPlr(player)
            rootPos = WorldToScreen(player.Character.HumanoidRootPart.Position)
            local Box = Drawing.new("Square")
            Box.Visible = true
            Box.Thickness = 2
            Box.Size = size + Vector2.new(20, 20)
            Box.Position = rootPos - Vector2.new(xDist / 2, yDist / 2)
            Box.Filled = false
            Box.Color = Color3.fromRGB(0, 255, 255)
            table.insert(Boxes, Box)
            table.insert(BoxedPlayers, player)
        end
    end
    Paused = false
end


Players.PlayerAdded:Connect(function(user)
	resetEsp()
end)
 
Players.PlayerRemoving:Connect(function(user)
	resetEsp()
end)


rootPos = WorldToScreen(char.HumanoidRootPart.Position)

size, xDist, yDist = getBoxSizeForPlr(plr)


for i, player in ipairs(Players:GetPlayers()) do
    if isPlayerLoaded(player) and player.Name ~= plr.Name then
        size, xDist, yDist = getBoxSizeForPlr(player)
        rootPos = WorldToScreen(player.Character.HumanoidRootPart.Position)
        local Box = Drawing.new("Square")
        Box.Visible = true
        Box.Thickness = 2
        Box.Size = size + Vector2.new(20, 20)
        Box.Position = rootPos - Vector2.new(xDist / 2, yDist / 2)
        Box.Filled = false
        Box.Color = Color3.fromRGB(0, 255, 255)
        table.insert(Boxes, Box)
        table.insert(BoxedPlayers, player)
    end
end
Camera = workspace.CurrentCamera
PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()
CC      = game.Workspace.CurrentCamera

_G.ENABLED      = false
ESP_ENABLED  = false

_G.FREE_FOR_ALL = true

_G.BIND        = 50
_G.ESP_BIND    = 5222222
_G.CHANGE_AIM  = 'q'

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

mouse.Button2Down:Connect(function()
	if _G.AimbotToggle == true then
		_G.ENABLED = true
	end
end)

mouse.Button2Up:Connect(function() 
	_G.ENABLED = false
end)





game:GetService('RunService').RenderStepped:connect(function()
	if _G.ENABLED then
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
_G.FREE_FOR_ALL = false
_G.SilentAimEnabled = false
_G.NoRecoilEnabled = false
_G.NoSpreadEnabled = false
_G.RapidFireEnabled = false
_G.InfAmmoEnabled = false
Combat:CreateToggle("Aimbot",function() _G.AimbotToggle = true end,function() _G.AimbotToggle = false end)
Combat:CreateToggle("Silent Aim",function() _G.SilentAimEnabled = true end,function() _G.SilentAimEnabled = false end)
Visuals = GrayJayLibrary:CreateCategory("Visuals")
Visuals:CreateToggle("Esp",function() _G.BoxEsp = true end,function() _G.BoxEsp = false end)
Visuals:CreateToggle("Tracers",function() _G.TracersEnabled = true end,function() _G.TracersEnabled = false end)
Mods = GrayJayLibrary:CreateCategory("Gun Mods")
Mods:CreateToggle("Infinite Ammo",function() _G.InfAmmoEnabled = true end,function() _G.InfAmmoEnabled = false end)
Mods:CreateToggle("Rapid Fire",function() _G.RapidFireEnabled = true end,function() _G.RapidFireEnabled = false end)
Mods:CreateToggle("No Recoil",function() _G.NoRecoilEnabled = true end,function() _G.NoRecoilEnabled = false end)
Mods:CreateToggle("No Spread",function() _G.NoSpreadEnabled = true end,function() _G.NoSpreadEnabled = false end)
Creds = GrayJayLibrary:CreateCategory("Credis")
Creds:CreateLabel("Throit#1612")
Creds:CreateLabel("Hex Scripts")
Creds:CreateLabel("Trike")
Creds:CreateLabel("ScellepCheats")
Creds:CreateLabel("ScellepAntiCheat")

local Functions = {}
for i,v in pairs(getreg()) do
   if type(v) == "function" then
       for i2,v2 in pairs(getfenv(v)) do
           if type(v2) == "function" then
               Functions[tostring(i2)] = v2
           end
       end
   end
end

function GetLocalWeapon()
   return getfenv(Functions.usethatgun).gun
end

game:GetService("RunService"):BindToRenderStep("gunmodsarecool", 1, function()
    if _G.NoSpreadEnabled then
        getfenv(Functions.usethatgun).currentspread = 0 -- NoSpread
    end
    if _G.NoRecoilEnabled then    
        getfenv(Functions.usethatgun).recoil = 0 -- NoRecoil
    end
    if GetLocalWeapon() ~= "none" and GetLocalWeapon():FindFirstChild("Ammo") and _G.InfAmmoEnabled then -- Inf Ammo
       debug.setupvalue(Functions["updateInventory"], 3, GetLocalWeapon():FindFirstChild("Ammo").Value)
    end
   
   if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Spawned") and game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and _G.RapidFireEnabled then -- RapidFire
       if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 and game.Players.LocalPlayer.Character:FindFirstChild("Spawned") then
           pcall(function()
               Functions.firebullet(true)
           end)
       end
   end
end)


local CurrentCamera = workspace.CurrentCamera
local Players = game.GetService(game, "Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    if _G.SilentAimEnabled == true then
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if V.Team == LocalPlayer then continue end
        if not V.Character then continue end
        local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(Mouse.X, Mouse.Y), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
    end
end
local MT = getrawmetatable(game)
local OldNC = MT.__namecall
local OldIDX = MT.__index
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)
MT.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(MT, true)

while wait(0.00000001) do
    if Paused == false and _G.TracersEnabled then
        updateTraces()    
        
    elseif _G.TracersEnabled == false then
        for i, tracer in ipairs(Tracers) do
            tracer.Visible = false
        end
    end
    
    if Paused == false and _G.BoxEsp then
        
        for i, player in ipairs(BoxedPlayers) do
            if player.Name ~= plr.Name and isPlayerLoaded(player) then
                player = game.Players:FindFirstChild(player.Name)
                plrBox = Boxes[i]
                local _, withinScreenBounds = Camera:WorldToScreenPoint(player.Character.HumanoidRootPart.Position)
        
                if withinScreenBounds then
                    if plrBox.Visible == false then
                        plrBox.Visible = true
                    
                    end
                else
                    if plrBox.Visible == true then
                        plrBox.Visible = false
                    end
                end
                
                size, xDist, yDist = getBoxSizeForPlr(player)
                rootPos = WorldToScreen(player.Character.HumanoidRootPart.Position)
                plrBox.Size = size + Vector2.new(20, 20)
                plrBox.Position = rootPos - Vector2.new(xDist, yDist / 2)
                
                --Checking colors
                if _G.FREE_FOR_ALL == false then
                    if player.TeamColor == plr.TeamColor then
                        if plrBox.Color == Color3.fromRGB(255, 0, 0) then
                            plrBox.Color = Color3.fromRGB(0, 255, 255)
                        end
                    else
                        if plrBox.Color == Color3.fromRGB(0, 255, 255) then
                            plrBox.Color = Color3.fromRGB(255, 0, 0)
                        end
                    end
                else
                    if plrBox.Color == Color3.fromRGB(0, 255, 255) then
                            plrBox.Color = Color3.fromRGB(255, 0, 0)
                    end
                end
            end
        end
        for i, player in ipairs(BoxedPlayers) do
            player = game.Players:FindFirstChild(player.Name)
            if isPlayerLoaded(player) then
                if player.Character:FindFirstChild("HumanoidRootPart") then
                    plrBox = Boxes[i]
                    local _, withinScreenBounds = Camera:WorldToScreenPoint(player.Character.HumanoidRootPart.Position)
                    if withinScreenBounds then
                        if plrBox.Visible == false then
                            plrBox.Visible = true
                            
                        end
                    end
                end
            end
        end
    elseif _G.BoxEsp == false then
        for i, box in ipairs(Boxes) do
            box.Visible = false
        end
    end
    
end
