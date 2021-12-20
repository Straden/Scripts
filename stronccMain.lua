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
local loadedGame = false
if not gameToLink[game.PlaceId] then
    if (string.find((game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name):lower(),"aimblox")) then 
        loadstring(game:HttpGet((gameToLink[6808484692]),true))()
        loadedGame = true
    else 
        game.Players.LocalPlayer:Kick("Universal is still in development")
    end
end
if not loadedGame then 
loadstring(game:HttpGet((gameToLink[game.PlaceId]),true))()
end
