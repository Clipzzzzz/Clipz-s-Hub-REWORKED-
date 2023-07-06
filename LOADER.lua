local games = {
	[1] = {11345129632, "🎲ROLL%20The%20DICE!", "🎲ROLL The DICE!"}
	[2] = {9216815133, "Trollge%20Conventions%20%5BGT%20GASTER%5D", "Trollge Conventions [GT GASTER]"}
}

for i,v in games do
	if game.PlaceId == v[1] then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Clipzzzzz/Project-Clipz/main/"..tostring(v[2]), true))()
		print("Loadstring Success!")
	end
end


warn("[Project Clipz]: Loaded Sucessfully")
warn("[Project Clipz]: The following are available games for this hub: ")
for i,v in games do
  warn(v[3])
end
