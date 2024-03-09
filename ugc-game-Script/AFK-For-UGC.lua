--[[
getgenv().AClick = true -- اوتو كليكر
getgenv().ATokens = true -- اخذ كوين يلي موجوده في ماب
getgenv().ASpin = true -- اخذ قيم باس Auto Spin
getgenv().AReblrth = true -- اوتو ريبر
loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/game-Script-Roblox/test/ugc-game-Script/AFK-For-UGC.lua"))()
]]



-- اخذ جميع اشياء يلي موجوده Tokens
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
    
    if getgenv().ASpin == true then
    
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
    
    end

        
