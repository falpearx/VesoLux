local player = game.Players.LocalPlayer

if player.Character then

if player.Character:FindFirstChild("Humanoid") then

player.Character.Humanoid.Name = "1"

end

local l = player.Character["1"]:Clone()

l.Parent = player.Character

l.Name = "Humanoid" 
local Cam = workspace.CurrentCamera
local Pos, Char = Cam.CFrame, game:GetService('Players').LocalPlayer.Character
wait(0.1)
l.SetStateEnabled(l, 15, false)
l.SetStateEnabled(l, 1, false)
l.SetStateEnabled(l, 0, false)
--l.BreakJointsOnDeath, l = true, l.Destroy(l)
game:GetService('Players').LocalPlayer.Character, Cam.CameraSubject, Cam.CFrame = Char, l, wait() and Pos
player.Character["1"]:Destroy()
workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
player.Character.Animate.Disabled = true
wait(0.1)
player.Character.Animate.Disabled = false



      
 
local isJumping = false
l.StateChanged:Connect(function(oldState, newState)
    if newState == Enum.HumanoidStateType.Jumping then
        if not isJumping then
            isJumping = true
            l.Jump = true
        end
    elseif newState == Enum.HumanoidStateType.Landed then
        if isJumping then
            isJumping = false
            wait(1)
            l.Jump = true
        end
    end
end)


end
print("finished.")