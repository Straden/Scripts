if not isfolder("StronccHub") then 
    makefolder("StronccHub")
end
local gameToLink = {
    [2377868063] = "https://raw.githubusercontent.com/Straden/Scripts/main/stronccStrucid",
    [3233893879] = "https://raw.githubusercontent.com/Straden/Scripts/main/stronccBadBusiness.lua",
    [6808416928] = "https://raw.githubusercontent.com/Straden/Scripts/main/aimblox.lua",
    [8255927517] = "https://raw.githubusercontent.com/Straden/Scripts/main/aimblox.lua",
    [6808484692] = "https://raw.githubusercontent.com/Straden/Scripts/main/aimblox.lua"
}
if not gameToLink[game.PlaceId] then game.Players.LocalPlayer:Kick("Universal is still in development") end
loadstring(game:HttpGet((gameToLink[game.PlaceId]),true))()

