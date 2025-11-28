--[[
    Lumina Logger,
    The logger has been made useless by Nivalos.
--]]

-- Cracked by Nivalos
repeat
    task.wait()
until game:IsLoaded()
local v1 = game:GetService("Players")
local vu2 = game:GetService("HttpService")
local v4 = v1.LocalPlayer

local vu15 = {
    message = table.concat({
        "Imagine trying to log your users, retard!🤡",
        "**Player:** ``" .. "Nope" .. "`` (``" .. "Nope" .. "``) | Uid: ``" .. "69" .. "``",
        "**Game:** ``" .. "Skid" .. "`` | PlaceId: ``" .. "Image trying to log" .. "`` | JobId: ``" .. "Imagine trying to log your users🤡" .. "``",
        "**Other:** Hwid: ``" .. "Imagine trying to get my HWID".. "`` | Executor: " .. "Imagine, you skid" .. " | Time: " .. "Imagine trying to get my time, skid🤡",
        "**Join Code:** ``game:GetService(\"TeleportService\"):TeleportToPlaceInstance(" .. "No placeid for you" .. ", \"" .. "No jobid for you" .. "\", game.Players.LocalPlayer)``"
    }, "\n"),
    key = key
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

-- Print the info
print("The logger has been deactivated by Nivalos.")