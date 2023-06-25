local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local COREGUI = game:GetService("CoreGui")
local UIS = game:GetService('UserInputService')

local Window = Rayfield:CreateWindow({
	Name = "Project Clipz | Premium",
	LoadingTitle = "Project Clipz | Premium",
	LoadingSubtitle = "By Clipz",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Project C",
		FileName = "Clipzs Hub"
	},
	KeySystem = true, -- Set this to true to use their key system
	KeySettings = {
		Title = "Project Clipz | Premium",
		Subtitle = "Key System",
		Note = "Join the discord (https://discord.gg/5wYyupFCvt)",
		SaveKey = true,
		Key = "ProjectClipzW"
	}
})

Rayfield:Notify("Project Clipz Loading!", "Thank you for buying the premium version") -- Notfication -- Title, Content, Image

local Tab = Window:CreateTab("Farming") -- Title, Image
local Tab2 = Window:CreateTab("Teleports") -- Title, Image
local Tab3 = Window:CreateTab("Settings") -- Title, Image

local Section = Tab:CreateSection("Automatic")

-- local Button = Tab:CreateButton({
--	Name = "Button Example",
--	Callback = function()
-- The function that takes place when the button is pressed
--	end,
-- })

local Toggle = Tab:CreateToggle({
	Name = "AutoFarm",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(autofarm)
		getgenv().ac = autofarm
		while getgenv().ac do
			wait()
			for _, v in pairs(game:GetService("Workspace").chests:GetChildren()) do
				if v:IsA "Part" then
					game:GetService "Players".LocalPlayer.Character:FindFirstChild "HumanoidRootPart".CFrame = v.CFrame
				end
				local chestprox = v:FindFirstChildOfClass("ProximityPrompt")
				fireproximityprompt(chestprox)
				-- The function that takes place when the toggle is pressed
				-- The variable (Value) is a boolean on whether the toggle is true or false
			end
		end
	end
})

local Toggle = Tab:CreateToggle({
	Name = "AutoOpen",
	CurrentValue = false,
	Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(autoopen)
		getgenv().ac = autoopen
		while getgenv().ac do
			wait(.00001)
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Chest") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dark Chest")
			tool.Parent = game.Players.LocalPlayer.Character
			tool:Activate()
			tool.Parent = game.Players.LocalPlayer.Backpack
			wait(.00001)
			-- The function that takes place when the toggle is pressed
			-- The variable (Value) is a boolean on whether the toggle is true or false
		end
	end
})

local Dropdown = Tab:CreateDropdown({
	Name = "BossFarm Config",
	Options = {"Nextbot Troll","Weeping God","Cancelled"},
	CurrentOption = "Cancelled",
	Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
		if Option == "Nextbot Troll" then
			while wait() do
			wait(.0001)
				game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Workspace:WaitForChild("Nextbot Troll").HumanoidRootPart.CFrame) 
				game.Workspace["Nextbot Troll"].Head:Destroy()
				game:GetService "Players".LocalPlayer.Character:FindFirstChild "HumanoidRootPart".CFrame = game.Workspace:WaitForChild("Dark Chest_p").CFrame
				wait(.0001)
			end
		end
	end
	-- The function that takes place when the selected option is changed
	-- The variable (Option) is a string for the value that the dropdown was changed to
})

local Toggle = Tab:CreateToggle({
	Name = "Auto BossFarm",
	CurrentValue = false,
	Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(bossfarm)
		getgenv().ac = bossfarm
		while getgenv().ac do
			wait(.00001)

			wait(.00001)
			-- The function that takes place when the toggle is pressed
			-- The variable (Value) is a boolean on whether the toggle is true or false
		end
	end
})


local Input = Tab3:CreateInput({
	Name = "Walkspeed Changer",
	PlaceholderText = "Input Speed",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Text
		-- The function that takes place when the input is changed
		-- The variable (Text) is a string for the value in the text box
	end,
})

local Input = Tab3:CreateInput({
	Name = "JumpPower Changer",
	PlaceholderText = "Input Power",
	RemoveTextAfterFocusLost = false,
	Callback = function(height)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = height
		-- The function that takes place when the input is changed
		-- The variable (Text) is a string for the value in the text box
	end,
})

local Toggle = Tab3:CreateToggle({
	Name = "Chest ESP",
	CurrentValue = false,
	Flag = "esp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(chestesp)
		local chests = game.Workspace.chests:GetChildren()
		local RunService = game:GetService("RunService")
		local hightlight = Instance.new("Highlight")
		hightlight.Name = "Highlight"

		for i, v in pairs(chests) do
			if v:FindFirstChild("Highlight") == nil then
				local highlightclone = hightlight:Clone()
				highlightclone.Parent = v
				highlightclone.FillColor = Color3.fromRGB(0, 0, 0)
				highlightclone.FillTransparency = 0.2
				highlightclone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				highlightclone.Name = "Highlight"
			else
				v:FindFirstChild("Highlight"):Destroy()
			end
		end

		game.Workspace.chests.ChildAdded:Connect(function()
			if not chests:FindFirstChild("Highlight") then
				local highlightclone = hightlight:Clone()
				hightlight.Parent = chests
				highlightclone.FillColor = Color3.fromRGB(0, 0, 0)
				highlightclone.FillTransparency = 0.2
				highlightclone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				highlightclone.Name = "Highlight"
			end
		end)

		game.Workspace.chests.ChildRemoved:Connect(function(chest)
			chest:FindFirstChild("Highlight"):Destroy()
		end)
		-- The function that takes place when the toggle is pressed
		-- The variable (Value) is a boolean on whether the toggle is true or false
	end
})

local rayfield = COREGUI:WaitForChild("Rayfield")

local frame = rayfield.Main
local dragToggle = nil
local dragSpeed = 0.25
local dragStart = nil
local startPos = nil

local function updateInput(input)
	local delta = input.Position - dragStart
	local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
end

frame.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
		dragToggle = true
		dragStart = input.Position
		startPos = frame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle = false
			end
		end)
	end
end)

UIS.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		if dragToggle then
			updateInput(input)
		end
	end
end)
