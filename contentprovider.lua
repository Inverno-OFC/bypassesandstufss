local __originalNamecall; 
__originalNamecall = hookmetamethod(game, "__namecall", function(object, ...)
    if getnamecallmethod() == "PreloadAsync" then
        return
    end
    return __originalNamecall(object, ...)
end)

local __originalSetMeta;
__originalSetMeta = hookfunction(setmetatable, function(tableRef, metaTable, ...)
    if metaTable["__mode"] then
        metaTable["__mode"] = nil
    end
    return __originalSetMeta(tableRef, metaTable, ...)
end)
