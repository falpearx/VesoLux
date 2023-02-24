
local robloxiancat = game:GetService("Players").LocalPlayer.Character
local humanoid = robloxiancat:WaitForChild("Humanoid")
local rootPart = robloxiancat:WaitForChild("HumanoidRootPart")
local Debris = game:GetService("Debris")

local PathFindingService = game:GetService("PathfindingService")
local pathArgs = {
	["AgentHeight"] = 10,
	["AgentRadius"] = math.ceil(1.5),
	["AgentCanJump"] = true
}


local scanRange = 50
local attackRange = 5

local function checkDistanceAB(a,b)
	local magnitude = (a.Position - b.Position).Magnitude
	
	return magnitude
end

local function attack(target)
	local targetHumanoid = target.Parent:FindFirstChild("Humanoid")
	local mag = checkDistanceAB(rootPart,target)
	
	if mag < attackRange then
		targetHumanoid.Health = targetHumanoid.Health - 1
		wait(0.5)
		print("In range") 
		if mag > attackRange then
			print("Out of range")
			return false
		end
	end
end

--[[local function findTarget()
	local target = nil
	for index,value in ipairs(game.Workspace:GetChildren()) do
		if value:IsA("Model") then
			if value:FindFirstChild("HumanoidRootPart") and value:FindFirstChild("Humanoid") then
				local targetRoot = value:FindFirstChild("HumanoidRootPart")
				local targetHumanoid = value:FindFirstChild("Humanoid")
				local magnitude = checkDistanceAB(rootPart,targetRoot)
				
				if magnitude < scanRange and targetHumanoid.Health > 0 then
					target = targetRoot
					if target == rootPart then
						print("Target is yourself, breaking")
						break
					else
						print("Safe")
					end
					
					return target
				end
			end
		end
	end
end]]

local function MoveToTarget(target)
	local PathfindingService = game:GetService("PathfindingService")
	local path = PathfindingService:CreatePath(pathArgs)
	path:ComputeAsync(rootPart.Position,target)
	local waypoints = path:GetWaypoints()
	print("Got points")
	
	for _,waypoint in ipairs(waypoints) do
		local part = Instance.new("Part")
	part.Shape = "Ball"
	part.Material = "Neon"
	part.Size = Vector3.new(0.6, 0.6, 0.6)
	part.Position = waypoint.Position
	part.Anchored = true
	part.CanCollide = false
	part.Parent = game.Workspace
		if waypoint.Action == Enum.PathWaypointAction.Jump then
			humanoid.Jump = true
		end
		humanoid:MoveTo(waypoint.Position) 
		humanoid.MoveToFinished:Wait()
		print("Moving")
	end
end

local function checkSight(target)
	local RayOrigin = rootPart.Position
	local magnitude = (RayOrigin - target).Magnitude
	local RayDirection = (target - rootPart.Position).Unit * magnitude

	local result = workspace:Raycast(RayOrigin,RayDirection)
	if result then
		local hit = result.Instance
		if hit ~= target then
			MoveToTarget(target)
		else
			print("Nothing is in NPC way")
			MoveToTarget(target)
		end
	end
end
--[[function adsdsadsa()
pcall(function()
if game:GetService("Workspace"):FindFirstChild(game:GetService("Players").LocalPlayer.Name) and game:GetService("Workspace"):FindFirstChild("yigitomis123") then
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit = false
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players["yigitomis123"].Character.HumanoidRootPart.CFrame + Vector3.new(2,1,0)
else

end
end)
end
pcall(function()
while true do
if getgenv().yditddd == true then
pcall(function()
adsdsadsa()
end)
end
wait(5)
end
end)]]
--Vector3.new(35, 25, -0)
local sa = 0
repeat
local target = Vector3.new(25, 37, -29)
MoveToTarget(target)
checkSight(target)
sa = sa + 1 
wait()
until sa == 10