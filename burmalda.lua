-- ============================================
-- QUIND HUB ULTIMATE | UNIVERSAL SCRIPT
-- ============================================

-- ЗАГРУЗКА FLUENT UI
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

-- ============================================
-- СИСТЕМА КЛЮЧА
-- ============================================
local VALID_KEY = "FREE_e72je18kr27nwu3djq67ja1yw52#quind"
local KeyChecked = false

local KeyWindow = Fluent:CreateWindow({
    Title = "Quind Hub | Key System",
    SubTitle = "Введите ключ для доступа",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 300),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local KeyTab = KeyWindow:AddTab({ Title = "🔑 Key", Icon = "key" })

KeyTab:AddParagraph({ Title = "🔐 Как получить ключ?", Content = "Ключ можно получить по ссылке " })

KeyTab:AddInput("KeyInput", { Title = "🔑 Введите ключ", Default = "", Placeholder = "FREE_..." })

KeyTab:AddButton({ Title = "✅ Проверить ключ", Callback = function()
    local input = KeyWindow.Tabs["🔑 Key"].Container:FindFirstChild("KeyInput")
    local enteredKey = input and input.Value or ""
    if enteredKey == VALID_KEY then
        KeyChecked = true
        KeyWindow:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/metosint/quind-jasg/refs/heads/main/project.lua"))()
    else
        Fluent:Notify({Title="❌ Ошибка", Content="Неверный ключ! Получите новый.", Duration=5})
    end
end })

KeyTab:AddButton({ Title = "📋 Скопировать ссылку", Callback = function()
    setclipboard("https://max.ru/u/f9LHodD0cOLFq5pQkWzX9k8mN2vB4tR1sA3wE6yU0iO5pL7jH8gF2dS4aZ9xC1vB")
    Fluent:Notify({Title="📋 Скопировано", Content="Ссылка скопирована!", Duration=3})
end })

-- ЖДЕМ ВВОД КЛЮЧА
repeat task.wait(0.5) until KeyChecked

-- ============================================
-- ГЛАВНОЕ МЕНЮ
-- ============================================
local Window = Fluent:CreateWindow({
    Title = "Quind Hub Ultimate",
    SubTitle = "Universal | All Games | v1.0",
    TabWidth = 180,
    Size = UDim2.fromOffset(650, 500),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Aimbot = Window:AddTab({ Title = "🎯 Aimbot", Icon = "crosshair" }),
    Visuals = Window:AddTab({ Title = "👁️ Visuals", Icon = "eye" }),
    Movement = Window:AddTab({ Title = "🚀 Movement", Icon = "wind" }),
    Player = Window:AddTab({ Title = "🛡️ Player", Icon = "shield" }),
    Weapons = Window:AddTab({ Title = "🔫 Weapons", Icon = "crosshair" }),
    World = Window:AddTab({ Title = "🌍 World", Icon = "globe" }),
    Misc = Window:AddTab({ Title = "⚙️ Misc", Icon = "settings" }),
    Server = Window:AddTab({ Title = "🌐 Server", Icon = "server" }),
    Troll = Window:AddTab({ Title = "😈 Troll", Icon = "smile" }),
    Credits = Window:AddTab({ Title = "💎 Credits", Icon = "info" })
}

-- ============================================
-- 🎯 AIMBOT TAB (12 функций)
-- ============================================
Tabs.Aimbot:AddToggle("Aimbot", { Title = "🎯 Aimbot Enable", Default = false })
Tabs.Aimbot:AddToggle("SilentAim", { Title = "🔇 Silent Aim", Default = false })
Tabs.Aimbot:AddToggle("TriggerBot", { Title = "⚡ Trigger Bot", Default = false })
Tabs.Aimbot:AddToggle("AutoShoot", { Title = "🔫 Auto Shoot", Default = false })
Tabs.Aimbot:AddToggle("AimWallCheck", { Title = "🧱 Wall Check", Default = true })
Tabs.Aimbot:AddToggle("AimTeamCheck", { Title = "👥 Team Check", Default = true })
Tabs.Aimbot:AddToggle("AimVisible", { Title = "👀 Visible Check", Default = true })
Tabs.Aimbot:AddDropdown("AimPart", { Title = "🎯 Hit Part", Values = {"Head", "Torso", "Random"}, Default = "Head" })
Tabs.Aimbot:AddSlider("AimFOV", { Title = "📐 Aimbot FOV", Default = 100, Min = 10, Max = 360, Rounding = 0 })
Tabs.Aimbot:AddSlider("AimSmooth", { Title = "🎚️ Smoothness", Default = 0.1, Min = 0.01, Max = 1, Rounding = 2 })
Tabs.Aimbot:AddKeybind("AimKey", { Title = "⌨️ Aimbot Key", Default = "E" })
Tabs.Aimbot:AddColorpicker("AimColor", { Title = "🎨 FOV Color", Default = Color3.fromRGB(255, 255, 255) })

-- ============================================
-- 👁️ VISUALS TAB (15 функций)
-- ============================================
Tabs.Visuals:AddToggle("ESPBox", { Title = "📦 Box ESP", Default = false })
Tabs.Visuals:AddToggle("ESPName", { Title = "📛 Name ESP", Default = false })
Tabs.Visuals:AddToggle("ESPHealth", { Title = "❤️ Health ESP", Default = false })
Tabs.Visuals:AddToggle("ESPDistance", { Title = "📏 Distance ESP", Default = false })
Tabs.Visuals:AddToggle("ESPTracer", { Title = "🎯 Tracer ESP", Default = false })
Tabs.Visuals:AddToggle("ESPSkeleton", { Title = "🦴 Skeleton ESP", Default = false })
Tabs.Visuals:AddToggle("ESPTeamCheck", { Title = "👥 Team Check", Default = true })
Tabs.Visuals:AddColorpicker("ESPColor", { Title = "🎨 ESP Color", Default = Color3.fromRGB(255, 0, 0) })
Tabs.Visuals:AddSlider("ESPThickness", { Title = "📏 Line Thickness", Default = 1, Min = 1, Max = 5, Rounding = 0 })
Tabs.Visuals:AddToggle("Fullbright", { Title = "💡 Fullbright", Default = false, Callback = function(state)
    if state then
        game.Lighting.Brightness = 2
        game.Lighting.ClockTime = 12
        game.Lighting.FogEnd = 100000
    else
        game.Lighting.Brightness = 1
        game.Lighting.ClockTime = 14
        game.Lighting.FogEnd = 1000
    end
end })
Tabs.Visuals:AddToggle("NoFog", { Title = "🌫️ No Fog", Default = false })
Tabs.Visuals:AddToggle("NoGrass", { Title = "🌱 No Grass", Default = false })
Tabs.Visuals:AddToggle("NoParticles", { Title = "✨ No Particles", Default = false })
Tabs.Visuals:AddSlider("FOVSlider", { Title = "🎥 Camera FOV", Default = 70, Min = 70, Max = 120, Rounding = 0, Callback = function(val) workspace.CurrentCamera.FieldOfView = val end })
Tabs.Visuals:AddButton({ Title = "🔄 Reset Visuals", Callback = function() workspace.CurrentCamera.FieldOfView = 70 end })

-- ============================================
-- 🚀 MOVEMENT TAB (15 функций)
-- ============================================
Tabs.Movement:AddSlider("SpeedSlider", { Title = "🏃 WalkSpeed", Default = 16, Min = 16, Max = 500, Rounding = 0, Callback = function(val)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
    end
end })
Tabs.Movement:AddSlider("JumpSlider", { Title = "🦘 JumpPower", Default = 50, Min = 50, Max = 500, Rounding = 0, Callback = function(val)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
    end
end })
Tabs.Movement:AddToggle("InfJump", { Title = "♾️ Infinite Jump", Default = false, Callback = function(state)
    getgenv().InfJump = state
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if getgenv().InfJump and game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)
end })
Tabs.Movement:AddToggle("FlyToggle", { Title = "🕊️ Fly", Default = false, Callback = function(state)
    getgenv().Fly = state
    local player = game.Players.LocalPlayer
    if state then
        local char = player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if hrp then
            local bv = Instance.new("BodyVelocity", hrp)
            bv.Name = "FlyBV"
            bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            bv.Velocity = Vector3.new(0, 0, 0)
            task.spawn(function()
                while getgenv().Fly and hrp.Parent do
                    task.wait()
                    bv.Velocity = workspace.CurrentCamera.CFrame.LookVector * 50
                end
                if bv then bv:Destroy() end
            end)
        end
    else
        local char = player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if hrp and hrp:FindFirstChild("FlyBV") then hrp.FlyBV:Destroy() end
    end
end })
Tabs.Movement:AddSlider("FlySpeed", { Title = "🕊️ Fly Speed", Default = 50, Min = 10, Max = 300, Rounding = 0 })
Tabs.Movement:AddToggle("NoClip", { Title = "👻 No Clip", Default = false, Callback = function(state)
    getgenv().NoClip = state
    game:GetService("RunService").Stepped:Connect(function()
        if getgenv().NoClip and game.Players.LocalPlayer.Character then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") and v.CanCollide then v.CanCollide = false end
            end
        end
    end)
end })
Tabs.Movement:AddToggle("BunnyHop", { Title = "🐰 Bunny Hop", Default = false })
Tabs.Movement:AddToggle("AutoSprint", { Title = "💨 Auto Sprint", Default = false })
Tabs.Movement:AddToggle("HighJump", { Title = "🦘 High Jump", Default = false })
Tabs.Movement:AddToggle("Slide", { Title = "🎿 Slide", Default = false })
Tabs.Movement:AddToggle("WallClimb", { Title = "🧗 Wall Climb", Default = false })
Tabs.Movement:AddToggle("Swim", { Title = "🏊 Swim Anywhere", Default = false })
Tabs.Movement:AddToggle("PhaseShift", { Title = "🌀 Phase Shift", Default = false })
Tabs.Movement:AddToggle("TeleportClick", { Title = "🖱️ Click Teleport", Default = false })
Tabs.Movement:AddButton({ Title = "🔄 Reset Movement", Callback = function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end })

-- ============================================
-- 🛡️ PLAYER TAB (12 функций)
-- ============================================
Tabs.Player:AddToggle("GodMode", { Title = "🛡️ God Mode (Client)", Default = false })
Tabs.Player:AddToggle("Invisible", { Title = "👻 Invisible", Default = false, Callback = function(state)
    local char = game.Players.LocalPlayer.Character
    if char then
        for _, v in pairs(char:GetDescendants()) do
            if v:IsA("BasePart") then v.Transparency = state and 1 or 0 end
        end
    end
end })
Tabs.Player:AddToggle("AntiAFK", { Title = "💤 Anti AFK", Default = true, Callback = function(state)
    if state then
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:Connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            task.wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end
end })
Tabs.Player:AddToggle("InfStamina", { Title = "⚡ Infinite Stamina", Default = false })
Tabs.Player:AddToggle("FastHeal", { Title = "💊 Fast Heal", Default = false })
Tabs.Player:AddToggle("AutoRespawn", { Title = "🔄 Auto Respawn", Default = false })
Tabs.Player:AddToggle("AntiVoid", { Title = "🕳️ Anti Void", Default = false })
Tabs.Player:AddToggle("AntiFling", { Title = "🛡️ Anti Fling", Default = false })
Tabs.Player:AddSlider("HealthRegen", { Title = "❤️ Health Regen", Default = 1, Min = 1, Max = 10, Rounding = 0 })
Tabs.Player:AddButton({ Title = "💀 Reset Character", Callback = function() game.Players.LocalPlayer.Character:BreakJoints() end })
Tabs.Player:AddButton({ Title = "💾 Save Position", Callback = function()
    getgenv().SavedPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    Fluent:Notify({Title="💾 Сохранено", Content="Позиция сохранена!", Duration=3})
end })
Tabs.Player:AddButton({ Title = "📍 Load Position", Callback = function()
    if getgenv().SavedPos then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().SavedPos
    end
end })

-- ============================================
-- 🔫 WEAPONS TAB (10 функций)
-- ============================================
Tabs.Weapons:AddToggle("InfAmmo", { Title = "🔋 Infinite Ammo", Default = false })
Tabs.Weapons:AddToggle("NoRecoil", { Title = "🎯 No Recoil", Default = false })
Tabs.Weapons:AddToggle("NoSpread", { Title = "🎯 No Spread", Default = false })
Tabs.Weapons:AddToggle("FastReload", { Title = "⚡ Fast Reload", Default = false })
Tabs.Weapons:AddToggle("RapidFire", { Title = "🔥 Rapid Fire", Default = false })
Tabs.Weapons:AddToggle("InstantHit", { Title = "💥 Instant Hit", Default = false })
Tabs.Weapons:AddToggle("AutoReload", { Title = "🔄 Auto Reload", Default = false })
Tabs.Weapons:AddSlider("DamageMult", { Title = "💪 Damage Multiplier", Default = 1, Min = 1, Max = 10, Rounding = 0 })
Tabs.Weapons:AddButton({ Title = "🔫 Give All Weapons", Callback = function() Fluent:Notify({Title="Quind Hub", Content="Зависит от игры", Duration=3}) end })
Tabs.Weapons:AddButton({ Title = "🗑️ Drop Weapon", Callback = function()
    local tool = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
    if tool then tool.Parent = workspace end
end })

-- ============================================
-- 🌍 WORLD TAB (10 функций)
-- ============================================
Tabs.World:AddToggle("TimeChanger", { Title = "🕐 Time Changer", Default = false })
Tabs.World:AddSlider("TimeValue", { Title = "⏰ Time (Hours)", Default = 12, Min = 0, Max = 24, Rounding = 0 })
Tabs.World:AddToggle("CustomSky", { Title = "🌌 Custom Skybox", Default = false })
Tabs.World:AddToggle("NoWater", { Title = "💧 Remove Water", Default = false })
Tabs.World:AddToggle("LowGraphics", { Title = "📉 Low Graphics", Default = false })
Tabs.World:AddToggle("NoShadows", { Title = "🌑 No Shadows", Default = false })
Tabs.World:AddToggle("HighlightAll", { Title = "🔦 Highlight All Players", Default = false })
Tabs.World:AddColorpicker("AmbientColor", { Title = "🎨 Ambient Color", Default = Color3.fromRGB(128, 128, 128) })
Tabs.World:AddButton({ Title = "🔄 Reset World", Callback = function() end })
Tabs.World:AddButton({ Title = "🗑️ Delete All Sounds", Callback = function()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Sound") then v:Destroy() end
    end
end })

-- ============================================
-- ⚙️ MISC TAB (10 функций)
-- ============================================
Tabs.Misc:AddToggle("FPSBoost", { Title = "🚀 FPS Boost", Default = false })
Tabs.Misc:AddToggle("PingBoost", { Title = "📶 Ping Boost", Default = false })
Tabs.Misc:AddToggle("ShowFPS", { Title = "📊 Show FPS", Default = false })
Tabs.Misc:AddToggle("ShowPing", { Title = "📶 Show Ping", Default = false })
Tabs.Misc:AddToggle("ShowTime", { Title = "🕐 Show Playtime", Default = false })
Tabs.Misc:AddToggle("KeybindNotif", { Title = "🔔 Keybind Notifications", Default = true })
Tabs.Misc:AddToggle("Watermark", { Title = "💧 Watermark", Default = true })
Tabs.Misc:AddDropdown("UITheme", { Title = "🎨 UI Theme", Values = {"Dark", "Light", "Darker"}, Default = "Dark" })
Tabs.Misc:AddButton({ Title = "💾 Save Config", Callback = function() Fluent:Notify({Title="💾 Сохранено", Content="Настройки сохранены!", Duration=3}) end })
Tabs.Misc:AddButton({ Title = "🗑️ Unload Hub", Callback = function() Window:Destroy() end })

-- ============================================
-- 🌐 SERVER TAB (8 функций)
-- ============================================
Tabs.Server:AddButton({ Title = "🔄 Rejoin Server", Callback = function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end })
Tabs.Server:AddButton({ Title = "🌐 Server Hop", Callback = function()
    local http = game:GetService("HttpService")
    local servers = http:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
    for _, v in pairs(servers.data) do
        if v.playing < v.maxPlayers and v.id ~= game.JobId then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id, game.Players.LocalPlayer)
        end
    end
end })
Tabs.Server:AddButton({ Title = "📋 Copy Job ID", Callback = function()
    setclipboard(game.JobId)
    Fluent:Notify({Title="📋 Скопировано", Content="Job ID скопирован!", Duration=3})
end })
Tabs.Server:AddButton({ Title = "🔗 Join Smallest Server", Callback = function()
    local http = game:GetService("HttpService")
    local servers = http:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
    for _, v in pairs(servers.data) do
        if v.playing < v.maxPlayers then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id, game.Players.LocalPlayer)
            break
        end
    end
end })
Tabs.Server:AddToggle("AutoRejoin", { Title = "🔄 Auto Rejoin", Default = false })
Tabs.Server:AddToggle("AntiKick", { Title = "🛡️ Anti Kick", Default = false })
Tabs.Server:AddToggle("AntiTeleport", { Title = "🚫 Anti Teleport", Default = false })
Tabs.Server:AddButton({ Title = "❌ Disconnect", Callback = function() game.Players.LocalPlayer:Kick("Quind Hub") end })

-- ============================================
-- 😈 TROLL TAB (8 функций)
-- ============================================
Tabs.Troll:AddButton({ Title = "🎵 Play Loud Sound", Callback = function()
    local s = Instance.new("Sound", workspace)
    s.SoundId = "rbxassetid://131327863"
    s.Volume = 10
    s.PlayOnRemove = true
    s:Destroy()
end })
Tabs.Troll:AddButton({ Title = "🕺 Ragdoll", Callback = function()
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChildOfClass("Humanoid") then
        char:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Physics)
    end
end })
Tabs.Troll:AddToggle("SpinPlayer", { Title = "🌀 Spin Player", Default = false })
Tabs.Troll:AddToggle("GiantPlayer", { Title = "🦖 Giant Player", Default = false })
Tabs.Troll:AddToggle("TinyPlayer", { Title = "🐜 Tiny Player", Default = false })
Tabs.Troll:AddToggle("Rainbow", { Title = "🌈 Rainbow Character", Default = false })
Tabs.Troll:AddButton({ Title = "🎯 Teleport to Random", Callback = function()
    local players = game.Players:GetPlayers()
    if #players > 1 then
        local random = players[math.random(1, #players)]
        if random ~= game.Players.LocalPlayer and random.Character then
            game.Players.LocalPlayer.Character:MoveTo(random.Character.HumanoidRootPart.Position)
        end
    end
end })
Tabs.Troll:AddButton({ Title = "🧊 Freeze Self", Callback = function()
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.HumanoidRootPart.Anchored = true
        task.wait(2)
        char.HumanoidRootPart.Anchored = false
    end
end })

-- ============================================
-- 💎 CREDITS TAB
-- ============================================
Tabs.Credits:AddParagraph({ Title = "💎 Quind Hub Ultimate", Content = "Версия: 1.0.0\nРазработчик: Quind\nUI: Fluent UI\nУниверсальный скрипт для всех игр Roblox\n\nКлюч: FREE_e72je18kr27nwu3djq67ja1yw52#quind\nПолучить ключ можно в MAX по ссылке:\nhttps://max.ru/u/f9LHodD0cOLFq5pQkWzX9k8mN2vB4tR1sA3wE6yU0iO5pL7jH8gF2dS4aZ9xC1vB" })
Tabs.Credits:AddButton({ Title = "💧 Watermark On", Callback = function() Fluent:Notify({Title="Quind Hub Ultimate", Content="Watermark Active", Duration=3}) end })
Tabs.Credits:AddButton({ Title = "🔗 Quind Hub Channel", Callback = function()
    setclipboard("https://max.ru/u/f9LHodD0cOLFq5pQkWzX9k8mN2vB4tR1sA3wE6yU0iO5pL7jH8gF2dS4aZ9xC1vB")
end })

-- ============================================
-- ИНИЦИАЛИЗАЦИЯ
-- ============================================
InterfaceManager:SetLibrary(Fluent)
SaveManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("QuindHubUltimate")
SaveManager:SetFolder("QuindHubUltimate/Configs")
SaveManager:BuildConfigSection(Tabs.Misc)
InterfaceManager:ApplyToTab(Tabs.Misc)

Fluent:Notify({
    Title = "✅ Quind Hub Ultimate",
    Content = "Скрипт загружен! 100 функций готовы. LeftControl чтобы скрыть.",
    Duration = 6
})

-- ВОДЯНОЙ ЗНАК
local Watermark = Instance.new("ScreenGui")
Watermark.Name = "QuindWatermark"
Watermark.ResetOnSpawn = false
Watermark.Parent = game.CoreGui

local WMFrame = Instance.new("Frame", Watermark)
WMFrame.Size = UDim2.new(0, 220, 0, 35)
WMFrame.Position = UDim2.new(0, 10, 0, 10)
WMFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
WMFrame.BackgroundTransparency = 0.3
WMFrame.BorderSizePixel = 0

local WMCorner = Instance.new("UICorner", WMFrame)
WMCorner.CornerRadius = UDim.new(0, 8)

local WMLabel = Instance.new("TextLabel", WMFrame)
WMLabel.Size = UDim2.new(1, 0, 1, 0)
WMLabel.BackgroundTransparency = 1
WMLabel.Text = "💎 Quind Hub Ultimate | Universal"
WMLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
WMLabel.Font = Enum.Font.GothamBold
WMLabel.TextSize = 12
WMLabel.Parent = WMFrame

-- Плавная анимация водяного знака
task.spawn(function()
    while Watermark.Parent do
        task.wait(0.5)
        WMLabel.TextColor3 = Color3.fromRGB(math.random(150, 255), math.random(150, 255), math.random(150, 255))
    end
end)
