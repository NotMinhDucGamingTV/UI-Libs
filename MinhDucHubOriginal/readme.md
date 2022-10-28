## The MinhDucHub Original UI
Usage:
``
local UI = require(script.UI)
local Window = UI:Window("MinhDocHub")
local SetSubcription = Window:SetSubscriptionManually("Premium")
local HomeTabs = Window:Tabs("Home","rbxassetid://3926307971")
local HomeTabSlider = HomeTabs:Slider("Dude",0,100,0,function(Value)
	print(Value)
end)
local HomeTabButton = HomeTabs:Button("SUSUSUSY Button",function()
	print("OK")
end)
local HomeTabDropdown = HomeTabs:Dropdown("SUS",{"AMOGUS","ARE","SUSSY","BAKA"},function(Value)
	print(Value)
end)
local HomeTabSwitch = HomeTabs:Switch("SUSSY Switch",function(Value)
	print(Value)
end)
local HomeTabSeperator = HomeTabs:Seperator()
local HomeTabText = HomeTabs:Text("SUS")
local SusHomeTabs = Window:Tabs("SusHome","rbxassetid://3926307971")

``
