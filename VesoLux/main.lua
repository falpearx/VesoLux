if not game:IsLoaded() then
	local notLoaded = Instance.new("Message")
	notLoaded.Parent = game:GetService("CoreGui")
	notLoaded.Text = 'Waiting For Game Loading...'
	game.Loaded:Wait()
	notLoaded:Destroy()
end

if game.PlaceId == 855499080 then 
print("Loading Skywars")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Uronow/VesoLux/main/games/skywars.lua"))()
else
print("Veso Lux Not Supports This Game. Loading Universal")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Uronow/VesoLux/main/games/universal.lua"))()
end