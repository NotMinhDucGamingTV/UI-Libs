-- Service:
local UserInputService = game:GetService("UserInputService")

-- Instances:
local functions = {}
local MDGTVHub = Instance.new("ScreenGui")
local NofiticationBase = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Dimiss = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Content = Instance.new("TextLabel")
local Countdown = Instance.new("Frame")
local Main = Instance.new("Frame")
local TopBar_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local ButtonCorner = Instance.new("UICorner")
local NofiticationHome = Instance.new("Frame")
local scripts = Instance.new('LocalScript', MDGTVHub)
local event = Instance.new("BindableEvent",MDGTVHub)

--Properties:

MDGTVHub.Name = "MDGTVHub"
MDGTVHub.Parent = game.CoreGui
MDGTVHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

scripts.Name = "MainHandler"

event.Name = "Notification"

Main.Name = "Main"
Main.Parent = MDGTVHub
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0352798067, 0, 0.0675944313, 0)
Main.Size = UDim2.new(0, 501, 0, 293)

TopBar_2.Name = "TopBar"
TopBar_2.Parent = Main
TopBar_2.BackgroundColor3 = Color3.fromRGB(255, 136, 0)
TopBar_2.BorderSizePixel = 0
TopBar_2.Size = UDim2.new(1, 0, 0.102389075, 0)

TextLabel.Parent = TopBar_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0159680638, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 110, 0, 30)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = "MinhDocHub"
TextLabel.TextColor3 = Color3.fromRGB(2254, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.305389225, -53, 0.102389075, 0)
Frame.Size = UDim2.new(0.00199600798, 0, 0.897610903, 0)


NofiticationHome.Name = "NofiticationHome"
NofiticationHome.Parent = MDGTVHub
NofiticationHome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NofiticationHome.BackgroundTransparency = 1.000
NofiticationHome.Position = UDim2.new(0.823069394, 0, 0, 0)
NofiticationHome.Size = UDim2.new(0.175695464, 0, 1, 0)
NofiticationHome.ZIndex = 0

--nofitication
NofiticationBase.Name = "NofiticationBase"
NofiticationBase.Parent = scripts
NofiticationBase.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
NofiticationBase.BorderSizePixel = 0
NofiticationBase.Position = UDim2.new(0.113604188, 0, 0.905718267, 0)
NofiticationBase.Size = UDim2.new(0.824999988, 0, 0.0860495418, 0)

TopBar.Name = "TopBar"
TopBar.Parent = NofiticationBase
TopBar.BackgroundColor3 = Color3.fromRGB(255, 136, 0)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0.318181813, 0)

Dimiss.Name = "Dimiss"
Dimiss.Parent = TopBar
Dimiss.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dimiss.BorderSizePixel = 0
Dimiss.Position = UDim2.new(0.909090936, 0, 0.142857149, 0)
Dimiss.Size = UDim2.new(0.075757578, 0, 0.714285731, 0)
Dimiss.Font = Enum.Font.SourceSans
Dimiss.Text = "X"
Dimiss.TextColor3 = Color3.fromRGB(0, 0, 0)
Dimiss.TextSize = 14.000

Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0252525248, 0, 0, 0)
Title.Size = UDim2.new(0.429292917, 0, 1, 0)
Title.Font = Enum.Font.SourceSans
Title.Text = "Notification"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 18.000
Title.TextWrapped = true

Content.Name = "Content"
Content.Parent = NofiticationBase
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.BorderSizePixel = 0
Content.Position = UDim2.new(0, 0, 0.348484755, 0)
Content.Size = UDim2.new(1, 0, 0.651515126, 0)
Content.Font = Enum.Font.SourceSans
Content.Text = "Nothing!"
Content.TextColor3 = Color3.fromRGB(255, 255, 255)
Content.TextScaled = true
Content.TextSize = 14.000
Content.TextWrapped = true

Countdown.Name = "Countdown"
Countdown.Parent = NofiticationBase
Countdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Countdown.BorderSizePixel = 0
Countdown.Position = UDim2.new(0, 0, 0.969696999, 0)
Countdown.Size = UDim2.new(1, 0, 0.0303030312, 0)

function functions:MakeWindow(Name)
	--Table
	local GuiFunction = {}
	--Instance:
	local Home_2 = Instance.new("ScrollingFrame")
	local Content_2 = Instance.new("Frame")
	--Poperties:
	Home_2.Name = "Home"
	Home_2.Parent = Main
	Home_2.Active = true
	Home_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Home_2.BackgroundTransparency = 1.000
	Home_2.Position = UDim2.new(0.219560876, 0, 0.143344715, 0)
	Home_2.Size = UDim2.new(0.762475073, 0, 0.819112599, 0)
	Home_2.ScrollBarThickness = 0
	Content_2.Name = "Content"
	Content_2.Parent = Home_2
	Content_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	Content_2.BorderSizePixel = 0
	Content_2.Size = UDim2.new(1, 0, 1, 0)
	function GuiFunction:AddStrip(Name,ButtonCallback)
		--Instance:
		local PreviousStrip = nil
		local PreviousStripButton = nil
		local AutoFarm = Instance.new("Frame")
		local ContentCorner = Instance.new("UICorner")
		local Title_2 = Instance.new("TextLabel")
		local LaunchCommand = Instance.new("TextButton")
		local LaunchButtonCorner = Instance.new("UICorner")
		local Mode = Instance.new("TextLabel")
		local Home = Instance.new("TextButton")
		--Poperties:
		Home.Name = "Home"
		Home.Parent = Main
		Home.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
		if PreviousStripButton == nil then
			Home.Position = UDim2.new(0.0159680638, 0, 0.143344715, 0)
		else
			Home.Position = UDim2.new(PreviousStripButton.Position.X.Scale, 0, PreviousStripButton.Position.Y.Scale + 0.086, 0)
		end
		PreviousStripButton = Home
		Home.Size = UDim2.new(0.165668666, 0, 0.0716723576, 0)
		Home.Font = Enum.Font.SourceSans
		Home.Text = "Home"
		Home.TextColor3 = Color3.fromRGB(255, 136, 0)
		Home.TextScaled = true
		Home.TextSize = 14.000
		Home.TextWrapped = true
		ButtonCorner.CornerRadius = UDim.new(0, 5)
		ButtonCorner.Name = "ButtonCorner"
		ButtonCorner.Parent = Home
		AutoFarm.Name = Name
		AutoFarm.Parent = Content_2
		AutoFarm.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
		AutoFarm.BorderSizePixel = 0
		if PreviousStrip == nil then
			AutoFarm.Position = UDim2.new(0.0157068055, 0, 0.0204778165, 0)
		else
			AutoFarm.Position = UDim2.new(PreviousStrip.Position.X.Scale, 0, PreviousStrip.Position.Y.Scale + 0.058, 0)
		end
		AutoFarm.Size = UDim2.new(0, 367, 0, 28)
		PreviousStrip = AutoFarm
		ContentCorner.CornerRadius = UDim.new(0, 6)
		ContentCorner.Name = "ContentCorner"
		ContentCorner.Parent = AutoFarm
		Title_2.Name = "Title"
		Title_2.Parent = AutoFarm
		Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_2.BackgroundTransparency = 1.000
		Title_2.BorderSizePixel = 0
		Title_2.Size = UDim2.new(0, 129, 0, 28)
		Title_2.Font = Enum.Font.SourceSans
		Title_2.Text = Name
		Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_2.TextScaled = true
		Title_2.TextSize = 14.000
		Title_2.TextWrapped = true
		LaunchCommand.Name = "LaunchCommand"
		LaunchCommand.Parent = AutoFarm
		LaunchCommand.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
		LaunchCommand.BorderSizePixel = 0
		LaunchCommand.Position = UDim2.new(0.776566744, 2, 0, 2)
		LaunchCommand.Size = UDim2.new(0, 65, 0, 24)
		LaunchCommand.Font = Enum.Font.SourceSans
		LaunchCommand.Text = "Toggle"
		LaunchCommand.TextColor3 = Color3.fromRGB(255, 255, 255)
		LaunchCommand.TextScaled = true
		LaunchCommand.TextSize = 14.000
		LaunchCommand.TextWrapped = true
		LaunchButtonCorner.CornerRadius = UDim.new(0, 6)
		LaunchButtonCorner.Name = "LaunchButtonCorner"
		LaunchButtonCorner.Parent = LaunchCommand
		Mode.Name = "Mode"
		Mode.Parent = AutoFarm
		Mode.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Mode.BackgroundTransparency = 1.000
		Mode.BorderSizePixel = 0
		Mode.Position = UDim2.new(0.326975465, -3, 0.321428567, -2)
		Mode.Size = UDim2.new(0, 76, 0, 19)
		Mode.Font = Enum.Font.SourceSans
		Mode.Text = "Status: N/A"
		Mode.TextColor3 = Color3.fromRGB(255, 255, 255)
		Mode.TextScaled = true
		Mode.TextSize = 14.000
		Mode.TextWrapped = true
		--functions:
		LaunchCommand.MouseButton1Click:Connect(ButtonCallback)
	end
	return GuiFunction
end
-- Scripts:

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		object.Position = pos
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

MakeDraggable(TopBar_2, Main)

local function TAASHC_fake_script() -- MDGTVHub.Main 

	local NotificationEvent = event
	local RecentNotification = nil
	local RecentNotification2 = nil
	local RecentNotification3 = nil
	local RecentNotification4 = nil
	local RecentNotification5 = nil
	local RecentNotification6 = nil
	local RecentNotification7 = nil
	local RecentNotification8 = nil
	local RecentNotification9 = nil
	local NotificationDebounce = false
	local UserInputService = game:GetService("UserInputService")
	NotificationEvent.Event:Connect(function(TitleText,Content,Duration)
		if NotificationDebounce == false then
			NotificationDebounce = true
		if TitleText == nil then
			TitleText = "Nofitication"
		end
		if Content == nil then
			error("Must Enter a Message")
		end
		if Duration == nil  then
			Duration = 10
		end
		if RecentNotification ~= nil then
			local recenttween = game:GetService("TweenService"):Create(RecentNotification,TweenInfo.new(.5),{Position = RecentNotification.Position - UDim2.new(0,0,0.092,0)})
			recenttween:Play()
		end
		if RecentNotification2 ~= nil then
			local recenttween2 = game:GetService("TweenService"):Create(RecentNotification2,TweenInfo.new(.5),{Position = RecentNotification2.Position - UDim2.new(0,0,0.092,0)})
			recenttween2:Play()
		end
		if RecentNotification3 ~= nil then
			local recenttween3 = game:GetService("TweenService"):Create(RecentNotification3,TweenInfo.new(.5),{Position = RecentNotification3.Position - UDim2.new(0,0,0.092,0)})
			recenttween3:Play()
		end
		if RecentNotification4 ~= nil then
			local recenttween4 = game:GetService("TweenService"):Create(RecentNotification4,TweenInfo.new(.5),{Position = RecentNotification4.Position - UDim2.new(0,0,0.092,0)})
			recenttween4:Play()
		end
		if RecentNotification5 ~= nil then
			local recenttween5 = game:GetService("TweenService"):Create(RecentNotification5,TweenInfo.new(.5),{Position = RecentNotification5.Position - UDim2.new(0,0,0.092,0)})
			recenttween5:Play()
			end
			if RecentNotification6 ~= nil then
				local recenttween6 = game:GetService("TweenService"):Create(RecentNotification6,TweenInfo.new(.5),{Position = RecentNotification6.Position - UDim2.new(0,0,0.092,0)})
				recenttween6:Play()
			end
			if RecentNotification7 ~= nil then
				local recenttween7 = game:GetService("TweenService"):Create(RecentNotification7,TweenInfo.new(.5),{Position = RecentNotification7.Position - UDim2.new(0,0,0.092,0)})
				recenttween7:Play()
			end
			if RecentNotification8 ~= nil then
				local recenttween8 = game:GetService("TweenService"):Create(RecentNotification8,TweenInfo.new(.5),{Position = RecentNotification8.Position - UDim2.new(0,0,0.092,0)})
				recenttween8:Play()
			end
			if RecentNotification9 ~= nil then
				local recenttween9 = game:GetService("TweenService"):Create(RecentNotification9,TweenInfo.new(.5),{Position = RecentNotification9.Position - UDim2.new(0,0,0.092,0)})
				recenttween9:Play()
			end
		local Notifcation = script.NofiticationBase:Clone()
		Notifcation.Name = "Notification"
		Notifcation.Parent = script.Parent.NofiticationHome
		Notifcation.TopBar.Title.Text = TitleText
		Notifcation.Content.Text = Content
		Notifcation.Position = UDim2.new(1,0,Notifcation.Position.Y.Scale,0)
		RecentNotification9 = RecentNotification8
		RecentNotification8 = RecentNotification7
		RecentNotification7 = RecentNotification6
		RecentNotification6 = RecentNotification5
		RecentNotification5 = RecentNotification4
		RecentNotification4 = RecentNotification3
		RecentNotification3 = RecentNotification2
		RecentNotification2 = RecentNotification
		RecentNotification = Notifcation
		local tween = game:GetService("TweenService"):Create(Notifcation,TweenInfo.new(.5),{Position = script.NofiticationBase.Position})
		tween:Play()
		tween.Completed:Connect(function()
			local tween2 = game:GetService("TweenService"):Create(Notifcation.Countdown,TweenInfo.new(Duration),{Size = UDim2.new(0,0,0,Notifcation.Countdown.Size.Y.Offset)})
				tween2:Play()
				NotificationDebounce = false
			tween2.Completed:Connect(function()
				local tween3 = game:GetService("TweenService"):Create(Notifcation,TweenInfo.new(.5),{Position = UDim2.new(1,0,Notifcation.Position.Y.Scale,0)})
				tween3:Play()	
				tween3.Completed:Connect(function()
					Notifcation:Destroy()
					end)
				end)
			end)
		end
	end)
	
	
end
coroutine.wrap(TAASHC_fake_script)()
return functions
