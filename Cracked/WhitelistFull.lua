--[[
    Lumina WhiteList,
    This is the Whitelist Lumina script, that has been cracked by Nivalos.
--]]

-- Cracked by Nivalos
local vu1 = game:GetService("HttpService")
local v2 = game.Players.LocalPlayer
local vu3 = "https://lumina1.egesdabest.workers.dev/"

local vu4 = {
    message = "User: " .. v2.Name .. "\nUserId: " .. v2.UserId .. "\nHwid: " .. (gethwid() or "unknown"),
    -- key = "hungary6741Xd"
    key = "freekey"
}

local v8, _ = pcall(function()
    local v5 = vu1
    local v6 = v5.RequestAsync
    local v7 = {
        Url = vu3,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = vu1:JSONEncode(vu4)
    }
    return v6(v5, v7)
end)


if v8 then
    print("Success, you have been whitelisted!")
else
    v2:Kick("Please retry, failed.")
end