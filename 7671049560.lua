local gameplaceId = game.PlaceId
local worldPlaceId = {
   76558904092080, 129009554587176
}

xpcall(function()
    if table.find(worldPlaceId, gameplaceId) then
        if _G.LocateAPILink ~= nil then
            return loadstring(game:HttpGet(_G.LocateAPILink .. 'localeGame/' .. tostring(gameplaceId) .. '.lua'))();
        else
            warn('LocateAPILink is not defined')
        end
    else
        print('mismatch world place id, make sure to execute correctly')
        return ''
    end
end, warn)
