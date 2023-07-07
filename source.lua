local ProjectClipz = game:GetObjects("rbxassetid://13987191832")
--local ProjectClipz = game.StarterGui.PCUILIB

local ProjectClipzLIB = {
	Flags = {},
	Theme = {
		Default = {
		},

	}
}

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

ProjectClipz.Enabled = true
ProjectClipz.Parent = CoreGui

local Camera = workspace.CurrentCamera
local Main = ProjectClipz.Main
local Topbar = Main.Topbar
local Assets = Main.Parent.Assets
local Sidebar = Main.Sidebar

function loadmenufunctions()
	for i,v in Topbar:GetChildren() do
		if v.ClassName == "TextButton" then
			
	if v.Text == "X" then
		Topbar.TextButton.MouseButton1Click:Connect(function()
			Main.Parent:Destroy()
				end)
				
			if v.Text == "-" then
					v.Visible = false
				end
				
		   end
		end
	end
end

function ProjectClipzLIB.NameLib(Name)
	Main.TextLabel.Text = Name
	loadmenufunctions()
end

function ProjectClipzLIB.AddTab(Name)
	local TabTemp = Assets.TabTemplate:Clone()
	TabTemp.Parent = Sidebar
	TabTemp.Text = Name
	TabTemp.MouseButton1Click:Connect(function()
		TabTemp.Name = math.random(1, 500000000000000000)
		for i,v in Sidebar:GetChildren() do
			if v.ClassName == "TextButton" and v.Name ~= TabTemp.Name then
				v.TextTransparency = 0.3
				v.Image.Visible = false
			elseif v.Name == TabTemp.Name then
				v.TextTransparency = 0
				v.Image.Visible = true
			end
		end
	end)
end
