local project = "https://github.com/Clipzzzzz/Project-Clipz/blob/main/"

local games = {
	[11345129632] = "🎲ROLL%20The%20DICE!",
}

for i, v in pairs(games) do
	if i == game.PlaceId or i == game.GameId then
		loadstring(game:HttpGet(project .. v))()
	end
end


warn("[Project Clipz]: Loaded Sucessfully")
warn("[Project Clipz]: The following are available games for this hub: ")
print("test")
