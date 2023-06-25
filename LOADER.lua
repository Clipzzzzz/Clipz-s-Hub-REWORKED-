local games = {
	[1] = {"11345129632", "🎲ROLL The DICE!"}
}

for i,v in games do
	if game.PlaceId == tostring(v[1]) then
		local vers = tostring(v[2])
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Clipzzzzz/Project-Clipz/main/"..vers, true))()
		print("loadstring success")
	end
end


warn("[Project Clipz]: Loaded Sucessfully")
warn("[Project Clipz]: The following are available games for this hub: ")


for i,v in games do
	warn(tostring(v[2]))
end
