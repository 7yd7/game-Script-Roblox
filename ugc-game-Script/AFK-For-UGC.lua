--[[
getgenv().AReblrth = true -- اوتو ريبر
loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/game-Script-Roblox/test/ugc-game-Script/AFK-For-UGC.lua"))()
]]

-- تغير رسايل ال قيم باس
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.ClickFrame.OPAUTO.Title.Text = "Unlock OP"
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.ClickFrame.ServerBoost.Title.Text = "Unlock OP"

-- اخذ قيم باس Magnet

local player = game.Players.LocalPlayer
local testGui = player.PlayerGui.MainGui.ClickFrame.ServerBoost.ImageButton

local isActive = false

testGui.MouseButton1Down:Connect(function()
    if isActive then
    -- تم اغلاق سكربت
        isActive = false
        getgenv().ATokens = false
        game:GetService("Players").LocalPlayer.PlayerGui.MainGui.ClickFrame.ServerBoost.TextLabel.Text = "MAGNET"
    else
-- تم تفعيل سكربت
        isActive = true
        getgenv().ATokens = true
        game:GetService("Players").LocalPlayer.PlayerGui.MainGui.ClickFrame.ServerBoost.TextLabel.Text = "On MAGNET"
    end
end)

-- سكربت اخذ جميع كوين
coroutine.wrap(function()
    while wait() do
        if getgenv().ATokens == true then
            local tokensFolder = game.Workspace.Tokens
            local files = tokensFolder:GetChildren()
            for _, file in ipairs(files) do
                local parts = file:GetChildren()
                for _, part in ipairs(parts) do
                    if part:IsA("BasePart") then
                    -- سكربت
                        part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    --
                    end
                end
            end
        end
    end
    end)()
    
    -- اخذ قيم باس OP Auto Clicker

    local player = game.Players.LocalPlayer
    local testGui = player.PlayerGui.MainGui.ClickFrame.OPAUTO.ImageButton
    
    local isActive = false
    
    testGui.MouseButton1Down:Connect(function()
        if isActive then
        -- تم اغلاق سكربت
            isActive = false
            getgenv().AClick = false
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.ClickFrame.OPAUTO.TextLabel.Text = "OP AUTO"
        else
    -- تم تفعيل سكربت
            isActive = true
            getgenv().AClick = true
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.ClickFrame.OPAUTO.TextLabel.Text = "On OP AUTO"
        end
    end)

    -- اوتو كليكر
    coroutine.wrap(function()
    while wait(.2) do
        if getgenv().AClick == true then
    
    game:GetService("ReplicatedStorage").Events.Click:FireServer()
    
    end
    end
    end)()
    

        -- اوتو ريبر Reblrth
        coroutine.wrap(function()
            while wait(.2) do
                if getgenv().AReblrth == true then
            

game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
            
            end
            end
            end)()


    -- فري قيم باس Auto Spin gui
    

    
    local player = game.Players.LocalPlayer
    local testGui = player.PlayerGui.MainGui.WheelFrame.Auto.ImageButton
    
    local isActive = false
    
    testGui.MouseButton1Down:Connect(function()
        if isActive then
        -- تم اغلاق سكربت
            isActive = false
            getgenv().ASpin1 = false
        else
    -- تم تفعيل سكربت
            isActive = true
            getgenv().ASpin1 = true
        end
    end)
    
    
    -- سكربت ASpin
    coroutine.wrap(function()
        while wait(.2) do
            if getgenv().ASpin1 == true then
        
    local ohString1 = "Normal"
    
    game:GetService("ReplicatedStorage").Events.WheelSpin:FireServer(ohString1)
        
        end
        end
        end)()

        
