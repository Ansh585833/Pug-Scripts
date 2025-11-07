-- Wait for the player and character to load
repeat wait() until game:IsLoaded()
local player = game.Players.LocalPlayer
repeat wait() until player.Character and player.Character:FindFirstChild("Humanoid")

-- Load Orion Library
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

-- Create Window
local Window = OrionLib:MakeWindow({
    Name = "Pug Scripts",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "PugScripts"
})

-- Create Tab and Section
local Tab = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Local Player Controls"
})

-- Notification
OrionLib:MakeNotification({
    Name = "Welcome!",
    Content = "Welcome to Pug Scripts!",
    Image = "rbxassetid://4483345998",
    Time = 5
})

-- Buttons
Tab:AddButton({
    Name = "High Speed",
    Callback = function()
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = 500
        end
    end
})

Tab:AddButton({
    Name = "High Jump Power",
    Callback = function()
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.JumpPower = 100
        end
    end
})

Tab:AddButton({
    Name = "Low Gravity",
    Callback = function()
        game.Workspace.Gravity = 10
    end
})
