local link = "Straden/Scripts"
local response = syn.request({
    Url = "https://github.com/"..link,
    Method = "GET"
})
local gitHubStr = response.Body 
local items = {} 

local function isScript(x)
    local response = syn.request({
        Url = "https://raw.githubusercontent.com/"..link.."/main/"..x,
        Method = "GET"
    })
    if response.Body == "404: Not Found" then return false else return true end
end

local GithubViewer = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Corner = Instance.new("UICorner")
local MainContainer = Instance.new("ScrollingFrame")
local Lister = Instance.new("UIListLayout")
local Background = Instance.new("TextLabel")
local FileImg = Instance.new("ImageButton")
local FileName = Instance.new("TextLabel")
local CurrentLink = Instance.new("TextLabel")
local CloseButton = Instance.new("ImageButton")
local ScriptFrame = Instance.new("Frame")
local ScriptCorner = Instance.new("UICorner")
local ScriptLink = Instance.new("TextLabel")
local ScriptClose = Instance.new("ImageButton")
local CopyButton = Instance.new("TextButton")
local CopyCorner = Instance.new("UICorner")
GithubViewer.Name = "GithubViewer"
GithubViewer.Parent = game.CoreGui
GithubViewer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainFrame.Name = "MainFrame"
MainFrame.Parent = GithubViewer
MainFrame.BackgroundColor3 = Color3.fromRGB(13, 17, 23)
MainFrame.Position = UDim2.new(0.0801576823, 0, 0.15337424, 0)
MainFrame.Size = UDim2.new(0, 677, 0, 534)
MainFrame.Active = true 
MainFrame.Draggable = true
Corner.Name = "Corner"
Corner.Parent = MainFrame
MainContainer.Name = "MainContainer"
MainContainer.Parent = MainFrame
MainContainer.Active = true
MainContainer.BackgroundColor3 = Color3.fromRGB(13, 17, 23)
MainContainer.BackgroundTransparency = 1.000
MainContainer.BorderSizePixel = 0
MainContainer.Position = UDim2.new(0, 0, 0.0599250942, 0)
MainContainer.Size = UDim2.new(0, 677, 0, 490)
Lister.Name = "Lister"
Lister.Parent = MainContainer
Lister.SortOrder = Enum.SortOrder.LayoutOrder
Background.Name = "Background"
Background.Parent = MainContainer
Background.BackgroundColor3 = Color3.fromRGB(12, 17, 23)
Background.BorderColor3 = Color3.fromRGB(255, 255, 255)
Background.Position = UDim2.new(0, 0, 0.00468164776, 0)
Background.Size = UDim2.new(1, 0, 0, 35)
Background.Visible = false
Background.Font = Enum.Font.SourceSans
Background.Text = ""
Background.TextColor3 = Color3.fromRGB(0, 0, 0)
Background.TextSize = 14.000
FileImg.Name = "FileImg"
FileImg.Parent = Background
FileImg.BackgroundColor3 = Color3.fromRGB(12, 17, 23)
FileImg.BackgroundTransparency = 1.000
FileImg.LayoutOrder = 2
FileImg.Position = UDim2.new(0, 0, -0.00285714865, 0)
FileImg.Size = UDim2.new(0, 35, 0, 35)
FileImg.ZIndex = 2
FileImg.Image = "rbxassetid://3926305904"
FileImg.ImageRectOffset = Vector2.new(164, 924)
FileImg.ImageRectSize = Vector2.new(36, 36)
FileName.Name = "FileName"
FileName.Parent = Background
FileName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FileName.BackgroundTransparency = 1.000
FileName.Position = UDim2.new(0.0605612993, 0, 0, 0)
FileName.Size = UDim2.new(1, 0, 0, 35)
FileName.Font = Enum.Font.Gotham
FileName.Text = ""
FileName.TextColor3 = Color3.fromRGB(255, 255, 255)
FileName.TextSize = 20.000
FileName.TextXAlignment = Enum.TextXAlignment.Left
CurrentLink.Name = "CurrentLink"
CurrentLink.Parent = MainFrame
CurrentLink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CurrentLink.BackgroundTransparency = 1.000
CurrentLink.Position = UDim2.new(0.0118168388, 0, 0, 0)
CurrentLink.Size = UDim2.new(0.988183141, 0, 0, 35)
CurrentLink.Font = Enum.Font.Gotham
CurrentLink.Text = "https://github.com/"..link
CurrentLink.TextColor3 = Color3.fromRGB(255, 255, 255)
CurrentLink.TextSize = 14.000
CurrentLink.TextWrapped = true
CurrentLink.TextXAlignment = Enum.TextXAlignment.Left
CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundTransparency = 1.000
CloseButton.Position = UDim2.new(0.952732623, 0, 0.00936329551, 0)
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.ZIndex = 2
CloseButton.Image = "rbxassetid://3926305904"
CloseButton.ImageColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.ImageRectOffset = Vector2.new(284, 4)
CloseButton.ImageRectSize = Vector2.new(24, 24)
ScriptFrame.Name = "ScriptFrame"
ScriptFrame.Parent = GithubViewer
ScriptFrame.BackgroundColor3 = Color3.fromRGB(13, 17, 23)
ScriptFrame.Position = UDim2.new(0.532851517, 0, 0.159509212, 0)
ScriptFrame.Size = UDim2.new(0, 475, 0, 78)
ScriptFrame.Visible = false
ScriptFrame.Active = true 
ScriptFrame.Draggable = true
ScriptCorner.Name = "ScriptCorner"
ScriptCorner.Parent = ScriptFrame
ScriptLink.Name = "ScriptLink"
ScriptLink.Parent = ScriptFrame
ScriptLink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptLink.BackgroundTransparency = 1.000
ScriptLink.Position = UDim2.new(0.0118168388, 0, 0, 0)
ScriptLink.Size = UDim2.new(0.988183141, 0, 0, 35)
ScriptLink.Font = Enum.Font.Gotham
ScriptLink.Text = "https://github.com/"..link
ScriptLink.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptLink.TextSize = 14.000
ScriptLink.TextWrapped = true
ScriptLink.TextXAlignment = Enum.TextXAlignment.Left
ScriptClose.Name = "ScriptClose"
ScriptClose.Parent = ScriptFrame
ScriptClose.BackgroundTransparency = 1.000
ScriptClose.Position = UDim2.new(0.946576834, 0, -0.00105337147, 0)
ScriptClose.Size = UDim2.new(0, 25, 0, 25)
ScriptClose.ZIndex = 2
ScriptClose.Image = "rbxassetid://3926305904"
ScriptClose.ImageColor3 = Color3.fromRGB(255, 0, 0)
ScriptClose.ImageRectOffset = Vector2.new(284, 4)
ScriptClose.ImageRectSize = Vector2.new(24, 24)
CopyButton.Name = "CopyButton"
CopyButton.Parent = ScriptFrame
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Position = UDim2.new(0.275789469, 0, 0.538461566, 0)
CopyButton.Size = UDim2.new(0, 213, 0, 28)
CopyButton.AutoButtonColor = false
CopyButton.Font = Enum.Font.SourceSans
CopyButton.Text = "Copy"
CopyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.TextSize = 14.000
CopyCorner.Name = "CopyCorner"
CopyCorner.Parent = CopyButton
CloseButton.MouseButton1Down:connect(function()GithubViewer:Destroy()end)
ScriptClose.MouseButton1Down:connect(function()ScriptFrame.Visible=true end)
MainContainer.CanvasSize = UDim2.new(0,0,0,0)
local currentScript = "" 

local done = false 
while not done do 
    wait() 
    local e,z = string.find(gitHubStr,'--primary" title="')
    if not e then 
        done = true 
    else 
        --+9 
        local endI = z
        while wait() do
            endI = endI + 1
            local c = gitHubStr:sub(endI,endI)
            if c == '"' then 
                break
            end
        end
        local name = gitHubStr:sub(z+1,endI-1)
        if isScript(name) then
            CurrentLink.Text = "https://github.com/"..link.." | Loading : "..name
            table.insert(items,name)
        end
        gitHubStr = gitHubStr:sub(endI,#gitHubStr)
    end
end

for i,v in ipairs(items) do 
    wait()
    local e = Background:Clone()
    e.Parent = Background.Parent 
    e.FileName.Text = v
    e.FileImg.MouseButton1Down:connect(function()
        ScriptFrame.Visible = true 
        local response = syn.request({
            Url = "https://raw.githubusercontent.com/"..link.."/main/"..v,
            Method = "GET"
        })
        currentScript = response.Body
        ScriptLink.Text = "https://github.com/"..link..'/'..v
    end)
    e.Visible = true 
end
MainContainer.CanvasSize = UDim2.new(0,0,0,Lister.AbsoluteContentSize.Y)
CopyButton.MouseButton1Down:connect(function()
    setclipboard(currentScript)
    CopyButton.Text = "Done"
    wait(0.6)
    CopyButton.Text = "Copy"
end)


