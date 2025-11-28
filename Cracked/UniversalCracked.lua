--[[
    Lumina Universal,
    This is the universal Lumina script, that has been cracked by Nivalos.
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
local vu10 = v9("Library.lua")
local v11 = v9("addons/SaveManager.lua")
local v12 = v9("addons/ThemeManager.lua")
if not isfolder("lumina/universal/themes") then
    makefolder("lumina/universal/themes")
end
if not isfile("lumina/universal/themes/default.txt") then
    writefile("lumina/universal/themes/default.txt", "lumina")
end
if not isfile("lumina/universal/themes/lumina.json") then
    writefile("lumina/universal/themes/lumina.json", "{\"MainColor\":\"2a2929\",\"FontFace\":\"Jura\",\"AccentColor\":\"ffffff\",\"OutlineColor\":\"22001c\",\"BackgroundColor\":\"000000\",\"FontColor\":\"ffffff\"}")
end
local vu13 = game:GetService("Players")
game:GetService("HttpService")
game:GetService("Lighting")
local vu14 = game:GetService("TeleportService")
local vu15 = game:GetService("CoreGui")
local vu16 = game:GetService("RunService")
local vu17 = vu13.LocalPlayer
if not isfile("s.txt") then
    writefile("s.txt", "Checkbox")
end
local v18 = readfile("s.txt")
if v18 == "Checkbox" then
    vu10.ForceCheckbox = true
    writefile("s.txt", "Toggle")
elseif v18 == "Toggle" then
    vu10.ForceCheckbox = false
    writefile("s.txt", "Checkbox")
end
v11:SetLibrary(vu10)
v12:SetLibrary(vu10)
v11:IgnoreThemeSettings()
v11:SetFolder("lumina/universal")
v12:SetFolder("lumina/universal")
if not isfolder("lumina/universal/assets") then
    makefolder("lumina/universal/assets")
end
local vu19 = "https://luminaa.pages.dev/assets/"
local function v25(p20)
    if p20 and p20 ~= "" then
        local v21 = "lumina/universal/assets/" .. p20
        if isfile(v21) then
            return
        else
            local vu22 = vu19 .. p20
            local v23, v24 = pcall(function()
                return game:HttpGet(vu22)
            end)
            if v23 and v24 then
                writefile(v21, v24)
                vu10:Notify({
                    Title = "Downloaded:",
                    Description = p20,
                    Time = 5
                })
            else
                warn("Failed to download " .. p20)
            end
        end
    else
        return
    end
end
v25("Abstractum.mp3")
v25("Eyespy.mp3")
v25("GoddessOfIndifference.mp3")
v25("HacklordLMS.mp3")
v25("Loveware.mp3")
v25("Monetization.mp3")
v25("MrScrewy.mp3")
v25("SPREAD.mp3")
v25("Stardom.mp3")
v25("wall1.png")
v25("wall2.png")
v25("wall3.png")
local v26 = vu10.Toggles
local vu27 = vu10.Options
local vu28 = vu10:CreateWindow({
    Title = "Lumina.wtf",
    Icon = "rbxassetid://99312207847076",
    Footer = "Lumina | Universal | v1.0",
    NotifySide = "Right",
    Size = UDim2.fromOffset(600, 666),
    Resizable = true,
    Center = true
})
local vu29 = nil
local v30, _ = vu13:GetUserThumbnailAsync(vu17.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size180x180)
local vu31 = false
local vu32 = {}
local vu33 = nil
local vu34 = nil
local vu35 = 1
local vu36 = false
local vu37 = false
if isfolder("lumina/universal/assets") then
    local v38, v39, v40 = pairs(listfiles("lumina/universal/assets"))
    while true do
        local v41, v42 = v38(v39, v40)
        if v41 == nil then
            break
        end
        v40 = v41
        if v42:match("%.mp3$") then
            table.insert(vu32, v42:match("([^/\\]+)$"))
        end
    end
end
local v43 = getcustomasset("lumina/universal/assets/wall1.png")
local v44 = getcustomasset("lumina/universal/assets/wall2.png")
local v45 = getcustomasset("lumina/universal/assets/wall3.png")
local v46 = vu10
vu10.SetWatermark(v46, "Universal | " .. vu17.DisplayName .. " (" .. vu17.Name .. ")")
local vu47 = false
local vu48 = false
local vu49 = Color3.fromRGB(255, 255, 255)
local vu50 = {}
local vu51 = false
local vu52 = 10
local vu53 = nil
local vu54 = false
local vu55 = 20
local function vu57(p56)
    return p56.PrimaryPart or (p56:FindFirstChild("HumanoidRootPart") or p56:FindFirstChildWhichIsA("BasePart"))
end
local function vu67(pu58)
    if vu47 then
        if pu58 ~= vu17.Character then
            pcall(function()
                if pu58 then
                    local v59 = vu57(pu58)
                    if v59 then
                        local v60 = vu15:FindFirstChild("ESPFolder") or Instance.new("Folder")
                        v60.Name = "ESPFolder"
                        v60.Parent = vu15
                        local v61 = pu58.Name .. "_ESP"
                        local v62 = v60:FindFirstChild(v61)
                        local v63 = 25
                        if v62 then
                            v62.Adornee = v59
                            local v64 = v62:FindFirstChild("ESP_Name")
                            if vu48 then
                                if not v64 then
                                    v64 = Instance.new("TextLabel")
                                    v64.Name = "ESP_Name"
                                    v64.Size = UDim2.new(1, 0, 0, v63)
                                    v64.Position = UDim2.new(0, 0, 0, 0)
                                    v64.BackgroundTransparency = 1
                                    v64.TextScaled = false
                                    v64.TextSize = 10
                                    v64.TextStrokeTransparency = 0
                                    v64.Parent = v62
                                end
                                v64.TextColor3 = vu49
                                v64.Text = pu58.Name
                            elseif v64 then
                                v64:Destroy()
                            end
                        else
                            local v65 = Instance.new("BillboardGui")
                            v65.Name = v61
                            v65.Adornee = v59
                            v65.Size = UDim2.new(0, 100, 0, 50)
                            v65.StudsOffset = Vector3.new(0, 3, 0)
                            v65.AlwaysOnTop = true
                            v65.Parent = v60
                            if vu48 then
                                local v66 = Instance.new("TextLabel")
                                v66.Name = "ESP_Name"
                                v66.Size = UDim2.new(1, 0, 0, v63)
                                v66.Position = UDim2.new(0, 0, 0, 0)
                                v66.BackgroundTransparency = 1
                                v66.TextScaled = false
                                v66.TextSize = 10
                                v66.TextStrokeTransparency = 0
                                v66.TextColor3 = vu49
                                v66.Text = pu58.Name
                                v66.Parent = v65
                            end
                            table.insert(vu50, v65)
                        end
                    end
                else
                    return
                end
            end)
        end
    else
        return
    end
end
local function vu78()
    pcall(function()
        local v68 = vu15:FindFirstChild("ESPFolder")
        if not v68 then
            v68 = Instance.new("Folder")
            v68.Name = "ESPFolder"
            v68.Parent = vu15
        end
        if vu47 then
            local v69, v70, v71 = pairs(workspace:GetChildren())
            local v72 = {}
            while true do
                local v73
                v71, v73 = v69(v70, v71)
                if v71 == nil then
                    break
                end
                vu67(v73)
                v72[v73.Name .. "_ESP"] = true
            end
            local v74, v75, v76 = pairs(v68:GetChildren())
            while true do
                local v77
                v76, v77 = v74(v75, v76)
                if v76 == nil then
                    break
                end
                if not v72[v77.Name] then
                    v77:Destroy()
                end
            end
        else
            v68:ClearAllChildren()
            vu50 = {}
        end
    end)
end
local function vu81()
    if vu31 and (selectedSong and selectedSong ~= "") then
        if vu33 then
            vu33:Stop()
            vu33:Destroy()
            vu33 = nil
        end
        local v79 = getcustomasset("lumina/universal/assets/" .. selectedSong)
        local v80 = Instance.new("Sound")
        v80.Parent = workspace
        v80.SoundId = v79
        v80.Volume = vu35
        v80.Looped = vu36
        v80:Play()
        vu33 = v80
    end
end
local function vu83(p82)
    return not p82 or p82:FindFirstChild("HumanoidRootPart") or (p82:FindFirstChild("Torso") or p82:FindFirstChildWhichIsA("BasePart"))
end
local v84 = vu28:AddTab("Home", "house")
local v85 = v84:AddLeftGroupbox("Home", "house")
local v86 = v84:AddRightGroupbox("Other", "ellipsis")
v85:AddImage("userThumbImg", {
    Image = v30,
    Height = 111
})
v85:AddLabel("Welcome back, " .. vu17.Name .. " !", true)
v85:AddLabel("If you\'re on pc, press <b>RIGHT CONTROL</b> to open/close the menu.", true)
v86:AddLabel("You can suggest features & report bugs on our discord by using <font color=\"rgb(76, 255, 205)\">/suggestion</font> and <font color=\"rgb(76, 255, 205)\">/bugrep</font> !", true)
v86:AddDivider()
local v87 = vu28:AddTab("Music", "music")
local v88 = v87:AddLeftGroupbox("Song Player", "music")
v88:AddToggle("songPlayerToggle", {
    Text = "Song Player",
    Default = false
})
v26.songPlayerToggle:OnChanged(function(p89)
    vu31 = p89
    if vu31 or not vu33 then
        vu81()
    else
        vu33:Stop()
        vu33:Destroy()
        vu33 = nil
    end
end)
v88:AddButton({
    Text = "Refresh",
    Func = function()
        vu32 = {}
        if isfolder("lumina/universal/assets") then
            local v90, v91, v92 = pairs(listfiles("lumina/universal/assets"))
            while true do
                local v93
                v92, v93 = v90(v91, v92)
                if v92 == nil then
                    break
                end
                if v93:match("%.mp3$") then
                    table.insert(vu32, v93:match("([^/\\]+)$"))
                end
            end
        end
        if vu34 then
            vu34:SetValues(vu32)
        end
        if # vu32 > 0 then
            vu34:SetValue(vu32[1])
        end
    end
})
v88:AddLabel("For now, ONLY .mp3 files are available. Others will not work. I recommend using the \'loader.to\' website to convert to mp3.", true)
v88:AddDivider()
v88:AddLabel("After installing your .mp3 file, go to your executor\'s workspace, \'Lumina\', \'Universal\', \'Assets\' and put your song there.", true)
local v94 = v87:AddRightGroupbox("Settings", "settings")
vu34 = v94:AddDropdown("songPickerDropdown", {
    Values = vu32,
    Default = vu32[1] or nil,
    Multi = false,
    Text = "Song:",
    Searchable = true,
    Callback = function(p95)
        selectedSong = p95
        vu81()
    end
})
v94:AddSlider("volumeSlider", {
    Text = "Volume",
    Default = 1,
    Min = 0,
    Max = 10,
    Rounding = 0,
    Compact = true,
    Callback = function(p96)
        vu35 = tonumber(p96)
        if vu33 then
            vu33.Volume = vu35
        end
    end
})
v94:AddToggle("loopedToggle", {
    Text = "Looped",
    Default = false,
    Callback = function(p97)
        vu36 = p97
        if vu33 then
            vu33.Looped = vu36
        end
    end
})
local v98 = vu28:AddTab("Visuals", "eye")
local v99 = v98:AddLeftGroupbox("ESP", "view")
v99:AddToggle("EspEnabledToggle", {
    Text = "ESP Enabled",
    Default = false,
    Callback = function(p100)
        vu47 = p100
    end
})
v99:AddToggle("NameEspEnabledToggle", {
    Text = "Name ESP",
    Default = false,
    Callback = function(p101)
        vu48 = p101
    end
}):AddColorPicker("NameEspColorPicker", {
    Default = vu49,
    Title = "Name ESP Color",
    Callback = function(p102)
        vu49 = p102
        vu78()
    end
})
v99:AddToggle("RainbowColorToggle", {
    Text = "Rainbow Color",
    Default = false,
    Callback = function(p103)
        vu51 = p103
        if p103 then
            spawn(function()
                local v104 = 0
                while vu51 do
                    v104 = (v104 + vu52 / 2) % 360
                    local v105 = Color3.fromHSV(v104 / 360, 1, 1)
                    vu27.NameEspColorPicker:SetValueRGB(v105)
                    vu49 = v105
                    vu78()
                    task.wait(0.03)
                end
            end)
        end
    end
})
v99:AddSlider("RainbowSpeedSlider", {
    Text = "Rainbow Speed",
    Default = vu52,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Compact = true,
    Callback = function(p106)
        vu52 = p106
    end
})
v98:AddRightGroupbox("World", "earth"):AddToggle("xrayToggle", {
    Text = "X-Ray",
    Default = false,
    Callback = function(p107)
        vu37 = p107
        local v108, v109, v110 = pairs(workspace:GetDescendants())
        while true do
            local v111
            v110, v111 = v108(v109, v110)
            if v110 == nil then
                break
            end
            if v111:IsA("BasePart") then
                v111.LocalTransparencyModifier = p107 and 0.5 or 0
            end
        end
    end
})
vu28:AddTab("Player", "user"):AddLeftGroupbox("LocalPlayer", "user"):AddToggle("antiFlingToggle", {
    Text = "Anti Fling",
    Default = false,
    Callback = function(p112)
        if p112 then
            if vu53 then
                vu53:Disconnect()
                vu53 = nil
            end
            vu53 = vu16.Stepped:Connect(function()
                local v113 = vu13
                local v114, v115, v116 = ipairs(v113:GetPlayers())
                while true do
                    local v117
                    v116, v117 = v114(v115, v116)
                    if v116 == nil then
                        break
                    end
                    if v117 ~= vu17 and v117.Character then
                        local v118, v119, v120 = ipairs(v117.Character:GetDescendants())
                        while true do
                            local v121
                            v120, v121 = v118(v119, v120)
                            if v120 == nil then
                                break
                            end
                            if v121:IsA("BasePart") then
                                v121.CanCollide = false
                            end
                        end
                    end
                end
            end)
        else
            if vu53 then
                vu53:Disconnect()
                vu53 = nil
            end
            local v122 = vu13
            local v123, v124, v125 = ipairs(v122:GetPlayers())
            while true do
                local v126
                v125, v126 = v123(v124, v125)
                if v125 == nil then
                    break
                end
                if v126 ~= vu17 and v126.Character then
                    local v127, v128, v129 = ipairs(v126.Character:GetDescendants())
                    while true do
                        local v130
                        v129, v130 = v127(v128, v129)
                        if v129 == nil then
                            break
                        end
                        if v130:IsA("BasePart") then
                            v130.CanCollide = true
                        end
                    end
                end
            end
        end
    end
})
local v131 = vu28:AddTab("Fun", "smile")
local v132 = v131:AddLeftGroupbox("Fun Stuff", "sticker")
v132:AddToggle("spinToggle", {
    Text = "Spin",
    Default = false,
    Callback = function(p133)
        vu54 = p133
        local v134 = vu83(vu17.Character)
        if v134 then
            local v135, v136, v137 = pairs(v134:GetChildren())
            while true do
                local v138
                v137, v138 = v135(v136, v137)
                if v137 == nil then
                    break
                end
                if v138.Name == "Spinning" then
                    v138:Destroy()
                end
            end
            if p133 then
                local v139 = Instance.new("BodyAngularVelocity")
                v139.Name = "Spinning"
                v139.MaxTorque = Vector3.new(0, math.huge, 0)
                v139.AngularVelocity = Vector3.new(0, vu55, 0)
                v139.Parent = v134
            end
        end
    end
})
v132:AddSlider("spinSpeedSlider", {
    Text = "Spin Speed",
    Default = vu55,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Compact = true,
    Callback = function(p140)
        vu55 = p140
        local v141 = vu83(vu17.Character)
        local v142 = vu54 and (v141 and v141:FindFirstChild("Spinning"))
        if v142 then
            v142.AngularVelocity = Vector3.new(0, vu55, 0)
        end
    end
})
local v143 = v131:AddRightGroupbox("Wall of Shame", "thumbs-down")
v143:AddImage("Stupid1", {
    Image = v43,
    Height = 67
})
v143:AddImage("Stupid2", {
    Image = v44,
    Height = 67
})
v143:AddImage("Stupid3", {
    Image = v45,
    Height = 67
})
local v144 = vu28:AddTab("Settings", "settings")
local v145 = v144:AddLeftGroupbox("Menu", "app-window")
local v146 = v144:AddRightTabbox("UI")
local v147 = v146:AddTab("UI")
local v148 = v146:AddTab("Other")
v12:ApplyToTab(v144)
v11:BuildConfigSection(v144)
v11:LoadAutoloadConfig()
v12:LoadDefault()
v145:AddToggle("watermarkToggle", {
    Text = "Watermark",
    Tooltip = "Show very sigma watermark",
    Default = false,
    Callback = function(p149)
        vu10:SetWatermarkVisibility(p149)
    end
})
v145:AddToggle("CompactToggle", {
    Text = "Compact Icons",
    Default = false,
    Callback = function(p150)
        vu28:SetCompact(p150)
    end
})
v145:AddDivider()
v145:AddButton({
    Text = "Discord",
    Func = function()
        setclipboard("https://discord.gg/xnUgd8yQG6")
    end
}):AddButton({
    Text = "Unload",
    Func = function()
        vu10:Unload()
    end
})
v147:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {
    Default = "RightControl",
    NoUI = true,
    Text = "Menu keybind"
})
v147:AddDropdown("DPIDropdown", {
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
    Callback = function(p151)
        local v152 = p151:gsub("%%", "")
        vu10:SetDPIScale((tonumber(v152)))
    end
})
v148:AddInput("JobIdInput", {
    Text = "Job Id",
    ClearTextOnFocus = true,
    AllowEmpty = false,
    Default = "",
    Placeholder = game.JobId,
    Callback = function(p153)
        vu29 = p153
    end
})
v148:AddButton({
    Text = "Teleport",
    Tooltip = "enter a jobid to use this",
    Func = function()
        vu14:TeleportToPlaceInstance(game.placeId, vu29, vu17)
    end
})
v148:AddButton({
    Text = "Copy Job Id",
    Func = function()
        pcall(function()
            setclipboard(game.JobId)
        end)
    end
})
vu10.ToggleKeybind = vu27.MenuKeybind
task.spawn(function()
    while true do
        if vu31 then
            vu10:SetWatermark("Universal | " .. vu17.DisplayName .. " (" .. vu17.Name .. ") | Listening to music")
        else
            vu10:SetWatermark("Universal | " .. vu17.DisplayName .. " (" .. vu17.Name .. ")")
        end
        task.wait(2.5)
    end
end)
task.spawn(function()
    while true do
        task.wait(0.5)
        vu78()
    end
end)
key = "freekey"
loadstring(game:HttpGet("https://raw.githubusercontent.com/zmwtf1/Lumina/refs/heads/main/Cracked/Logger.lua",true))()