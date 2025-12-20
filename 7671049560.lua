local gameplaceId = game.PlaceId
local worldPlaceId = {
   76558904092080, 129009554587176
}

pcall(function()
   loadstring(game:HttpGet(string.format('https://raw.githubusercontent.com/Losenry/seraph.loader/refs/heads/main/localeGame/%s.lua', tostring(gameplaceId))))();
end)
