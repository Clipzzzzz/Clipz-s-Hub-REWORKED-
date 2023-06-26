local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local COREGUI = game:GetService("CoreGui")
local UIS = game:GetService('UserInputService')

function CloseWindow()
	COREGUI:WaitForChild("Orion"):Destroy()
end


local Window = OrionLib:MakeWindow({Name = "Project Clipz", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Project Clipz | ROLL the DICE", IntroIcon = "rbxassetid://13865945535", Icon = "rbxassetid://13858115678", CloseCallback = CloseWindow()})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local Tab = Window:MakeTab({
	Name = "Featured",
	Icon = "rbxassetid://10002492915",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Upgrades",
	Icon = "rbxassetid://2245714200",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Section"
})

--[[
Name = <string> - The name of the section.
]]

OrionLib:MakeNotification({
	Name = "Project Clipz",
	Content = "Project Clipz is loading, thank you for using the hub.",
	Image = "rbxassetid://13865945535",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]
