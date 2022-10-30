local Ui = {}
local Player = game.Players.LocalPlayer
local UserService = game:GetService("UserService")
function Ui:Window(TitleName:string)
	--Initalize Element:
	---Variable:
	local DisplayName = nil
	local FetchedUsername = nil
	local lastnameTween = nil
	local SettingsOpen = false
	local currentname = "DisplayName"
	local CurrentTab = nil
	local CurrentTabWindow = nil
	local CurrentTabLabel = nil
	local Minimalized = false
	---Main:
	local ScreenGui = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	---Windows Action Area:
	----Main:
	local Handler = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	----Hide Button:
	local Hide = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local Button = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	----Close Button:
	local Close = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local Button_2 = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")
	local TextLabel_2 = Instance.new("TextLabel")
	---Info:
	local Info = Instance.new("Frame")
	local UICorner_7 = Instance.new("UICorner")
	local Effect = Instance.new("Frame")
	local Effect_2 = Instance.new("Frame")
	local ImageLabel = Instance.new("ImageLabel")
	local UICorner_8 = Instance.new("UICorner")
	local Username = Instance.new("TextLabel")
	local SubscriptionType = Instance.new("TextLabel")
	---Tabs:
	local Tabs = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local MainMenu = Instance.new("Frame")
	---Settings:
	local SettingBtn = Instance.new("ImageButton")
	local Settings = Instance.new("Frame")
	local UICorner_9 = Instance.new("UICorner")
	local SettingsTextLabel = Instance.new("TextLabel")
	--Properties:
	---Mains:
	ScreenGui.Name = TitleName
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Main.Name = "Main"
	Main.Parent = ScreenGui
	Main.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	Main.ClipsDescendants = true
	Main.Position = UDim2.new(0.267515928, 0, 0.167322829, 0)
	Main.Size = UDim2.new(0, 500, 0, 287)
	UICorner.Parent = Main
	Title.Name = "Title"
	Title.Parent = Main
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.5, 0, 0.0700000003, 0)
	Title.Size = UDim2.new(0, 84, 0, 20)
	Title.Font = Enum.Font.SourceSans
	Title.Text = TitleName
	Title.TextColor3 = Color3.fromRGB(152, 152, 152)
	Title.TextSize = 20.000
	---Windows Action Area:
	----Main:
	Handler.Name = "Handler"
	Handler.Parent = Main
	Handler.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	Handler.BorderSizePixel = 0
	Handler.ClipsDescendants = true
	Handler.Position = UDim2.new(0.899999976, 0, 0.0350000001, 0)
	Handler.Size = UDim2.new(0, 40, 0, 20)
	UICorner_2.Parent = Handler
	----Hide Button:
	Hide.Name = "Hide"
	Hide.Parent = Handler
	Hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hide.BackgroundTransparency = 1.000
	Hide.BorderSizePixel = 0
	Hide.ClipsDescendants = true
	Hide.Size = UDim2.new(0.5, 0, 1, 0)
	UICorner_3.Parent = Hide
	Button.Name = "Button"
	Button.Parent = Hide
	Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundTransparency = 1.000
	Button.Size = UDim2.new(1, 0, 1, 0)
	Button.ZIndex = 2
	Button.Font = Enum.Font.SourceSans
	Button.Text = ""
	Button.TextColor3 = Color3.fromRGB(0, 0, 0)
	Button.TextSize = 14.000
	UICorner_4.Parent = Button
	TextLabel.Parent = Hide
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "-"
	TextLabel.TextColor3 = Color3.fromRGB(126, 126, 126)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	----Close Button:
	Close.Name = "Close"
	Close.Parent = Handler
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderSizePixel = 0
	Close.ClipsDescendants = true
	Close.Position = UDim2.new(0.5, 0, 0, 0)
	Close.Size = UDim2.new(0.5, 0, 1, 0)
	UICorner_5.Parent = Close
	Button_2.Name = "Button"
	Button_2.Parent = Close
	Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button_2.BackgroundTransparency = 1.000
	Button_2.Size = UDim2.new(1, 0, 1, 0)
	Button_2.ZIndex = 2
	Button_2.Font = Enum.Font.SourceSans
	Button_2.Text = ""
	Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Button_2.TextSize = 14.000
	UICorner_6.Parent = Button_2
	TextLabel_2.Parent = Close
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
	TextLabel_2.Font = Enum.Font.SourceSans
	TextLabel_2.Text = "X"
	TextLabel_2.TextColor3 = Color3.fromRGB(126, 126, 126)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextWrapped = true
	---Info:
	Info.Name = "Info"
	Info.Parent = Main
	Info.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	Info.Position = UDim2.new(0, 0, 0.836000025, 0)
	Info.Size = UDim2.new(0, 120, 0, 46)
	UICorner_7.Parent = Info
	Effect.Name = "Effect"
	Effect.Parent = Info
	Effect.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	Effect.BorderSizePixel = 0
	Effect.Position = UDim2.new(0.949999988, 0, 0, 0)
	Effect.Size = UDim2.new(0, 6, 0, 46)
	Effect_2.Name = "Effect"
	Effect_2.Parent = Info
	Effect_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	Effect_2.BorderSizePixel = 0
	Effect_2.Size = UDim2.new(0, 111, 0, 3)
	ImageLabel.Parent = Info
	ImageLabel.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	ImageLabel.Position = UDim2.new(0.0720720738, 0, 0.217391297, 0)
	ImageLabel.Size = UDim2.new(0, 29, 0, 29)
	UICorner_8.CornerRadius = UDim.new(1, 0)
	UICorner_8.Parent = ImageLabel
	Username.Name = "Username"
	Username.Parent = Info
	Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Username.BackgroundTransparency = 1.000
	Username.Position = UDim2.new(0.366666675, 1, 0.195652172, -1)
	Username.Size = UDim2.new(0, 67, 0, 17)
	Username.Font = Enum.Font.SourceSans
	Username.Text = "tranminhcar"
	Username.TextColor3 = Color3.fromRGB(149, 149, 149)
	Username.TextSize = 14.000
	Username.TextWrapped = true
	SubscriptionType.Name = "SubscriptionType"
	SubscriptionType.Parent = Info
	SubscriptionType.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SubscriptionType.BackgroundTransparency = 1.000
	SubscriptionType.Position = UDim2.new(0.379999995, 0, 0.5, 0)
	SubscriptionType.Size = UDim2.new(0, 44, 0, 14)
	SubscriptionType.Font = Enum.Font.SourceSansItalic
	SubscriptionType.TextColor3 = Color3.fromRGB(149, 149, 149)
	SubscriptionType.TextScaled = true
	SubscriptionType.TextSize = 14.000
	SubscriptionType.TextWrapped = true
	---Tabs:
	Tabs.Name = "Tabs"
	Tabs.Parent = Main
	Tabs.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	Tabs.BorderSizePixel = 0
	Tabs.Position = UDim2.new(0, 0, 0.135888502, 0)
	Tabs.Size = UDim2.new(0, 120, 0, 203)
	UIListLayout.Parent = Tabs
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0,2)
	MainMenu.Name = "MainMenu"
	MainMenu.Parent = Main
	MainMenu.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	MainMenu.BorderSizePixel = 0
	MainMenu.ClipsDescendants = true
	MainMenu.Position = UDim2.new(0.254000008, 0, 0.135888502, 0)
	MainMenu.Size = UDim2.new(0, 363, 0, 238)
	---Settings:
	SettingBtn.Name = "SettingBtn"
	SettingBtn.Parent = Main
	SettingBtn.BackgroundTransparency = 1.000
	SettingBtn.Position = UDim2.new(0.0219999999, -3, 0.0278745648, 0)
	SettingBtn.Rotation = 360.000
	SettingBtn.Size = UDim2.new(0, 25, 0, 25)
	SettingBtn.ZIndex = 6
	SettingBtn.Image = "rbxassetid://3926307971"
	SettingBtn.ImageRectOffset = Vector2.new(324, 124)
	SettingBtn.ImageRectSize = Vector2.new(36, 36)
	Settings.Name = "Settings"
	Settings.Parent = Main
	Settings.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	Settings.ClipsDescendants = true
	Settings.ZIndex = 5
	UICorner_9.CornerRadius = UDim.new(1, 0)
	UICorner_9.Parent = Settings
	SettingsTextLabel.Parent = Settings
	SettingsTextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	SettingsTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingsTextLabel.BackgroundTransparency = 1.000
	SettingsTextLabel.BorderSizePixel = 0
	SettingsTextLabel.Position = UDim2.new(0, 250,0, 143)
	SettingsTextLabel.Size = UDim2.new(0, 200, 0, 40)
	SettingsTextLabel.Font = Enum.Font.SourceSansBold
	SettingsTextLabel.Text = "Comming Soon"
	SettingsTextLabel.TextColor3 = Color3.fromRGB(218, 218, 218)
	SettingsTextLabel.TextSize = 35.000
	SettingsTextLabel.TextWrapped = true
	---Function:
	local functions = {}
	spawn(function()
		local gui = Main
		local dragging
		local dragInput
		local dragStart
		local startPos
		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end)
	if game:GetService("UserInputService").TouchEnabled then
		MobileBtn = Instance.new("Frame")
		local MobileUICorner = Instance.new("UICorner")
		MobileTextLabel = Instance.new("TextButton")
		local MobileUICorner_2 = Instance.new("UICorner")
		MobileBtn.Name = "MobileBtn"
		MobileBtn.Parent = ScreenGui
		MobileBtn.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		MobileBtn.Position = UDim2.new(0.12049336, 0, 0.224899605, 0)
		MobileBtn.Size = UDim2.new(0, 75, 0, 75)
		MobileUICorner.CornerRadius = UDim.new(0, 30)
		MobileUICorner.Parent = MobileBtn
		MobileTextLabel.Parent = MobileBtn
		MobileTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MobileTextLabel.BackgroundTransparency = 1.000
		MobileTextLabel.Size = UDim2.new(1, 0, 1, 0)
		MobileTextLabel.Font = Enum.Font.SourceSansItalic
		MobileTextLabel.Text = "Close"
		MobileTextLabel.TextColor3 = Color3.fromRGB(227, 227, 227)
		MobileTextLabel.TextSize = 27.000
		MobileTextLabel.TextWrapped = true
		MobileUICorner_2.CornerRadius = UDim.new(0, 30)
		MobileUICorner_2.Parent = MobileTextLabel
		MobileTextLabel.MouseButton1Click:Connect(function()
			if Minimalized == false then
				Minimalized = "Minimalizing"
				local Tween = game:GetService("TweenService"):Create(Main,TweenInfo.new(.5),{Position = UDim2.new(Main.Position.X.Scale,0,-1,0)})
				Tween:Play()
				Tween.Completed:Connect(function()
					Minimalized = true
					MobileTextLabel.Text = "Open"
				end)
			elseif Minimalized == true then
				Minimalized = "Minimalizing"
				local Tween = game:GetService("TweenService"):Create(Main,TweenInfo.new(.5),{Position = UDim2.new(Main.Position.X.Scale,0,0.167322829,0)})
				Tween:Play()
				Tween.Completed:Connect(function()
					Minimalized = false
					MobileTextLabel.Text = "Close"
				end)
			end
		end)
	end
	Title.MouseEnter:Connect(function()
		local tween = game:GetService("TweenService"):Create(Title,TweenInfo.new(.5),{TextSize = 25,TextColor3 = Color3.new(1, 1, 1)})
		tween:Play()
	end)
	Title.MouseLeave:Connect(function()
		local tween = game:GetService("TweenService"):Create(Title,TweenInfo.new(.5),{TextSize = 20,TextColor3 = Color3.fromRGB(152, 152, 152)})
		tween:Play()
	end)
	Button.MouseEnter:Connect(function()
		local tween = game:GetService("TweenService"):Create(TextLabel,TweenInfo.new(.5),{TextColor3 = Color3.fromRGB(255, 255, 255)})
		tween:Play()
	end)
	Button_2.MouseEnter:Connect(function()
		local tween = game:GetService("TweenService"):Create(TextLabel_2,TweenInfo.new(.5),{TextColor3 = Color3.fromRGB(255, 255, 255)})
		tween:Play()
	end)
	Button.MouseLeave:Connect(function()
		local tween = game:GetService("TweenService"):Create(TextLabel,TweenInfo.new(.5),{TextColor3 = Color3.fromRGB(126, 126, 126)})
		tween:Play()
	end)
	Button_2.MouseLeave:Connect(function()
		local tween = game:GetService("TweenService"):Create(TextLabel_2,TweenInfo.new(.5),{TextColor3 = Color3.fromRGB(126, 126, 126)})
		tween:Play()
	end)
	Button.MouseButton1Click:Connect(function()
		if Minimalized == false then
			Minimalized = "Minimalizing"
			local Tween = game:GetService("TweenService"):Create(Main,TweenInfo.new(.5),{Position = UDim2.new(Main.Position.X.Scale,0,-1,0)})
			Tween:Play()
			Tween.Completed:Connect(function()
				Minimalized = true
				if game:GetService("UserInputService").TouchEnabled then
					MobileTextLabel.Text = "Open"
				end
			end)
		end
	end)
	Button_2.MouseButton1Click:Connect(function()
		local Tween = game:GetService("TweenService"):Create(Main,TweenInfo.new(.5),{Position = UDim2.new(Main.Position.X.Scale,0,-1,0)})
		Tween:Play()
		Tween.Completed:Connect(function()
			spawn(function()
				Main:Destroy()
				if game:GetService("UserInputService").TouchEnabled then
					MobileBtn:Destroy()
				end
			end)
		end)
	end)
	game:GetService("UserInputService").InputBegan:Connect(function(Input,GPE)
		if GPE then return end
		if Input.KeyCode == Enum.KeyCode.RightControl and Minimalized == false then
			Minimalized = "Minimalizing"
			local Tween = game:GetService("TweenService"):Create(Main,TweenInfo.new(.5),{Position = UDim2.new(Main.Position.X.Scale,0,-1,0)})
			Tween:Play()
			Tween.Completed:Connect(function()
				Minimalized = true
				if game:GetService("UserInputService").TouchEnabled then
					MobileTextLabel.Text = "Open"
				end
			end)
		elseif Input.KeyCode == Enum.KeyCode.RightControl and Minimalized == true then
			Minimalized = "Minimalizing"
			local Tween = game:GetService("TweenService"):Create(Main,TweenInfo.new(.5),{Position = UDim2.new(Main.Position.X.Scale,0,0.167322829,0)})
			Tween:Play()
			Tween.Completed:Connect(function()
				Minimalized = false
				if game:GetService("UserInputService").TouchEnabled then
					MobileTextLabel.Text = "Open"
				end
			end)
		end
	end)
	SettingBtn.MouseButton1Click:Connect(function()
		if SettingsOpen == false then
			UICorner_9.CornerRadius = UDim.new(0,15)
			local tween = game:GetService("TweenService"):Create(SettingBtn,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Rotation = 360})
			local sizetween = game:GetService("TweenService"):Create(Settings,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = UDim2.new(1,0,1,0)})
			local Cornertween = game:GetService("TweenService"):Create(UICorner_9,TweenInfo.new(.5,Enum.EasingStyle.Quad),{CornerRadius = UDim.new(0,8)})
			tween:Play()
			sizetween:Play()
			Cornertween:Play()
			tween.Completed:Connect(function()
				repeat wait(.5) until sizetween.Completed and Cornertween.Completed
				SettingsOpen = true
			end)
		elseif SettingsOpen == true then
			UICorner_9.CornerRadius = UDim.new(0,15)
			local tween = game:GetService("TweenService"):Create(SettingBtn,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Rotation = 0})
			local sizetween = game:GetService("TweenService"):Create(Settings,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = UDim2.new(0,0,0,0)})
			local Cornertween = game:GetService("TweenService"):Create(UICorner_9,TweenInfo.new(.5,Enum.EasingStyle.Quad),{CornerRadius = UDim.new(0,8)})
			tween:Play()
			sizetween:Play()
			Cornertween:Play()
			tween.Completed:Connect(function()
				repeat wait(.5) until sizetween.Completed and Cornertween.Completed
				SettingsOpen = false
			end)
		end
	end)
	Username.MouseEnter:Connect(function()
		if currentname == "DisplayName" then
			if lastnameTween ~= nil then
				repeat wait(.5) until lastnameTween.Completed
			end
			local tween = game:GetService("TweenService"):Create(Username,TweenInfo.new(1.5),{MaxVisibleGraphemes = 0})
			lastnameTween = tween
			tween:Play()
			tween.Completed:Connect(function()
				Username.TextTruncate = Enum.TextTruncate.None
				lastnameTween = nil
				Username.Text = FetchedUsername
				wait(1)
				local TextLength = 0
				for i,v in utf8.graphemes(Username.Text) do
					TextLength += 1
				end
				local tween = game:GetService("TweenService"):Create(Username,TweenInfo.new(1.5),{MaxVisibleGraphemes = TextLength})
				lastnameTween = tween
				tween:Play()
				tween.Completed:Connect(function()
					lastnameTween = nil
					currentname = "Username"
					Username.TextTruncate = Enum.TextTruncate.AtEnd
				end)
			end)
		elseif currentname == "Username" then
			if lastnameTween ~= nil then
				repeat wait(1) until lastnameTween.Completed
			end
			local tween = game:GetService("TweenService"):Create(Username,TweenInfo.new(1.5),{MaxVisibleGraphemes = 0})
			lastnameTween = tween
			tween:Play()
			tween.Completed:Connect(function()
				Username.TextTruncate = Enum.TextTruncate.None
				lastnameTween = nil
				Username.Text = DisplayName
				wait(1)
				local TextLength = 0
				for i,v in utf8.graphemes(Username.Text) do
					TextLength += 1
				end
				local tween = game:GetService("TweenService"):Create(Username,TweenInfo.new(1.5),{MaxVisibleGraphemes = TextLength})
				lastnameTween = tween
				tween:Play()
				tween.Completed:Connect(function()
					lastnameTween = nil
					Username.TextTruncate = Enum.TextTruncate.AtEnd
					currentname = "DisplayName"
				end)
			end)
		end
	end)
	spawn(function()
		local success, result = pcall(function()
			return UserService:GetUserInfosByUserIdsAsync({Player.UserId})
		end)
		if success then
			for _, userInfo in ipairs(result) do
				if userInfo.Id == Player.UserId then
					DisplayName = userInfo.DisplayName
					FetchedUsername = userInfo.Username
				end
			end
		end
		local Avatar = "https://www.roblox.com/headshot-thumbnail/image?userId=".. Player.UserId .."&width=420&height=420&format=png"
		ImageLabel.Image = Avatar
		local tween = game:GetService("TweenService"):Create(Username,TweenInfo.new(1.5),{MaxVisibleGraphemes = 0})
		lastnameTween = tween
		tween:Play()
		tween.Completed:Connect(function()
			lastnameTween = nil
			Username.Text = DisplayName
			wait(1)
			local TextLength = 0
			for i,v in utf8.graphemes(Username.Text) do
				TextLength += 1
			end
			local tween = game:GetService("TweenService"):Create(Username,TweenInfo.new(1.5),{MaxVisibleGraphemes = TextLength})
			lastnameTween = tween
			tween:Play()
			tween.Completed:Connect(function()
				lastnameTween = nil
				Username.TextTruncate = Enum.TextTruncate.AtEnd
			end)
		end)
	end)
	function functions:SetSubscriptionFromWeb(Website:string)
		local Status = game:HttpGet(Website)
		local tween = game:GetService("TweenService"):Create(SubscriptionType,TweenInfo.new(1.5),{MaxVisibleGraphemes = 0})
		tween:Play()
		tween.Completed:Connect(function()
			SubscriptionType.Text = Status
			wait(1)
			local TextLength = 0
			for i,v in utf8.graphemes(SubscriptionType.Text) do
				TextLength += 1
			end
			local tween = game:GetService("TweenService"):Create(SubscriptionType,TweenInfo.new(1.5),{MaxVisibleGraphemes = TextLength})
			tween:Play()
			tween.Completed:Connect(function()
				SubscriptionType.TextTruncate = Enum.TextTruncate.AtEnd
				print("If you configurated the webserver correctly,it should show in the section.")
			end)
		end)
	end
	function functions:SetSubscriptionManually(SubscriptionState:string)
		local tween = game:GetService("TweenService"):Create(SubscriptionType,TweenInfo.new(1.5),{MaxVisibleGraphemes = 0})
			tween:Play()
			tween.Completed:Connect(function()
			SubscriptionType.Text = SubscriptionState
			wait(1)
			local TextLength = 0
			for i,v in utf8.graphemes(SubscriptionType.Text) do
				TextLength += 1
			end
			local tween = game:GetService("TweenService"):Create(SubscriptionType,TweenInfo.new(1.5),{MaxVisibleGraphemes = TextLength})
			tween:Play()
			tween.Completed:Connect(function()
				SubscriptionType.TextTruncate = Enum.TextTruncate.AtEnd
			end)
		end)
	end
	function functions:GetCurrentTab()
		return CurrentTab,CurrentTabLabel,CurrentTabWindow
	end
	function functions:Tabs(TabsName:string,Icon:string)
		--Verify Value:
		if type(Icon) ~= "string" then
			Icon = ""
		end
		--Initalize Component:
		---Tabs Label:
		local Home = Instance.new("Frame")
		local home = Instance.new("ImageButton")
		local Title_2 = Instance.new("TextLabel")
		local Button_3 = Instance.new("TextButton")
		---Tabs Menu:
		local Home_2 = Instance.new("ScrollingFrame")
		local ContentFixer = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		--Propperties:
		---Tabs Label:
		Home.Name = TabsName
		Home.Parent = Tabs
		Home.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		Home.BorderColor3 = Color3.fromRGB(255, 255, 255)
		Home.BorderSizePixel = 0
		Home.Size = UDim2.new(0, 120, 0, 36)
		home.Name = "home"
		home.Parent = Home
		home.BackgroundTransparency = 1.000
		home.Position = UDim2.new(0.0666666701, 0, 0.194444448, -1)
		home.Size = UDim2.new(0, 25, 0, 25)
		home.ZIndex = 2
		home.Image = Icon
		home.ImageColor3 = Color3.fromRGB(109, 109, 109)
		home.ImageRectOffset = Vector2.new(964, 204)
		home.ImageRectSize = Vector2.new(36, 36)
		Title_2.Name = "Title"
		Title_2.Parent = Home
		Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_2.BackgroundTransparency = 1.000
		Title_2.Position = UDim2.new(0.300000012, 0, 0.166666672, 0)
		Title_2.Size = UDim2.new(0, 73, 0, 25)
		Title_2.Font = Enum.Font.SourceSansItalic
		Title_2.Text = TitleName
		Title_2.TextColor3 = Color3.fromRGB(124, 124, 124)
		Title_2.TextScaled = true
		Title_2.TextSize = 14.000
		Title_2.TextWrapped = true
		Title_2.TextXAlignment = Enum.TextXAlignment.Left
		Button_3.Name = "Button"
		Button_3.Parent = Home
		Button_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button_3.BackgroundTransparency = 1.000
		Button_3.Size = UDim2.new(1, 0, 1, 0)
		Button_3.Font = Enum.Font.SourceSans
		Button_3.Text = ""
		Button_3.TextColor3 = Color3.fromRGB(0, 0, 0)
		Button_3.TextSize = 14.000
		---Tabs Menu:
		Home_2.Name = TabsName
		Home_2.Parent = MainMenu
		Home_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Home_2.Position = UDim2.new(1,0,0,0)
		Home_2.BackgroundTransparency = 1.000
		Home_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Home_2.BorderSizePixel = 0
		Home_2.Size = UDim2.new(1, 0, 1, 0)
		Home_2.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		Home_2.ScrollBarThickness = 6
		Home_2.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		Home_2.VerticalScrollBarInset = Enum.ScrollBarInset.Always
		ContentFixer.Name = "ContentFixer"
		ContentFixer.Parent = Home_2
		ContentFixer.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
		ContentFixer.BorderSizePixel = 0
		ContentFixer.Size = UDim2.new(1, 0, 1, 0)
		UIListLayout_2.Parent = ContentFixer
		UIListLayout_2.Padding = UDim.new(0,2)
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		---Tabs Function:
		local TabFunctions = {}
		Button_3.MouseButton1Click:Connect(function()
			if CurrentTab == nil then
				CurrentTab = "Tweening"
				local tween = game:GetService("TweenService"):Create(Title_2,TweenInfo.new(.15,Enum.EasingStyle.Linear),{TextColor3 = Color3.fromRGB(255,255,255)})
				local tween2 = game:GetService("TweenService"):Create(home,TweenInfo.new(.15,Enum.EasingStyle.Linear),{ImageColor3 = Color3.fromRGB(255,255,255)})
				local tween3 = game:GetService("TweenService"):Create(Home,TweenInfo.new(.15,Enum.EasingStyle.Linear),{BorderSizePixel = 1})
				tween:Play()
				tween2:Play()
				tween3:Play()
				tween.Completed:Connect(function()
					repeat wait(1) until tween2.Completed and tween3.Completed
					local tween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.15,Enum.EasingStyle.Linear),{Position = UDim2.new(0,0,0,0)})
					tween:Play()
					tween.Completed:Connect(function()
						CurrentTabLabel = Home
						CurrentTabWindow = Home_2
						CurrentTab = TitleName
					end)
				end)
			elseif CurrentTab ~= nil and CurrentTab ~= TitleName then
				local tween = game:GetService("TweenService"):Create(Title_2,TweenInfo.new(.15,Enum.EasingStyle.Linear),{TextColor3 = Color3.fromRGB(255,255,255)})
				local tween2 = game:GetService("TweenService"):Create(home,TweenInfo.new(.15,Enum.EasingStyle.Linear),{ImageColor3 = Color3.fromRGB(255,255,255)})
				local tween3 = game:GetService("TweenService"):Create(Home,TweenInfo.new(.15,Enum.EasingStyle.Linear),{BorderSizePixel = 1})
				local tween4 = game:GetService("TweenService"):Create(CurrentTabLabel.Title,TweenInfo.new(.15,Enum.EasingStyle.Linear),{TextColor3 = Color3.fromRGB(129,129,129)})
				local tween5 = game:GetService("TweenService"):Create(CurrentTabLabel.home,TweenInfo.new(.15,Enum.EasingStyle.Linear),{ImageColor3 = Color3.fromRGB(104,104,104)})
				local tween6 = game:GetService("TweenService"):Create(CurrentTabLabel,TweenInfo.new(.15,Enum.EasingStyle.Linear),{BorderSizePixel = 0})
				tween:Play()
				tween2:Play()
				tween3:Play()
				tween4:Play()
				tween5:Play()
				tween6:Play()
				tween.Completed:Connect(function()
					repeat wait(.5) until tween2.Completed and tween3.Completed and tween4.Completed and tween5.Completed and tween6.Completed
					local tween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.15,Enum.EasingStyle.Linear),{Position = UDim2.new(0,0,0,0)})
					local tween2 = game:GetService("TweenService"):Create(CurrentTabWindow,TweenInfo.new(.15,Enum.EasingStyle.Linear),{Position = UDim2.new(1,0,0,0)})
					tween:Play()
					tween2:Play()
					tween.Completed:Connect(function()
						repeat wait(.5) until tween2.Completed
						CurrentTabLabel = Home
						CurrentTabWindow = Home_2
						CurrentTab = TitleName
					end)
				end)
			end
		end)
		function TabFunctions:Slider(SliderName:string,MinValue:number,MaxValue:number,StartAt:number,Callback)
			-- Variable:
			local lastTween = nil
			local Dragging = false
			--Initalize Element:
			local Slider = Instance.new("Frame")
			local SliderValueFrame = Instance.new("Frame")
			local Title_6 = Instance.new("TextLabel")
			local Main_6 = Instance.new("Frame")
			local BttnMain_2 = Instance.new("Frame")
			local TextButton_4 = Instance.new("TextButton")
			--Properties:
			Slider.Name = SliderName.."Slider"
			Slider.Parent = ContentFixer
			Slider.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
			Slider.BorderSizePixel = 0
			Slider.Position = UDim2.new(-0.0137741044, 0, 0.512605071, 0)
			Slider.Size = UDim2.new(1, 0, 0, 30)
			Title_6.Name = "Title"
			Title_6.Parent = Slider
			Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_6.BackgroundTransparency = 1.000
			Title_6.Position = UDim2.new(0.0606060624, 0, 0.166999817, 0)
			Title_6.Size = UDim2.new(0.300275475, 0, 0.69999975, 0)
			Title_6.Text = SliderName
			Title_6.Font = Enum.Font.SourceSansItalic
			Title_6.TextColor3 = Color3.fromRGB(166, 166, 166)
			Title_6.TextScaled = true
			Title_6.TextSize = 14.000
			Title_6.TextWrapped = true
			Title_6.TextXAlignment = Enum.TextXAlignment.Left
			Main_6.Name = "Main"
			Main_6.Parent = Slider
			Main_6.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
			Main_6.BorderSizePixel = 0
			Main_6.Position = UDim2.new(0.30811286, 0, 0.367000312, 0)
			Main_6.Size = UDim2.new(0, 239, 0, 11)
			SliderValueFrame.Name = "SliderValueFrame"
			SliderValueFrame.Parent = Main_6
			SliderValueFrame.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
			SliderValueFrame.BorderSizePixel = 0
			SliderValueFrame.Size = UDim2.new((StartAt or 0)/ MaxValue,0,1,0)
			BttnMain_2.Name = "BttnMain"
			BttnMain_2.Parent = Main_6
			BttnMain_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			BttnMain_2.BorderSizePixel = 0
			BttnMain_2.Size = UDim2.new(0.0407949798, 0, 1, 0)
			BttnMain_2.Position = UDim2.new(0,0,0,0)
			TextButton_4.Parent = BttnMain_2
			TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_4.BackgroundTransparency = 1.000
			TextButton_4.Size = UDim2.new(1, 0, 1, 0)
			TextButton_4.Font = Enum.Font.SourceSans
			TextButton_4.Text = ""
			TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_4.TextSize = 14.000
			---Slider Function:
			local SliderFunc = {}
			function SliderFunc:SetMax(Value:number)
				MaxValue = Value
			end
			local function move(input)
				local MLocation = game:GetService("UserInputService"):GetMouseLocation()
				local RelativePos = (MLocation - Slider.AbsolutePosition)
				local pos =	UDim2.new(math.clamp(RelativePos.X / Slider.AbsoluteSize.X, 0, 1),-5,0,0)
				local pos2 = UDim2.new(math.clamp(RelativePos.X / Slider.AbsoluteSize.X, 0, 1),0,1,0)
				SliderValueFrame.Size = pos2
				BttnMain_2.Position = pos
				local value = math.floor(((pos.X.Scale * MaxValue) / MaxValue) * (MaxValue - MinValue) + MinValue)
				spawn(function()
						Title_6.Text = "Value: "..tostring(value)
				end)
				pcall(Callback, value)
			end
			TextButton_4.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					Dragging = true
				end
			end)
			TextButton_4.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					Dragging = false
					wait(1)
					Title_6.Text = SliderName
				end
			end)
			game:GetService("UserInputService").InputChanged:Connect(function(input)
				if Dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
					move(input)
				end
			end)
			local CanvaTween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)})
						CanvaTween:Play()
		end
		function TabFunctions:Button(ButtonName:string,Callback)
			local Button = Instance.new("Frame")
			local Main = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local TextButton = Instance.new("TextButton")
			Button.Name = ButtonName.."Button"
			Button.Parent = ContentFixer
			Button.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(1, 0, 0, 30)
			Main.Name = "Main"
			Main.Parent = Button
			Main.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
			Main.BorderSizePixel = 0
			Main.Position = UDim2.new(0.0385674946, 0, 0.166999817, 0)
			Main.Size = UDim2.new(0, 336, 0, 21)
			Title.Name = "Title"
			Title.Parent = Main
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.Text = ButtonName
			Title.BackgroundTransparency = 1.000
			Title.Size = UDim2.new(1, 0, 1, 0)
			Title.Font = Enum.Font.SourceSansBold
			Title.TextColor3 = Color3.fromRGB(166, 166, 166)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			TextButton.Parent = Main
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.BackgroundTransparency = 1.000
			TextButton.Size = UDim2.new(1, 0, 1, 0)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = ""
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextSize = 14.000
			-- Functions:
			local debounce = false
			TextButton.MouseEnter:Connect(function()
				local tween = game:GetService("TweenService"):Create(Title,TweenInfo.new(.5),{TextColor3 = Color3.fromRGB(255, 255, 255)})
				tween:Play()
			end)
			TextButton.MouseLeave:Connect(function()
				local tween = game:GetService("TweenService"):Create(Title,TweenInfo.new(.5),{TextColor3 = Color3.fromRGB(166, 166, 166)})
				tween:Play()
			end)
			TextButton.MouseButton1Click:Connect(function()
				if debounce == false then
					debounce = true
					pcall(Callback)
					wait(1)
					debounce = false
				end
			end)
			local CanvaTween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)})
						CanvaTween:Play()
		end
		function TabFunctions:Seperator()
			local Seperator = Instance.new("Frame")
			local Main = Instance.new("Frame")
			Seperator.Name = "Seperator"
			Seperator.Parent = ContentFixer
			Seperator.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
			Seperator.BorderSizePixel = 0
			Seperator.Size = UDim2.new(1, 0, 0, 30)
			Main.Name = "Main"
			Main.Parent = Seperator
			Main.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
			Main.BorderSizePixel = 0
			Main.Position = UDim2.new(0, 0, 0.5, 0)
			Main.Size = UDim2.new(1, 0, 0.100000001, 0)
			local CanvaTween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)})
						CanvaTween:Play()
		end
		function TabFunctions:Switch(SwitchText:string,Callback)
			local Switch = Instance.new("Frame")
			local Main = Instance.new("Frame")
			local BttnMain = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local TextButton = Instance.new("TextButton")
			Switch.Name = SwitchText.."Switch"
			Switch.Parent = ContentFixer
			Switch.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
			Switch.BorderSizePixel = 0
			Switch.Position = UDim2.new(0.00280112051, 0, 0, 0)
			Switch.Size = UDim2.new(1, 0, 0, 30)
			Main.Name = "Main"
			Main.Parent = Switch
			Main.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
			Main.BorderSizePixel = 0
			Main.Position = UDim2.new(0.814999998, 0, 0.166999996, 0)
			Main.Size = UDim2.new(0, 55, 0, 21)
			BttnMain.Name = "BttnMain"
			BttnMain.Parent = Main
			BttnMain.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			BttnMain.BorderSizePixel = 0
			BttnMain.Size = UDim2.new(0.25, 0, 1, 0)
			Title.Name = "Title"
			Title.Parent = Switch
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0.0606060624, 0, 0.166999817, 0)
			Title.Size = UDim2.new(0.300275475, 0, 0.69999975, 0)
			Title.Text = SwitchText
			Title.Font = Enum.Font.SourceSansItalic
			Title.TextColor3 = Color3.fromRGB(166, 166, 166)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left
			TextButton.Parent = Switch
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.BackgroundTransparency = 1.000
			TextButton.Position = UDim2.new(0.814999998, 0, 0.166999996, 0)
			TextButton.Size = UDim2.new(0, 55, 0, 21)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = ""
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextSize = 14.000
			---Functions:
			local deboune = false
			local Toggle = false
			TextButton.MouseButton1Click:Connect(function()
				if deboune == false then
					deboune = true
					Toggle = not Toggle
					if Toggle == true then
						local tween = game:GetService("TweenService"):Create(BttnMain,TweenInfo.new(1),{Position = UDim2.new(0.75,0,0,0)})
						tween:Play()
					elseif Toggle == false then
						local tween = game:GetService("TweenService"):Create(BttnMain,TweenInfo.new(1),{Position = UDim2.new(0.01,0,0,0)})
						tween:Play()
					end
					pcall(Callback,Toggle)
					wait(.5)
					deboune = false
				end
			end)
			local CanvaTween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)})
			CanvaTween:Play()
		end
		function TabFunctions:Dropdown(DropdownName:string,Items,Callback)
			local Dropdown = Instance.new("Frame")
			local Main = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local play_arrow = Instance.new("ImageButton")
			local TextButton = Instance.new("TextButton")
			local Item = Instance.new("ScrollingFrame")
			local ItemFixer = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = ContentFixer
			Dropdown.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
			Dropdown.BorderSizePixel = 0
			Dropdown.ClipsDescendants = true
			Dropdown.Position = UDim2.new(0, 0, 0.126050428, 0)
			Dropdown.Size = UDim2.new(0, 357, 0, 30)
			Main.Name = "Main"
			Main.Parent = Dropdown
			Main.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
			Main.BorderSizePixel = 0
			Main.Position = UDim2.new(0, 14, 0, 5)
			Main.Size = UDim2.new(0, 336, 0, 21)
			Title.Name = "Title"
			Title.Parent = Main
			Title.Text = DropdownName
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0.0240000002, 0, 0.100000001, 0)
			Title.Size = UDim2.new(0.895833313, 0, 0.714285731, 0)
			Title.Font = Enum.Font.SourceSans
			Title.TextColor3 = Color3.fromRGB(166, 166, 166)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left
			play_arrow.Name = "play_arrow"
			play_arrow.Parent = Main
			play_arrow.BackgroundTransparency = 1.000
			play_arrow.LayoutOrder = 5
			play_arrow.Position = UDim2.new(0.939999998, 0, 0.129999995, 0)
			play_arrow.Rotation = 180.000
			play_arrow.Size = UDim2.new(0, 15, 0, 15)
			play_arrow.ZIndex = 2
			play_arrow.Image = "rbxassetid://3926307971"
			play_arrow.ImageRectOffset = Vector2.new(764, 244)
			play_arrow.ImageRectSize = Vector2.new(36, 36)
			TextButton.Parent = Main
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.BackgroundTransparency = 1.000
			TextButton.Size = UDim2.new(1, 0, 1, 0)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = ""
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextSize = 14.000
			Item.Name = "Item"
			Item.Parent = Dropdown
			Item.Active = true
			Item.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			Item.BorderSizePixel = 0
			Item.Position = UDim2.new(0, 13, 0, 34)
			Item.Size = UDim2.new(0, 337, 0, 99)
			Item.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
			Item.ScrollBarThickness = 5
			Item.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
			ItemFixer.Name = "ItemFixer"
			ItemFixer.Parent = Item
			ItemFixer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ItemFixer.BackgroundTransparency = 1.000
			ItemFixer.BorderSizePixel = 0
			ItemFixer.Size = UDim2.new(1, 0, 1, 0)
			UIListLayout.Parent = ItemFixer
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			---Functions:
			local DropdownFunc = {}
			local MenuOpen = false
			local Option = nil
			for i,v in pairs(Items) do
				local TextButton = Instance.new("TextButton")
				TextButton.Name = v
				TextButton.Parent = ItemFixer
				TextButton.Text = v
				TextButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
				TextButton.BorderSizePixel = 0
				TextButton.Position = UDim2.new(0.00593471806, 0, -0.0979020968, 0)
				TextButton.Size = UDim2.new(0, 337, 0, 22)
				TextButton.Font = Enum.Font.SourceSans
				TextButton.TextColor3 = Color3.fromRGB(185, 185, 185)
				TextButton.TextScaled = true
				TextButton.TextSize = 14.000
				TextButton.TextWrapped = true
				TextButton.MouseButton1Click:Connect(function()
					local SizeTween = game:GetService("TweenService"):Create(Dropdown,TweenInfo.new(.5),{Size = UDim2.new(0,357,0,30)})
					local IconTween = game:GetService("TweenService"):Create(play_arrow,TweenInfo.new(.5),{Rotation = 180})
					SizeTween:Play()
					IconTween:Play()
					Title.Text = v
					Option = v
					pcall(Callback,Option)
					SizeTween.Completed:Connect(function()
						repeat wait(.1) until IconTween.Completed
						local CanvaTween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)})
						CanvaTween:Play()
						local CanvaTween2 = game:GetService("TweenService"):Create(Item,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y)})
						CanvaTween2:Play()
						MenuOpen = false
					end)
				end)
			end
			TextButton.MouseButton1Click:Connect(function()
				if MenuOpen == false then
					MenuOpen = "Toggling"
					local SizeTween = game:GetService("TweenService"):Create(Dropdown,TweenInfo.new(.5),{Size = UDim2.new(0,357,0,143)})
					local IconTween = game:GetService("TweenService"):Create(play_arrow,TweenInfo.new(.5),{Rotation = 90})
					SizeTween:Play()
					IconTween:Play()
					SizeTween.Completed:Connect(function()
						repeat wait(.1) until IconTween.Completed
						local CanvaTween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)})
						CanvaTween:Play()
						local CanvaTween2 = game:GetService("TweenService"):Create(Item,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y)})
						CanvaTween2:Play()
						MenuOpen = true
					end)
				elseif MenuOpen == true then
					MenuOpen = "Toggling"
					local SizeTween = game:GetService("TweenService"):Create(Dropdown,TweenInfo.new(.5),{Size = UDim2.new(0,357,0,30)})
					local IconTween = game:GetService("TweenService"):Create(play_arrow,TweenInfo.new(.5),{Rotation = 180})
					SizeTween:Play()
					IconTween:Play()
					SizeTween.Completed:Connect(function()
						repeat wait(.1) until IconTween.Completed
						local CanvaTween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)})
						CanvaTween:Play()
						local CanvaTween2 = game:GetService("TweenService"):Create(Item,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y)})
						CanvaTween2:Play()
						MenuOpen = false
					end)
				end
			end)
			function DropdownFunc:RenewItem(Item)
				for i,v in pairs(ItemFixer:GetChildren()) do
					if v:IsA("UIListLayout") then
					else
						spawn(function()
							v:Destroy()
						end)
					end
				end
				for i,v in pairs(Items) do
					local TextButton = Instance.new("TextButton")
					TextButton.Name = v
					TextButton.Parent = ItemFixer
					TextButton.Text = v
					TextButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
					TextButton.BorderSizePixel = 0
					TextButton.Position = UDim2.new(0.00593471806, 0, -0.0979020968, 0)
					TextButton.Size = UDim2.new(0, 337, 0, 22)
					TextButton.Font = Enum.Font.SourceSans
					TextButton.TextColor3 = Color3.fromRGB(185, 185, 185)
					TextButton.TextScaled = true
					TextButton.TextSize = 14.000
					TextButton.TextWrapped = true
					TextButton.MouseButton1Click:Connect(function()
						local SizeTween = game:GetService("TweenService"):Create(Dropdown,TweenInfo.new(.5),{Size = UDim2.new(0,357,0,30)})
						local IconTween = game:GetService("TweenService"):Create(play_arrow,TweenInfo.new(.5),{Rotation = 180})
						SizeTween:Play()
						IconTween:Play()
						Title.Text = v
						Option = v
						pcall(Callback,Option)
						SizeTween.Completed:Connect(function()
							repeat wait(.1) until IconTween.Completed
							local CanvaTween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)})
							CanvaTween:Play()
							local CanvaTween2 = game:GetService("TweenService"):Create(Item,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y)})
							CanvaTween2:Play()
							MenuOpen = false
						end)
					end)
				end
			end
			local CanvaTween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)})
						CanvaTween:Play()
			return DropdownFunc
		end
		function TabFunctions:Text(TextToSet:string)
			local Text = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			Text.Name = TextToSet.."Text"
			Text.Parent = ContentFixer
			Text.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
			Text.BorderSizePixel = 0
			Text.Size = UDim2.new(1, 0, 0, 30)
			Title.Name = "Title"
			Title.Parent = Text
			Title.Text = TextToSet
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0.0550964177, 0, 0.100000001, 0)
			Title.Size = UDim2.new(0.895833313, 0, 0.714285731, 0)
			Title.Font = Enum.Font.SourceSansItalic
			Title.TextColor3 = Color3.fromRGB(166, 166, 166)
			Title.TextScaled = true
			Title.TextSize = 14.000
			Title.TextWrapped = true
			Title.TextXAlignment = Enum.TextXAlignment.Left
			local CanvaTween = game:GetService("TweenService"):Create(Home_2,TweenInfo.new(.5),{CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)})
						CanvaTween:Play()
		end
		return TabFunctions
	end
	return functions
end
return Ui
