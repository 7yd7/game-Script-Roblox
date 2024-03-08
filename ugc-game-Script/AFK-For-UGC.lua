--[[
getgenv().AClick = true -- اوتو كليكر
getgenv().ATokens = true -- اخذ كوين يلي موجوده في ماب
]]



-- اخذ جميع اشياء يلي موجوده Tokens
while wait(.2) do
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


-- اوتو كليكر
while wait(.2) do
	if getgenv().AClick == true then

game:GetService("ReplicatedStorage").Events.Click:FireServer()

end
end
