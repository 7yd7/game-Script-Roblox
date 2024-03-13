local player = game.Players.LocalPlayer
local testGui = player.PlayerGui.Crate.AutoSpin

local isActive = false

testGui.MouseButton1Down:Connect(function()
    if isActive then
    -- تم اغلاق سكربت
        isActive = false
        getgenv().ASpin = false
        game:GetService("Players").LocalPlayer.PlayerGui.Crate.AutoSpin.Label.Text = "Auto"
    else
-- تم تفعيل سكربت
        isActive = true
        getgenv().ASpin = true
        game:GetService("Players").LocalPlayer.PlayerGui.Crate.AutoSpin.Label.Text = "On Auto"
    end
end)


while wait() do
	if getgenv().ASpin == true then

local ohString1 = "Main"

game:GetService("ReplicatedStorage").openCrate:InvokeServer(ohString1)
	end
end
