--[[
    Lumina Die of Death,
    This is the Die of Death Lumina script, that has been cracked by Nivalos.
--]]

-- Cracked by Nivalos
local vu1 = "https://raw.githubusercontent.com/imnotnowy/obsireworked/main/"
local function v9(pu2)
    local v7, v8 = pcall(function()
        local v3, v4 = pcall(function()
            return game:HttpGet(vu1 .. pu2)
        end)
        if not (v3 and v4) then
            warn("Failed to download " .. pu2)
            return nil
        end
        local v5, v6 = loadstring(v4)
        if v5 then
            return v5()
        end
        warn("Failed to load string from " .. pu2 .. ": " .. tostring(v6))
        return nil
    end)
    if not v7 then
        warn("Error running " .. pu2 .. ": " .. tostring(v8))
    end
    return v8
end
if not isfolder("lumina/dod/themes") then
    makefolder("lumina/dod/themes")
end
if not isfile("lumina/dod/themes/default.txt") then
    writefile("lumina/dod/themes/default.txt", "lumina")
end
if not isfile("lumina/dod/themes/lumina.json") then
    writefile("lumina/dod/themes/lumina.json", "{\"MainColor\":\"2a2929\",\"FontFace\":\"Jura\",\"AccentColor\":\"ffffff\",\"OutlineColor\":\"22001c\",\"BackgroundColor\":\"000000\",\"FontColor\":\"ffffff\"}")
end
local vu10 = v9("Library.lua")
local v11 = v9("addons/SaveManager.lua")
local v12 = v9("addons/ThemeManager.lua")
local vu13 = vu10:CreateWindow({
    Title = "Lumina.wtf",
    Icon = "rbxassetid://99312207847076",
    Footer = "Lumina | Die of death - legit version | v1.4",
    NotifySide = "Right",
    Size = UDim2.fromOffset(600, 666),
    Resizable = true,
    Center = true
})
local v14 = game:GetService("Players")
local vu15 = v14.LocalPlayer
local vu16 = game:GetService("ReplicatedStorage")
local vu17 = game:GetService("HttpService")
local vu18 = game:GetService("RunService")
local v19 = game:GetService("SoundService")
local vu20 = game:GetService("TeleportService")
local vu21 = game:GetService("Lighting")
local v22 = game:GetService("ProximityPromptService")
local vu23 = game:GetService("CoreGui")
local v24 = vu10.Options
local v25 = vu10.Toggles
local v26 = {
    "Adrenaline",
    "Banana",
    "Block",
    "BonusPad",
    "Caretaker",
    "Cloak",
    "Dash",
    "Hotdog",
    "Punch",
    "Revolver",
    "Taunt"
}
local vu27 = require(vu15:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("Client"):WaitForChild("Modules"):WaitForChild("Movement"))
local vu28 = v26[1]
local vu29 = v26[2]
local vu30 = nil
local vu31 = pcall(function()
    return workspace.GameAssets.Teams.Survivor
end) and workspace.GameAssets.Teams.Survivor or nil
local vu32 = pcall(function()
    return workspace.GameAssets.Teams.Killer
end) and workspace.GameAssets.Teams.Killer or nil
local vu33 = false
local vu34 = false
local vu35 = {}
local vu36 = false
vu16:WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection")
local v37 = {
    homeTab = vu13:AddTab("Home", "home"),
    mainTab = vu13:AddTab("Main", "user"),
    visualTab = vu13:AddTab("Visuals", "eye"),
    uiSetsTab = vu13:AddTab("Settings", "settings")
}
local vu38 = nil
local v39, _ = v14:GetUserThumbnailAsync(vu15.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size180x180)
wait(5)
local vu40 = false
local vu41 = nil
local v42 = gethwid()
local vu43 = {}
local function v46()
    local v44, v45 = pcall(function()
        return game:HttpGet("https://luminaa.pages.dev/assets/base64strings.json")
    end)
    if v44 then
        vu43 = vu17:JSONDecode(v45)
    end
end
wait(3)
local vu47 = nil
local vu48 = {
    Brightness = game.Lighting.Brightness,
    Ambient = game.Lighting.Ambient,
    OutdoorAmbient = game.Lighting.OutdoorAmbient,
    FogEnd = game.Lighting.FogEnd
}
local vu49 = nil
local v50 = vu15.Character or vu15.CharacterAdded:Wait()
v50:WaitForChild("Humanoid")
v50:WaitForChild("HumanoidRootPart")
local vu51 = false
v22.PromptButtonHoldBegan:Connect(function(p52, _)
    if vu51 then
        fireproximityprompt(p52)
    end
end)
local vu53 = {
    "Pursuer",
    "Killer"
}
local vu54 = {
    "Badware",
    "Killer"
}
local vu55 = {
    "Artful",
    "Killer"
}
local vu56 = {
    "Harken",
    "Killer"
}
local vu57 = {
    "Killdroid",
    "Killer"
}
local vu58 = "https://discord.gg/xnUgd8yQG6"
local vu59 = nil
local vu60 = nil
key = "freekey"
local vu61 = vu16.Events.RemoteEvents.AbilitySelection
vu10.ForceCheckbox = math.random(100) <= 55
vu10:SetWatermark("Die of Death | " .. vu15.DisplayName .. " (" .. vu15.Name .. ")")
v11:SetLibrary(vu10)
v12:SetLibrary(vu10)
v11:IgnoreThemeSettings()
v11:SetFolder("lumina/dod")
v12:SetFolder("lumina/dod")
v46()
local function v67(p62)
    local v63, v64, v65 = ipairs(vu43)
    while true do
        local v66
        v65, v66 = v63(v64, v65)
        if v65 == nil then
            break
        end
        if v66 == p62 then
            return true
        end
    end
    return false
end
local function vu78()
    if not vu59 then
        vu59 = Instance.new("ScreenGui")
        vu59.Name = "FakeStaminaUI"
        vu59.ResetOnSpawn = false
        vu59.Parent = vu23
        local v68 = Instance.new("Frame")
        v68.Size = UDim2.new(0, 200, 0, 20)
        v68.Position = UDim2.new(0.5, - 100, 0.9, 0)
        v68.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        v68.BorderSizePixel = 0
        v68.Parent = vu59
        local vu69 = Instance.new("Frame")
        vu69.Size = UDim2.new(1, 0, 1, 0)
        vu69.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
        vu69.BorderSizePixel = 0
        vu69.Parent = v68
        local v70 = Instance.new("UICorner")
        v70.CornerRadius = UDim.new(0, 5)
        v70.Parent = v68
        local vu71 = Instance.new("TextLabel")
        vu71.Size = UDim2.new(1, 0, 1, 0)
        vu71.Position = UDim2.new(0, 0, 0, 0)
        vu71.BackgroundTransparency = 1
        vu71.TextColor3 = Color3.fromRGB(255, 255, 255)
        vu71.TextStrokeTransparency = 0
        vu71.TextScaled = true
        vu71.Font = Enum.Font.SourceSansBold
        vu71.Parent = v68
        local vu72 = vu27.MaxStamina
        local vu73 = vu27.MaxStamina
        local vu74 = 1
        local vu75 = 0.5
        local vu76 = 0
        vu60 = task.spawn(function()
            while task.wait(0.05) do
                if vu27.Stamina < vu73 then
                    vu72 = math.clamp(vu72 - vu74, 0, vu73)
                    vu76 = 0
                else
                    vu76 = vu76 + 0.05
                    if vu75 <= vu76 then
                        vu72 = math.clamp(vu72 + vu74, 0, vu73)
                    end
                end
                local v77 = vu72 / vu73
                vu69.Size = UDim2.new(v77, 0, 1, 0)
                vu71.Text = string.format("%d / %d", math.floor(vu72), vu73)
            end
        end)
    end
end
local function vu79()
    if vu60 then
        task.cancel(vu60)
        vu60 = nil
    end
    if vu59 then
        vu59:Destroy()
        vu59 = nil
    end
end
local function vu81(p80)
    return p80.PrimaryPart or (p80:FindFirstChild("HumanoidRootPart") or p80:FindFirstChildWhichIsA("BasePart"))
end
local function vu86(p82, p83, p84)
    if vu32 and vu32:FindFirstChild(p82.Name) then
        return Color3.fromRGB(255, 0, 0)
    elseif p83 and p84 then
        local v85 = p83 / p84
        if v85 > 0.7 then
            return Color3.fromRGB(0, 255, 0)
        elseif v85 > 0.3 then
            return Color3.fromRGB(255, 255, 0)
        else
            return Color3.fromRGB(255, 0, 0)
        end
    else
        return Color3.fromRGB(0, 255, 0)
    end
end
local function vu104(pu87)
    pcall(function()
        if pu87 then
            local v88 = vu81(pu87)
            if v88 then
                local v89 = pu87:FindFirstChildOfClass("Humanoid")
                local v90, v91
                if v89 then
                    v90 = v89.Health
                    v91 = v89.MaxHealth
                else
                    v90 = 0
                    v91 = 100
                end
                local v92 = vu86(pu87, v90, v91)
                local v93 = vu23:FindFirstChild("ESPFolder") or Instance.new("Folder")
                v93.Name = "ESPFolder"
                v93.Parent = vu23
                local v94 = pu87.Name .. "_ESP"
                local v95 = v93:FindFirstChild(v94)
                local v96 = 25
                local v97 = 25
                if v95 then
                    v95.Adornee = v88
                    local v98 = v95:FindFirstChild("ESP_Name")
                    if v98 then
                        v98.TextColor3 = v92
                    end
                    local v99 = v95:FindFirstChild("ESP_Health")
                    if v89 then
                        if v99 then
                            v99.TextColor3 = v92
                            v99.Text = math.floor(v90)
                        else
                            local v100 = Instance.new("TextLabel")
                            v100.Name = "ESP_Health"
                            v100.Size = UDim2.new(1, 0, 0, v97)
                            v100.Position = UDim2.new(0, 0, 0, v96)
                            v100.BackgroundTransparency = 1
                            v100.TextScaled = false
                            v100.TextSize = 10
                            v100.TextStrokeTransparency = 0
                            v100.TextColor3 = v92
                            v100.Text = math.floor(v90)
                            v100.Parent = v95
                        end
                    elseif v99 then
                        v99:Destroy()
                    end
                else
                    local v101 = Instance.new("BillboardGui")
                    v101.Name = v94
                    v101.Adornee = v88
                    v101.Size = UDim2.new(0, 100, 0, 50)
                    v101.StudsOffset = Vector3.new(0, 3, 0)
                    v101.AlwaysOnTop = true
                    local v102 = Instance.new("TextLabel")
                    v102.Name = "ESP_Name"
                    v102.Size = UDim2.new(1, 0, 0, v96)
                    v102.Position = UDim2.new(0, 0, 0, 0)
                    v102.BackgroundTransparency = 1
                    v102.TextScaled = false
                    v102.TextSize = 10
                    v102.TextStrokeTransparency = 0
                    v102.TextColor3 = v92
                    v102.Text = pu87.Name
                    v102.Parent = v101
                    if vu33 and (vu36 and v89) then
                        local v103 = Instance.new("TextLabel")
                        v103.Name = "ESP_Health"
                        v103.Size = UDim2.new(1, 0, 0, v97)
                        v103.Position = UDim2.new(0, 0, 0, v96)
                        v103.BackgroundTransparency = 1
                        v103.TextScaled = false
                        v103.TextSize = 10
                        v103.TextStrokeTransparency = 0
                        v103.TextColor3 = v92
                        v103.Text = math.floor(v90)
                        v103.Parent = v101
                    end
                    v101.Parent = v93
                    table.insert(vu35, v101)
                end
            end
        else
            return
        end
    end)
end
local function vu119()
    pcall(function()
        local v105 = vu23:FindFirstChild("ESPFolder")
        if v105 then
            if vu33 and vu36 then
                local v106, v107, v108 = pairs(vu31 and (vu31:GetChildren() or {}) or {})
                while true do
                    local v109
                    v108, v109 = v106(v107, v108)
                    if v108 == nil then
                        break
                    end
                    vu104(v109)
                end
                local v110, v111, v112 = pairs(vu32 and (vu32:GetChildren() or {}) or {})
                while true do
                    local v113
                    v112, v113 = v110(v111, v112)
                    if v112 == nil then
                        break
                    end
                    vu104(v113)
                end
            else
                local v114, v115, v116 = pairs(v105:GetChildren())
                while true do
                    local v117
                    v116, v117 = v114(v115, v116)
                    if v116 == nil then
                        break
                    end
                    local v118 = v117:FindFirstChild("ESP_Health")
                    if v118 then
                        v118:Destroy()
                    end
                end
            end
        else
            return
        end
    end)
end
local function vu134()
    pcall(function()
        local v120 = game:GetService("CoreGui"):FindFirstChild("ESPFolder")
        if not v120 then
            v120 = Instance.new("Folder")
            v120.Name = "ESPFolder"
            v120.Parent = game:GetService("CoreGui")
        end
        if vu33 then
            local v121, v122, v123 = pairs(vu31 and (vu31:GetChildren() or {}) or {})
            local v124 = {}
            while true do
                local v125
                v123, v125 = v121(v122, v123)
                if v123 == nil then
                    break
                end
                vu104(v125)
                v124[v125.Name .. "_ESP"] = true
            end
            local v126, v127, v128 = pairs(vu32 and (vu32:GetChildren() or {}) or {})
            while true do
                local v129
                v128, v129 = v126(v127, v128)
                if v128 == nil then
                    break
                end
                vu104(v129)
                v124[v129.Name .. "_ESP"] = true
            end
            local v130, v131, v132 = pairs(v120:GetChildren())
            while true do
                local v133
                v132, v133 = v130(v131, v132)
                if v132 == nil then
                    break
                end
                if not v124[v133.Name] then
                    v133:Destroy()
                end
            end
        else
            v120:ClearAllChildren()
            vu35 = {}
        end
    end)
end
local function vu155()
    pcall(function()
        local v135 = vu23:FindFirstChild("ESPFolder")
        if not v135 then
            v135 = Instance.new("Folder")
            v135.Name = "ESPFolder"
            v135.Parent = vu23
        end
        if vu34 then
            local v136 = workspace:WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Other")
            local v137, v138, v139 = pairs(v136:GetChildren())
            local v140 = {
                "MusicBox",
                "Wall",
                "Killbot",
                "Computer"
            }
            while true do
                local v141
                v139, v141 = v137(v138, v139)
                if v139 == nil then
                    break
                end
                if table.find(v140, v141.Name) then
                    local v142 = v141:GetDebugId() .. "_ESP"
                    local v143 = v135:FindFirstChild(v142)
                    if v143 then
                        v143.Adornee = v141.PrimaryPart or v141:FindFirstChildWhichIsA("BasePart")
                    else
                        local v144 = Instance.new("BillboardGui")
                        v144.Name = v142
                        v144.Adornee = v141.PrimaryPart or v141:FindFirstChildWhichIsA("BasePart")
                        v144.Size = UDim2.new(0, 100, 0, 50)
                        v144.StudsOffset = Vector3.new(0, 3, 0)
                        v144.AlwaysOnTop = true
                        local v145 = Instance.new("TextLabel")
                        v145.Size = UDim2.new(1, 0, 1, 0)
                        v145.BackgroundTransparency = 1
                        v145.Text = v141.Name
                        v145.TextStrokeTransparency = 0
                        v145.TextColor3 = Color3.fromRGB(255, 255, 0)
                        v145.Parent = v144
                        v144.Parent = v135
                    end
                end
            end
            local v146 = vu59.Adornee
            local v147, v148, v149 = pairs(v135:GetChildren())
            while true do
                local v150
                v149, v150 = v147(v148, v149)
                if v149 == nil then
                    break
                end
                if v146 and v146.Parent == nil then
                    v150:Destroy()
                end
            end
        else
            local v151, v152, v153 = pairs(v135:GetChildren())
            while true do
                local v154
                v153, v154 = v151(v152, v153)
                if v153 == nil then
                    break
                end
                if v154.Name:find("_ESP") then
                    v154:Destroy()
                end
            end
        end
    end)
end
local function vu166()
    local v156 = vu15.Character
    if v156 then
        v156 = vu15.Character:FindFirstChild("HumanoidRootPart")
    end
    if not v156 then
        return nil
    end
    if not vu32 or typeof(vu32.GetChildren) ~= "function" then
        pcall(function()
            vu32 = workspace.GameAssets and (workspace.GameAssets.Teams and workspace.GameAssets.Teams.Killer) or vu32
        end)
        if not vu32 or typeof(vu32.GetChildren) ~= "function" then
            return nil
        end
    end
    local v157 = math.huge
    local v158 = vu32
    local v159, v160, v161 = pairs(v158:GetChildren())
    local v162 = nil
    while true do
        local v163
        v161, v163 = v159(v160, v161)
        if v161 == nil then
            break
        end
        if v163 ~= vu15.Character and typeof(v163) == "Instance" then
            local v164 = v163:FindFirstChild("Head")
            if v164 and v164:IsA("BasePart") then
                local v165 = (v164.Position - v156.Position).Magnitude
                if v165 < v157 then
                    v162 = v163
                    v157 = v165
                end
            end
        end
    end
    return v162
end
local function vu171(p167)
    if p167 and vu15.Character then
        local v168 = vu15.Character:FindFirstChild("HumanoidRootPart")
        if v168 then
            local v169 = p167:FindFirstChild("Head")
            if v169 and v169:IsA("BasePart") then
                local v170 = Vector3.new(v169.Position.X, v168.Position.Y, v169.Position.Z)
                v168.CFrame = CFrame.lookAt(v168.Position, v170)
            end
        else
            return
        end
    else
        return
    end
end
local function vu173()
    if not vu41 then
        vu41 = vu18.RenderStepped:Connect(function()
            if vu40 then
                local v172 = vu166()
                if v172 then
                    vu171(v172)
                end
            end
        end)
    end
end
local function vu174()
    if vu41 then
        vu41:Disconnect()
        vu41 = nil
    end
end
local function vu175()
    if vu15.Character and hrp then
        workspace.CurrentCamera.CameraSubject = hrp
    end
end
vu175()
vu15.CharacterAdded:Connect(function(p176)
    p176:WaitForChild("HumanoidRootPart")
    vu175()
end)
local function vu179(p177, p178)
    vu61:FireServer({
        p177,
        p178
    })
end
local v180 = v37.homeTab:AddLeftGroupbox("Home")
local v181 = v37.homeTab:AddRightGroupbox("Other")
v180:AddImage("userThumbImg", {
    Image = v39,
    Height = 111
})
v180:AddLabel("Welcome back, " .. vu15.Name .. " !", true)
v180:AddLabel("If you\'re on pc, press <b>RIGHT CONTROL</b> to open/close the menu.", true)
v181:AddLabel("You can suggest features & report bugs on our discord by using <font color=\"rgb(76, 255, 205)\">/suggestion</font> and <font color=\"rgb(76, 255, 205)\">report bugs with the ticket system</font> !", true)
v181:AddDivider()
v181:AddLabel("Premium Preview:", true)
v181:AddLabel("(These will not do anything!)", true)
v181:AddDivider()
v181:AddDropdown("preview1", {
    Text = "1st ability",
    Values = v26,
    Default = v26[1],
    Multi = false
})
v181:AddDropdown("preview2", {
    Text = "2nd ability",
    Values = v26,
    Default = v26[2],
    Multi = false
})
v181:AddButton({
    Text = "Apply",
    Tooltip = "apply your selected abilities"
})
v181:AddDivider()
v181:AddToggle("preview3", {
    Text = "Aimbot",
    Tooltip = "if you toggle this you will miss every shot.",
    Default = false,
    Risky = true
})
v181:AddToggle("preview4", {
    Text = "Stamina Calc",
    Tooltip = "this will show how much stamina you have left",
    Default = false
})
v181:AddLabel("Get premium in our discord server!", true)
local v182 = v37.mainTab:AddLeftGroupbox("Main")
local v183 = v37.mainTab:AddRightTabbox("Picker")
local v184 = v37.mainTab:AddRightGroupbox("Other")
local v185 = v183:AddTab("Picker")
local v186 = v183:AddTab("SubPicker")
v182:AddToggle("infstaminatoggle", {
    Text = "Infinite Stamina",
    Tooltip = "Makes your stamina not drain, making it infinite.",
    Default = false,
    Callback = function(pu187)
        pcall(function()
            if vu27 then
                if pu187 then
                    vu30 = vu18.Heartbeat:Connect(function()
                        pcall(function()
                            vu27.Stamina = vu27.MaxStamina
                        end)
                    end)
                elseif vu30 then
                    vu30:Disconnect()
                    vu30 = nil
                end
            end
        end)
    end
})
v182:AddDivider()
v182:AddLabel("MAKE SURE TO WAIT AROUND 1.5 SECONDS IF YOU\'RE DOING THE PC ALONE.", true)
v182:AddToggle("instainteractToggle", {
    Text = "Insta-Interact",
    Default = false,
    Callback = function(p188)
        vu51 = p188
    end
})
v182:AddDivider()
v185:AddButton({
    Text = "Sentinel",
    Tooltip = "Gun + Punch",
    DoubleClick = true,
    Func = function()
        vu179("Revolver", "Punch")
    end
})
v185:AddButton({
    Text = "Survivor",
    Tooltip = "Dash + Cloak",
    DoubleClick = true,
    Func = function()
        vu179("Dash", "Cloak")
    end
})
v185:AddButton({
    Text = "Support",
    Tooltip = "Caretaker + Bonuspad",
    DoubleClick = true,
    Func = function()
        vu179("Caretaker", "Bonuspad")
    end
})
v186:AddButton({
    Text = "Careless",
    Tooltip = "Any VS Caretaker, Caretaker + dash",
    DoubleClick = true,
    Func = function()
        vu179("Caretaker", "Dash")
    end
})
v186:AddButton({
    Text = "Showtime",
    Tooltip = "Artful VS Banana, Banana + dash",
    DoubleClick = true,
    Func = function()
        vu179("Banana", "Dash")
    end
})
v186:AddButton({
    Text = "Vigilante",
    Tooltip = "Killdroid VS Revolver, Revolver + Cloak",
    DoubleClick = true,
    Func = function()
        vu179("Revolver", "Cloak")
    end
})
v182:AddLabel("Quick Equipping, also this will buy the character if you dont own it", true)
v182:AddButton({
    Text = "Pursuer",
    Tooltip = "equip pursuer",
    Func = function()
        vu16:WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("PurchaseItem"):InvokeServer(unpack(vu53))
    end
})
v182:AddButton({
    Text = "Badware",
    Tooltip = "equip badware",
    Func = function()
        vu16:WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("PurchaseItem"):InvokeServer(unpack(vu54))
    end
})
v182:AddButton({
    Text = "Artful",
    Tooltip = "equip artful",
    Func = function()
        vu16:WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("PurchaseItem"):InvokeServer(unpack(vu55))
    end
})
v182:AddButton({
    Text = "Harken",
    Tooltip = "equip harken",
    Func = function()
        vu16:WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("PurchaseItem"):InvokeServer(unpack(vu56))
    end
})
v182:AddButton({
    Text = "Killdroid",
    Tooltip = "equip killdroid",
    Func = function()
        vu16:WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("PurchaseItem"):InvokeServer(unpack(vu57))
    end
})
local v189, v190, v191 = pairs({
    Mequot = "rbxassetid://139756997762217",
    OmegaLMS = "rbxassetid://134000197680004",
    Loveware = "rbxassetid://126121764810861",
    Devesto = "rbxassetid://133547261922555",
    Teapot = "rbxassetid://82014737665440",
    Y2K = "rbxassetid://78523210366533",
    Careless = "rbxassetid://79377280659422",
    FuturisticKilldroid = "rbxassetid://129277549166540"
})
local vu192 = vu179
local vu193 = {}
while true do
    local v194
    v191, v194 = v189(v190, v191)
    if v191 == nil then
        break
    end
    local vu195 = Instance.new("Sound")
    vu195.SoundId = v194
    vu195.Volume = 2
    vu195.Looped = true
    vu195.Parent = v19
    vu193[v191] = vu195
    v184:AddButton({
        Text = v191,
        DoubleClick = true,
        Func = function()
            vu195:Play()
        end
    })
end
v184:AddDivider()
v184:AddButton({
    Text = "Stop Sounds",
    DoubleClick = true,
    Func = function()
        local v196, v197, v198 = pairs(vu193)
        while true do
            local v199
            v198, v199 = v196(v197, v198)
            if v198 == nil then
                break
            end
            v199:Stop()
        end
    end
})
local v200 = v37.visualTab:AddLeftGroupbox("ESP")
v200:AddToggle("esptoggle", {
    Text = "ESP",
    Tooltip = "see civilians + killers thru walls",
    Default = false,
    Callback = function(pu201)
        pcall(function()
            vu33 = pu201
            vu134()
        end)
    end
})
v200:AddToggle("healthesptoggle", {
    Text = "Health ESP",
    Tooltip = "see civilians + killers health",
    Default = false,
    Callback = function(pu202)
        pcall(function()
            vu36 = pu202
            vu119()
        end)
    end
})
v200:AddToggle("objesptoggle", {
    Text = "Object ESP",
    Tooltip = "see killer\'s abilities like walls, killbot, musicbox, computers etc",
    Default = false,
    Callback = function(pu203)
        pcall(function()
            vu34 = pu203
            vu155()
        end)
    end
})
vu18.Heartbeat:Connect(function(_)
    pcall(function()
        if vu33 then
            vu134()
        end
        if vu34 then
            vu155()
        end
        if vu36 then
            vu119()
        end
    end)
end)
if v67(v42) then
    vu10:Notify("welcome back brochacho", 5)
    local v204 = vu13:AddTab("Premium", "crown")
    local v205 = v204:AddLeftGroupbox("Ability Picker")
    v205:AddDropdown("abilityPickerOne", {
        Text = "1st ability",
        Values = v26,
        Default = v26[1],
        Multi = false,
        Callback = function(p206)
            vu28 = p206
        end
    })
    v205:AddDropdown("abilityPickerTwo", {
        Text = "2nd ability",
        Values = v26,
        Default = v26[2],
        Multi = false,
        Callback = function(p207)
            vu29 = p207
        end
    })
    v205:AddButton({
        Text = "Apply",
        Tooltip = "apply your selected abilities",
        Func = function()
            pcall(function()
                vu192(vu28, vu29)
            end)
        end
    })
    v204:AddRightGroupbox("Aimbot"):AddToggle("aimbottoggleFr", {
        Text = "Aimbot",
        Tooltip = "if you toggle this you will miss every shot.",
        Default = false,
        Risky = true
    })
    v25.aimbottoggleFr:OnChanged(function(p208)
        if p208 then
            if not vu47 then
                vu40 = false
                vu47 = vu10:AddUndraggableButton("lock", function()
                    vu40 = not vu40
                    if vu40 then
                        vu47.Button.Text = "unlock"
                        vu173()
                    else
                        vu47.Button.Text = "lock"
                        vu174()
                    end
                end)
                vu47.Button.Position = UDim2.new(0.7, 0, 0, - 10)
                vu47.Button.AnchorPoint = Vector2.new(0.5, 0)
            end
        elseif vu47 then
            vu174()
            vu40 = false
            vu47.Button:Destroy()
            vu47 = nil
        end
    end)
    v204:AddLeftGroupbox("UI-Related"):AddToggle("staminaCalcToggle", {
        Text = "Stamina Calc",
        Tooltip = "[HUGE BETA!!] this will show how much stamina you have left",
        Default = false
    })
    v25.staminaCalcToggle:OnChanged(function(p209)
        if p209 then
            vu78()
        else
            vu79()
        end
    end)
end
local v210 = v37.uiSetsTab:AddLeftGroupbox("Menu")
local v211 = v37.uiSetsTab:AddRightTabbox("UI")
local v212 = v211:AddTab("UI")
local v213 = v211:AddTab("Other")
v210:AddCheckbox("fullbrightCheckbox", {
    Text = "Ambient Changes",
    Tooltip = "fullbright + no fog",
    Default = false,
    Callback = function(p214)
        if p214 then
            if vu49 then
                vu49:Disconnect()
            end
            vu49 = vu18.RenderStepped:Connect(function()
                vu21.Brightness = 2
                vu21.Ambient = Color3.fromRGB(255, 255, 255)
                vu21.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
                vu21.FogEnd = 100000
            end)
        else
            if vu49 then
                vu49:Disconnect()
                vu49 = nil
            end
            vu21.Brightness = vu48.Brightness
            vu21.Ambient = vu48.Ambient
            vu21.OutdoorAmbient = vu48.OutdoorAmbient
            vu21.FogEnd = vu48.FogEnd
        end
    end
})
v213:AddInput("JobIdInput", {
    Text = "Job Id",
    ClearTextOnFocus = true,
    AllowEmpty = false,
    Default = "",
    Placeholder = game.JobId,
    Callback = function(p215)
        vu38 = p215
    end
})
v213:AddButton({
    Text = "Teleport",
    Tooltip = "enter a jobid to use this",
    Func = function()
        vu20:TeleportToPlaceInstance(game.placeId, vu38, vu15)
    end
})
v213:AddButton({
    Text = "Copy Job Id",
    Func = function()
        pcall(function()
            setclipboard(game.JobId)
        end)
    end
})
v210:AddToggle("CompactToggle", {
    Text = "Compact Icons",
    Default = false,
    Callback = function(p216)
        vu13:SetCompact(p216)
    end
})
v210:AddDivider()
v210:AddButton({
    Text = "Discord",
    Func = function()
        setclipboard(vu58)
    end
}):AddButton({
    Text = "Unload",
    Func = function()
        vu10:Unload()
    end
})
v212:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {
    Default = "RightControl",
    NoUI = true,
    Text = "Menu keybind"
})
v212:AddDropdown("DPIDropdown", {
    Values = {
        "50%",
        "75%",
        "100%",
        "125%",
        "150%",
        "175%",
        "200%"
    },
    Default = "100%",
    Text = "DPI",
    Callback = function(p217)
        local v218 = p217:gsub("%%", "")
        vu10:SetDPIScale((tonumber(v218)))
    end
})
vu10.ToggleKeybind = v24.MenuKeybind
local v219 = vu15.PlayerGui.MainGui.SideTab.Settings.Frame.ScrollingFrame.Music.Bio
local v220 = vu15.PlayerGui.MainGui.SideTab.Buttons.Folder.AFK
require(vu15.PlayerGui.MainGui.Client.Modules.UI.Credits).CreateCredit({
    Name = "Jaquavis6741",
    Bio = "Made Lumina and the features.",
    Icon = "rbxassetid://99312207847076",
    Category = "Main"
})
require(vu15.PlayerGui.MainGui.Client.Modules.UI.Credits).CreateCredit({
    Name = "nivalos",
    Bio = "Cracked the script, and disabled the retarded logger.",
    Icon = "rbxassetid://99312207847076",
    Category = "Main"
})
v219.Text = "You fucking suck if you disable this. From: Bling Pursuer, To: " .. vu15.DisplayName .. "."
v220.Text = "thanks for using Lumina <3"
v12:ApplyToTab(v37.uiSetsTab)
v11:BuildConfigSection(v37.uiSetsTab)
v11:LoadAutoloadConfig()
v12:LoadDefault()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zmwtf1/Lumina/refs/heads/main/Cracked/Logger.lua",true))()