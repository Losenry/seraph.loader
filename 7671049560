local gameplaceId = game.PlaceId
local worldPlaceId = {
   76558904092080, 129009554587176
}

xpcall(function()
    if worldPlaceId[worldPlaceId] then
        if _G.LocateAPILink ~= nil then
            return loadstring(game:HttpGet(LocateAPILink .. 'localeGame/' .. tostring(gameplaceId) .. '.lua'))();
        end
    else
        print('mismatch world place id, make sure to execute correctly')
        return ''
    end
end, warn)
