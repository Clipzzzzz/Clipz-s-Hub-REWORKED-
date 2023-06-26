local games = {
	[1] = {11345129632, "🎲ROLL%20The%20DICE!"}
}

for i,v in games do
	if game.PlaceId == v[1] then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Clipzzzzz/Project-Clipz/main/"..tostring(v[2]), true))()
		print("loadstring success")
	end
end


warn("[Project Clipz]: Loaded Sucessfully")
warn("[Project Clipz]: The following are available games for this hub: ")
print("test")
