local LocalPlayer = game.Players.LocalPlayer

local ReplicatedStorageService = game:GetService("ReplicatedStorage")
local CollectionService = game:GetService("CollectionService")
local UserInputService = game:GetService("UserInputService")
local LightingService = game:GetService("Lighting")
local PlayerService = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local TextService = game:GetService("TextService")
local RunService = game:GetService("RunService")

local Mouse = LocalPlayer:GetMouse()

local Camera = game.Workspace.CurrentCamera

local AlSploitScreenGui = Instance.new("ScreenGui")

local ContainerFrame = Instance.new("Frame")
local ContainerUIListLayout = Instance.new("UIListLayout")

local NotificationContainer = Instance.new("Frame")
local NotificationContainerUIListLayout = Instance.new("UIListLayout")

local OpenGui = Instance.new("TextButton")
local OpenGuiUICorner = Instance.new("UICorner")
local OpenGuiUITextSizeConstraint = Instance.new("UITextSizeConstraint")

local UnInjectEvent = Instance.new("BindableEvent")

task.spawn(function()
	AlSploitScreenGui.Parent = LocalPlayer.PlayerGui
	AlSploitScreenGui.Name = "AlSploit"

	AlSploitScreenGui.IgnoreGuiInset = true
	AlSploitScreenGui.ResetOnSpawn = false

	ContainerFrame.Parent = AlSploitScreenGui
	ContainerFrame.Name = "ContainerFrame"

	ContainerFrame.BackgroundTransparency = 1
	ContainerFrame.Position = UDim2.new(0, 0, 0.05, 0)
	ContainerFrame.Visible = false
	ContainerFrame.Size = UDim2.new(1, 0, 1, 0)

	ContainerUIListLayout.Parent = ContainerFrame
	ContainerUIListLayout.Name = "ContainerUIListLayout"

	ContainerUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	ContainerUIListLayout.FillDirection = Enum.FillDirection.Horizontal
	ContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ContainerUIListLayout.Padding = UDim.new(0, 50)

	NotificationContainer.Parent = AlSploitScreenGui
	NotificationContainer.Name = "NotificationContainer"

	NotificationContainer.BackgroundTransparency = 1
	NotificationContainer.BorderSizePixel = 0
	NotificationContainer.Position = UDim2.new(0.8, 0, 0, 0)
	NotificationContainer.Size = UDim2.new(0.2, 0, 0.980487823, 0)

	NotificationContainerUIListLayout.Parent = NotificationContainer
	NotificationContainerUIListLayout.Name = "NotificationContainerUIListLayout"

	NotificationContainerUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	NotificationContainerUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	NotificationContainerUIListLayout.FillDirection = Enum.FillDirection.Vertical
	NotificationContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	NotificationContainerUIListLayout.Padding = UDim.new(0, 10)

	OpenGui.Parent = AlSploitScreenGui
	OpenGui.Name = "OpenGui"

	OpenGui.BackgroundColor3 = Color3.new(0, 0, 0)
	OpenGui.AutoButtonColor = false
	OpenGui.BorderSizePixel = 0
	OpenGui.Position = UDim2.new(0.958, 0, 0.098, 0)
	OpenGui.TextColor3 = Color3.new(1, 1, 1)
	OpenGui.TextScaled = true
	OpenGui.TextSize = 12
	OpenGui.Size = UDim2.new(0.04, 0, 0.024, 0)
	OpenGui.Font = Enum.Font.GothamBold
	OpenGui.Text = "AlSploit"

	OpenGuiUICorner.Parent = OpenGui
	OpenGuiUICorner.Name = "OpenGuiUICorner"

	OpenGuiUICorner.CornerRadius = UDim.new(0.2, 0)

	OpenGuiUITextSizeConstraint.Parent = OpenGui
	OpenGuiUITextSizeConstraint.Name = "OpenGuiUITextSizeConstraint"

	OpenGuiUITextSizeConstraint.MaxTextSize = 12

	UnInjectEvent.Parent = ReplicatedStorageService
	UnInjectEvent.Name = "UnInjectEvent"

	task.spawn(function()
		OpenGui.Activated:Connect(function()
			ContainerFrame.Visible = not ContainerFrame.Visible
		end)
	end)
end)

local AlSploitSettings = {}

local DefaultLayoutOrder = 0
local AlSploitLibrary = {}

local CreateFolder = makefolder
local CreateFile = writefile

local IsFolder = isfolder
local IsFile = isfile

local ReadFile = readfile

local DelFolder = delfolder

local SetThreadIdentity = setthreadidentity
local SetThreadCaps = setthreadcaps

local SetFpsCap = setfpscap

task.spawn(function()
	if setthreadidentity then 
		setthreadidentity(8) 
	end

	if setthreadcaps then 
		setthreadcaps(8) 
	end
end)

task.spawn(function()
	task.spawn(function()
		if IsFolder and not IsFolder("AlSploit") then
			CreateFolder("AlSploit")
		end

		if not IsFolder or not IsFolder("AlSploit") then
			CreateNotification(3, "Unable To Save Settings")
		end
	end)

	task.spawn(function()
		if IsFolder and IsFolder("AlSploit") and IsFile and not IsFile("AlSploit/AlSploitConfiguration") and CreateFile then
			local EncodedSettings = HttpService:JSONEncode(AlSploitSettings)

			CreateFile("AlSploit/AlSploitConfiguration", EncodedSettings)
		end

		if not IsFile or not IsFile("AlSploit/AlSploitConfiguration") then
			CreateNotification(3, "Saving Folder Not Found")
		end
	end)
end)

task.spawn(function()
	if IsFolder and IsFolder("AlSploit") and CreateFile and IsFile("AlSploit/AlSploitConfiguration") and ReadFile then
		local DecodedSettings = HttpService:JSONDecode(ReadFile("AlSploit/AlSploitConfiguration"))

		AlSploitSettings = DecodedSettings
	end

	if not ReadFile then
		CreateNotification(3, "Unable To Load Settings")
	end

	task.spawn(function()
		repeat
			task.wait(0.5)

			if IsFolder and IsFolder("AlSploit") and IsFile and IsFile("AlSploit/AlSploitConfiguration") and CreateFile then
				local EncodedSettings = HttpService:JSONEncode(AlSploitSettings)

				CreateFile("AlSploit/AlSploitConfiguration", EncodedSettings)
			end
		until shared.AlSploitUnInjected == true
	end)
end)

function AlSploitLibrary:CreateTab(Name)	
	local Tab = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")

	local CornerFix = Instance.new("Frame")

	local ModulesContainer = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")

	local Title = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

	Tab.Parent = ContainerFrame
	Tab.Name = "Tab"

	Tab.BackgroundColor3 = Color3.new(0, 0, 0)
	Tab.BorderSizePixel = 0
	Tab.Position = UDim2.new(0.434, 0, 0, 0)
	Tab.Size = UDim2.new(0.142, 0, 0.049, 0)

	UICorner.CornerRadius = UDim.new(0, 7)
	UICorner.Parent = Tab

	CornerFix.Parent = Tab
	CornerFix.Name = "CornerFix"

	CornerFix.BackgroundColor3 = Color3.new(0, 0, 0)
	CornerFix.BorderSizePixel = 0
	CornerFix.Position = UDim2.new(0, 0, 0.371, 0)
	CornerFix.Size = UDim2.new(1, 0, 0.629, 0)

	ModulesContainer.Parent = Tab
	ModulesContainer.Name = "ModulesContainer"

	ModulesContainer.BackgroundTransparency = 1
	ModulesContainer.BorderSizePixel = 0
	ModulesContainer.Position = UDim2.new(0, 0, 1, 0)
	ModulesContainer.Size = UDim2.new(1, 0, 21.429, 0)

	UIListLayout.Parent = ModulesContainer
	UIListLayout.Name = "UIListLayout"

	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.FillDirection = Enum.FillDirection.Vertical
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	Title.Parent = Tab
	Title.Name = "Title"

	Title.BackgroundTransparency = 1
	Title.BorderSizePixel = 0
	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.TextScaled = true
	Title.TextWrapped = true
	Title.TextSize = 20
	Title.Position = UDim2.new(0, 0, 0.124, 0)
	Title.Size = UDim2.new(1, 0, 0.743, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = Name

	UIGradient.Parent = Title
	UIGradient.Name = "UIGradient"

	UIGradient.Rotation = 90
	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0, 0.6, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.333333, 0.733333, 1))}

	UITextSizeConstraint.Parent = Title
	UITextSizeConstraint.Name = "UITextSizeConstraint2"

	UITextSizeConstraint.MaxTextSize = 20

	local TabTable = {}

	function TabTable:CreateToggle(Information)
		local Name = Information.Name
		local Function = Information.Function
		local HoverText = Information.HoverText

		local Toggle = Instance.new("TextButton")
		local UIGradient_2 = Instance.new("UIGradient")
		local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
		local UIPadding = Instance.new("UIPadding")

		local DropdownButton = Instance.new("ImageButton")

		local ModuleInformation = Instance.new("TextLabel")
		local UICorner_2 = Instance.new("UICorner")
		local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")

		local CurrentLayoutOrder = 0

		if AlSploitSettings[Name] == nil then
			AlSploitSettings[Name] = {Value = false, Keybind = "..."}
		end

		local function ToggleValue(Start)
			if Start == false then
				AlSploitSettings[Name].Value = not AlSploitSettings[Name].Value
			end

			if AlSploitSettings[Name].Value == true then
				UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0, 0.6, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.333333, 0.733333, 1))}

				task.spawn(function()
					if Start == true then
						task.wait(0.5)

						Function()
					end
				end)			

				task.spawn(function()
					if Start == false then
						Function()
					end
				end)
			end

			if AlSploitSettings[Name].Value == false then
				UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}

				task.spawn(function()
					if Start == true then
						task.wait(0.5)

						Function()
					end
				end)

				task.spawn(function()
					if Start == false then
						Function()
					end
				end)
			end		
		end

		Toggle.Parent = ModulesContainer
		Toggle.Name = "Toggle"

		Toggle.BackgroundTransparency = 0.15
		Toggle.BackgroundColor3 = Color3.new(0, 0, 0)
		Toggle.AutoButtonColor = false
		Toggle.BorderSizePixel = 0
		Toggle.TextXAlignment = Enum.TextXAlignment.Left
		Toggle.TextColor3 = Color3.new(1, 1, 1)
		Toggle.TextScaled = true
		Toggle.TextSize = 14
		Toggle.Size = UDim2.new(1, 0, 0.039, 0)
		Toggle.Font = Enum.Font.GothamBold
		Toggle.Text = Name

		Toggle.LayoutOrder = DefaultLayoutOrder

		DefaultLayoutOrder = (DefaultLayoutOrder + 50)
		CurrentLayoutOrder = (DefaultLayoutOrder - 49)

		UIGradient_2.Parent = Toggle
		UIGradient_2.Name = "UIGradient_2"

		UIGradient_2.Rotation = 90
		UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}

		UIPadding.Parent = Toggle
		UIPadding.Name = "UIPadding"

		UIPadding.PaddingLeft = UDim.new(0, 15)

		UITextSizeConstraint_2.Parent = Toggle
		UITextSizeConstraint_2.Name = "UITextSizeConstraint_2"

		UITextSizeConstraint_2.MaxTextSize = 14

		DropdownButton.Parent = Toggle
		DropdownButton.Name = "DropdownButton"

		DropdownButton.BackgroundTransparency = 1
		DropdownButton.BorderSizePixel = 0
		DropdownButton.Position = UDim2.new(0.822, 0, 0.176, 0)
		DropdownButton.Rotation = 90
		DropdownButton.Image = "http://www.roblox.com/asset/?id=12809025337"
		DropdownButton.Size = UDim2.new(0.115, 0, 0.618, 0)

		ModuleInformation.Parent = AlSploitScreenGui
		ModuleInformation.Name = "ModuleInformation"

		ModuleInformation.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
		ModuleInformation.BorderSizePixel = 0
		ModuleInformation.TextColor3 = Color3.new(1, 1, 1)
		ModuleInformation.TextScaled = true
		ModuleInformation.TextSize = 11
		ModuleInformation.Visible = false
		ModuleInformation.ZIndex = 5
		ModuleInformation.Size = UDim2.new(1.199, 0, 0.32, 0 )
		ModuleInformation.Font = Enum.Font.GothamBold
		ModuleInformation.Text = HoverText

		local TextSize = TextService:GetTextSize(HoverText, 11, Enum.Font.GothamBold, Vector2.new(100000, 100000))

		ModuleInformation.Size = UDim2.new(0, (TextSize.X + 15), 0, (TextSize.Y + 4))

		UICorner_2.Parent = ModuleInformation
		UICorner_2.Name = "UICorner_2"

		UICorner_2.CornerRadius = UDim.new(0.4, 0)

		UITextSizeConstraint_3.Parent = ModuleInformation
		UITextSizeConstraint_3.Name = "UITextSizeConstraint_3"

		UITextSizeConstraint_3.MaxTextSize = 11

		task.spawn(function()
			ToggleValue(true)
		end)

		task.spawn(function()
			Toggle.Activated:Connect(function()
				ToggleValue(false)
			end)
		end)

		task.spawn(function()
			local FollowMouseValue = false

			task.spawn(function()
				Toggle.MouseLeave:Connect(function()
					ModuleInformation.Visible = false

					FollowMouseValue = false
				end)
			end)

			task.spawn(function()
				Toggle.MouseEnter:Connect(function()
					ModuleInformation.Visible = true

					FollowMouseValue = true
				end)
			end)

			task.spawn(function()
				Mouse.Move:Connect(function()
					if FollowMouseValue == true then
						local MousePosition = UserInputService:GetMouseLocation()

						ModuleInformation.Position = UDim2.new(0, MousePosition.X , 0, MousePosition.Y - 10)
					end
				end)
			end)
		end)

		local ToggleTable = {}

		function ToggleTable:CreateToggle(Arguments)
			local DefaultValue = Arguments.DefaultValue
			local Function_2 = Arguments.Function
			local Parent = Name
			local Name = Arguments.Name

			local MiniToggle = Instance.new("TextLabel")
			local UIPadding_2 = Instance.new("UIPadding")
			local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")

			local ToggleContainer = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")

			local Toggle = Instance.new("TextButton")
			local UICorner_4 = Instance.new("UICorner")
			local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")

			if AlSploitSettings[Parent][Name] == nil then
				AlSploitSettings[Parent][Name] = {Value = DefaultValue}
			end

			local function ToggleValue(Start)
				if Start == false then
					AlSploitSettings[Parent][Name].Value = not AlSploitSettings[Parent][Name].Value
				end

				if AlSploitSettings[Parent][Name].Value == true then
					ToggleContainer.BackgroundColor3 = Color3.new(0, 0.6, 1)

					local TweenInformation = TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
					local ToggleTween = TweenService:Create(Toggle, TweenInformation, {Position = UDim2.new(0.06, 0, 0.1, 0)})

					ToggleTween:Play()

					Function_2()
				end

				if AlSploitSettings[Parent][Name].Value == false then
					ToggleContainer.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)

					local TweenInformation = TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
					local ToggleTween = TweenService:Create(Toggle, TweenInformation, {Position = UDim2.new(0.46, 0, 0.1, 0)})

					ToggleTween:Play()

					Function_2()
				end	
			end

			MiniToggle.Parent = ModulesContainer
			MiniToggle.Name = "MiniToggle"

			MiniToggle.BackgroundTransparency = 0.15
			MiniToggle.BackgroundColor3 = Color3.new(0, 0, 0)
			MiniToggle.BorderSizePixel = 0
			MiniToggle.TextXAlignment = Enum.TextXAlignment.Left
			MiniToggle.TextColor3 = Color3.new(1, 1, 1)
			MiniToggle.TextScaled = true
			MiniToggle.TextSize = 11
			MiniToggle.Visible = false
			MiniToggle.Size = UDim2.new(1, 0, 0.041, 0)
			MiniToggle.Font = Enum.Font.GothamBold
			MiniToggle.Text = Name

			MiniToggle.LayoutOrder = CurrentLayoutOrder
			CurrentLayoutOrder = (CurrentLayoutOrder + 1)

			UIPadding_2.Parent = MiniToggle
			UIPadding_2.Name = "UIPadding_2"

			UIPadding_2.PaddingLeft = UDim.new(0, 15)

			UITextSizeConstraint_4.Parent = MiniToggle
			UITextSizeConstraint_4.Name = "UITextSizeConstraint_4"

			UITextSizeConstraint_4.MaxTextSize = 11

			ToggleContainer.Parent = MiniToggle
			ToggleContainer.Name = "ToggleContainer"

			ToggleContainer.BackgroundColor3 = (AlSploitSettings[Parent][Name].Value == true and Color3.new(0, 0.6, 1) or Color3.new(0.133333, 0.133333, 0.1333337))
			ToggleContainer.BorderSizePixel = 0
			ToggleContainer.BorderColor3 = Color3.new(0, 0, 0)
			ToggleContainer.Position = UDim2.new(0.785, 0, 0.232, 0)
			ToggleContainer.Size = UDim2.new(0.163, 0, 0.497, 0)

			UICorner_3.Parent = ToggleContainer
			UICorner_3.Name = "UICorner_3"

			UICorner_3.CornerRadius = UDim.new(1, 0)

			Toggle.Parent = ToggleContainer
			Toggle.Name = "Toggle"

			Toggle.BackgroundColor3 = Color3.new(0, 0, 0)
			Toggle.AutoButtonColor = false
			Toggle.BorderSizePixel = 0
			Toggle.TextScaled = true
			Toggle.TextSize = 14
			Toggle.Position = UDim2.new(0.050, 0, 0.100, 0)
			Toggle.Size = UDim2.new(0.467, 0, 0.828, 0)
			Toggle.Font = Enum.Font.GothamBold
			Toggle.Text = ""

			UICorner_4.Parent = Toggle
			UICorner_4.Name = "UICorner_4"

			UICorner_4.CornerRadius = UDim.new(1, 0)

			UITextSizeConstraint_5.Parent = Toggle
			UITextSizeConstraint_5.MaxTextSize = 14		

			task.spawn(function()
				ToggleValue(true)
			end)

			task.spawn(function()
				Toggle.Activated:Connect(function()
					ToggleValue(false)
				end)
			end)

			task.spawn(function()		
				DropdownButton.Activated:Connect(function()			
					MiniToggle.Visible = not MiniToggle.Visible
				end)
			end)
		end

		function ToggleTable:CreateKeybind()			
			local KeyBind = Instance.new("TextButton")
			local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
			local UIPadding_2 = Instance.new("UIPadding")

			local CanInputKeybind = false
			local InputWanted = false

			local function ToggleValue(Keybind)
				AlSploitSettings[Name].Keybind = Keybind			
				KeyBind.Text = "KeyBind: " .. Keybind
			end

			KeyBind.Parent = ModulesContainer
			KeyBind.Name = "KeyBind"

			KeyBind.BackgroundTransparency = 0.15
			KeyBind.BackgroundColor3 = Color3.new(0, 0, 0)
			KeyBind.AutoButtonColor = false
			KeyBind.BorderSizePixel = 0
			KeyBind.TextXAlignment = Enum.TextXAlignment.Left
			KeyBind.TextColor3 = Color3.new(255, 255, 255)
			KeyBind.TextScaled = true
			KeyBind.TextSize = 11
			KeyBind.Position = UDim2.new(0, 0, 0.082, 0)
			KeyBind.Visible = false
			KeyBind.Size = UDim2.new(1, 0, 0.035, 0)
			KeyBind.Font = Enum.Font.GothamBold
			KeyBind.Text = (AlSploitSettings[Name].Keybind == "..." and "KeyBind: " or "KeyBind: " .. AlSploitSettings[Name].Keybind)

			KeyBind.LayoutOrder = CurrentLayoutOrder
			CurrentLayoutOrder = (CurrentLayoutOrder + 1)

			UITextSizeConstraint_4.Parent = KeyBind
			UITextSizeConstraint_4.Name = "ITextSizeConstraint_4"

			UITextSizeConstraint_4.MaxTextSize = 11

			UIPadding_2.Parent = KeyBind
			UIPadding_2.Name = "UIPadding_2"

			UIPadding_2.PaddingLeft = UDim.new(0, 15)

			task.spawn(function()				
				KeyBind.Activated:Connect(function()	
					InputWanted = not InputWanted

					if CanInputKeybind == false and InputWanted == true then
						KeyBind.Text = "KeyBind: ..."

						CanInputKeybind = true
					end	

					if InputWanted == false then
						AlSploitSettings[Name].Keybind = "..."
						KeyBind.Text = "KeyBind: "

						CanInputKeybind = false
					end
				end)
			end)

			task.spawn(function()
				UserInputService.InputBegan:Connect(function(Input)					
					if CanInputKeybind == false and not UserInputService:GetFocusedTextBox() and AlSploitSettings[Name].Keybind == Input.KeyCode.Name then						
						if AlSploitSettings[Name].Value == true then
							UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
						end

						if AlSploitSettings[Name].Value == false then
							UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0, 0.6, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.333333, 0.733333, 1))}
						end

						AlSploitSettings[Name].Value = not AlSploitSettings[Name].Value

						Function()

						CreateNotification(3, Name .. " Has Been Toggled " .. (AlSploitSettings[Name].Value == true and "On" or "Off"))
					end

					if CanInputKeybind == true then
						if Input.UserInputType == Enum.UserInputType.Keyboard then
							CanInputKeybind = false
							InputWanted = false

							ToggleValue(Input.KeyCode.Name)
						end
					end
				end)
			end)

			task.spawn(function()		
				DropdownButton.Activated:Connect(function()			
					KeyBind.Visible = not KeyBind.Visible
				end)
			end)			
		end

		function ToggleTable:CreateSlider(Arguments)
			local DefaultValue = Arguments.DefaultValue
			local MaximumValue = Arguments.MaximumValue
			local Function_2 = Arguments.Function
			local Parent = Name
			local Name = Arguments.Name

			local Slider = Instance.new("Frame")

			local SliderFrame = Instance.new("Frame")

			local Fill = Instance.new("Frame")

			local Bar = Instance.new("TextButton")
			local UICorner_3 = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")

			local NameDisplay = Instance.new("TextLabel")
			local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")

			local ValueDisplay = Instance.new("TextLabel")
			local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")

			if AlSploitSettings[Parent][Name] == nil then
				AlSploitSettings[Parent][Name] = {Value = DefaultValue}
			end

			Slider.Parent = ModulesContainer
			Slider.Name = "Slider"

			Slider.BackgroundTransparency = 0.15
			Slider.BackgroundColor3 = Color3.new(0, 0, 0)
			Slider.BorderSizePixel = 0
			Slider.Position = UDim2.new(0, 0, 0.117, 0)
			Slider.Visible = false
			Slider.Size = UDim2.new(1, 0, 0.064, 0)

			Slider.LayoutOrder = CurrentLayoutOrder
			CurrentLayoutOrder = (CurrentLayoutOrder + 1)

			SliderFrame.Parent = Slider
			SliderFrame.Name = "SliderFrame"

			SliderFrame.BackgroundTransparency = 1
			SliderFrame.BorderSizePixel = 0
			SliderFrame.Position = UDim2.new(0.150, 0, 0.654, 0)
			SliderFrame.Size = UDim2.new(0.700, 0, 0.060, 0)

			Fill.Parent = SliderFrame
			Fill.Name = "Fill"

			Fill.BackgroundColor3 = Color3.new(0, 0.6, 1)
			Fill.BorderSizePixel = 0
			Fill.Position = UDim2.new(0, 0, -0.329, 0)
			Fill.Size = UDim2.new(1, 0, 1, 0)

			Bar.Parent = SliderFrame
			Bar.Name = "Bar"

			Bar.BackgroundColor3 = Color3.new(0, 0.6, 1)
			Bar.AutoButtonColor = false
			Bar.BorderSizePixel = 0
			Bar.TextScaled = true
			Bar.TextSize = 14
			Bar.Position = UDim2.new(0.135, 0, -1.500, 0)
			Bar.ZIndex = 2
			Bar.Size = UDim2.new(0.070, 0, 3.090, 0)		
			Bar.Font = Enum.Font.GothamBold
			Bar.Text = ""

			UICorner_3.Parent = Bar
			UICorner_3.Name = "UICorner_3"

			UICorner_3.CornerRadius = UDim.new(1, 0)

			UIStroke.Parent = Bar
			UIStroke.Name = "UIStroke"

			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Thickness = 1
			UIStroke.Color = Color3.new(0, 0, 0)

			UITextSizeConstraint_4.Parent = Bar
			UITextSizeConstraint_4.Name = "UITextSizeConstraint_6"

			UITextSizeConstraint_4.MaxTextSize = 14

			NameDisplay.Parent = Slider
			NameDisplay.Name = "NameDisplay"

			NameDisplay.BackgroundTransparency = 1
			NameDisplay.BorderSizePixel = 0
			NameDisplay.TextColor3 = Color3.new(1, 1, 1)
			NameDisplay.TextScaled = true
			NameDisplay.TextSize = 10
			NameDisplay.Position = UDim2.new(0.145, 0, 0.08, 0)
			NameDisplay.Size = UDim2.new(0.250, 0, 0.543, 0)
			NameDisplay.Font = Enum.Font.GothamBold
			NameDisplay.Text = Name

			UITextSizeConstraint_5.Parent = NameDisplay
			UITextSizeConstraint_5.MaxTextSize = 10

			ValueDisplay.Parent = Slider
			ValueDisplay.Name = "ValueDisplay"

			ValueDisplay.BackgroundTransparency = 1
			ValueDisplay.BorderSizePixel = 0
			ValueDisplay.TextColor3 = Color3.new(1, 1, 1)
			ValueDisplay.TextScaled = true
			ValueDisplay.TextSize = 10
			ValueDisplay.Position = UDim2.new(0.635, 0, 0.08, 0)
			ValueDisplay.Size = UDim2.new(0.250, 0, 0.543, 0)
			ValueDisplay.Font = Enum.Font.GothamBold
			ValueDisplay.Text = AlSploitSettings[Parent][Name].Value

			UITextSizeConstraint_6.Parent = ValueDisplay
			UITextSizeConstraint_6.MaxTextSize = 10

			local CanUseSlider = false

			local function Snap(Number, Factor)			
				return (Factor == 0 and Number or (math.floor(Number / Factor) * Factor))
			end

			task.spawn(function()				
				Fill.Size = UDim2.new((AlSploitSettings[Parent][Name].Value / MaximumValue), 0, 1, 0)
				Bar.Position = UDim2.new((AlSploitSettings[Parent][Name].Value / MaximumValue), 0, Bar.Position.Y.Scale, 0)

				Function_2()
			end)

			task.spawn(function()
				Bar.MouseButton1Down:Connect(function()
					CanUseSlider = true
				end)				
			end)

			task.spawn(function()
				UserInputService.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 then
						CanUseSlider = false
					end
				end)
			end)

			task.spawn(function()
				DropdownButton.Activated:Connect(function()
					Slider.Visible = not Slider.Visible

					task.spawn(function()
						repeat
							task.wait()

							if CanUseSlider == true then
								local MousePosition = UserInputService:GetMouseLocation().X
								local FramePosition = Slider.AbsolutePosition.X
								local BarPosition = Bar.Position
								local FrameSize = Slider.AbsoluteSize.X

								local Position = ((MousePosition - FramePosition) / FrameSize)
								local Percentage = math.clamp(Position, 0, 1)

								local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
								local PositionTween = TweenService:Create(Bar, TweenInformation, {Position = UDim2.new(Percentage, 0, BarPosition.Y.Scale, 0)})

								PositionTween:Play()

								local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
								local SizeTween = TweenService:Create(Fill, TweenInformation, {Size = UDim2.new(Percentage, 0, 1, 0)})

								SizeTween:Play()

								ValueDisplay.Text = math.round(Percentage * MaximumValue)

								AlSploitSettings[Parent][Name].Value = math.round(Percentage * MaximumValue)

								Function_2()
							end
						until shared.AlSploitUnInjected == true or Slider.Visible == false
					end)
				end)
			end)
		end

		local DropdownTable = {}

		function ToggleTable:CreateDropdown(Arguments)
			local HoverText_2 = Arguments.HoverText
			local Parent = Name
			local Name = Arguments.Name

			if AlSploitSettings[Parent][Name] == nil then
				AlSploitSettings[Parent][Name] = {}
			end

			local Dropdown = Instance.new("Frame")

			local OptionsContainer = Instance.new("ScrollingFrame")
			local UIListLayout_2 = Instance.new("UIListLayout")

			local DropdownText = Instance.new("TextLabel")
			local UIPadding_2 = Instance.new("UIPadding")
			local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")

			local ModuleInformation_2 = Instance.new("TextLabel")
			local UICorner_3 = Instance.new("UICorner")
			local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")

			Dropdown.Parent = ModulesContainer
			Dropdown.Name = "Dropdown"

			Dropdown.BackgroundTransparency = 0.15
			Dropdown.BackgroundColor3 = Color3.new(0, 0, 0)
			Dropdown.BorderSizePixel = 0
			Dropdown.Visible = false
			Dropdown.Position = UDim2.new(0.085, 0, 0.181, 0)
			Dropdown.Size = UDim2.new(1, 0, 0.106, 0)

			Dropdown.LayoutOrder = CurrentLayoutOrder
			CurrentLayoutOrder = (CurrentLayoutOrder + 1)

			OptionsContainer.Parent = Dropdown
			OptionsContainer.Name = "OptionsContainer"

			OptionsContainer.BackgroundTransparency = 1
			OptionsContainer.ScrollBarThickness = 0
			OptionsContainer.BorderSizePixel = 0
			OptionsContainer.CanvasSize = UDim2.new(0, 0, 1.5, 0)
			OptionsContainer.Position = UDim2.new(0, 0, 0.290, 0)
			OptionsContainer.Size = UDim2.new(1, 0, 0.710, 0)

			UIListLayout_2.Parent = OptionsContainer
			UIListLayout_2.Name = "UIListLayout_2"

			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.FillDirection = Enum.FillDirection.Vertical
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

			DropdownText.Parent = Dropdown
			DropdownText.Name = "DropdownText"

			DropdownText.BackgroundTransparency = 1
			DropdownText.BorderSizePixel = 0
			DropdownText.TextXAlignment = Enum.TextXAlignment.Left
			DropdownText.TextColor3 = Color3.new(1, 1, 1)
			DropdownText.TextScaled = true
			DropdownText.TextSize = 12
			DropdownText.Size = UDim2.new(1, 0, 0.290, 0)
			DropdownText.Font = Enum.Font.GothamBold
			DropdownText.Text = Name

			UITextSizeConstraint_4.Parent = DropdownText
			UITextSizeConstraint_4.Name = "UITextSizeConstraint_4"

			UITextSizeConstraint_4.MaxTextSize = 12

			UIPadding_2.Parent = DropdownText
			UIPadding_2.Name = "UIPadding_2"

			UIPadding_2.PaddingLeft = UDim.new(0, 15)

			ModuleInformation_2.Parent = AlSploitScreenGui
			ModuleInformation_2.Name = "ModuleInformation"

			ModuleInformation_2.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
			ModuleInformation_2.BorderSizePixel = 0
			ModuleInformation_2.AnchorPoint = Vector2.new(0, 0.3)
			ModuleInformation_2.TextColor3 = Color3.new(1, 1, 1)
			ModuleInformation_2.TextScaled = true
			ModuleInformation_2.TextSize = 11
			ModuleInformation_2.Visible = false
			ModuleInformation_2.ZIndex = 5
			ModuleInformation_2.Size = UDim2.new(1.11, 0, 0.131, 0)
			ModuleInformation_2.Font = Enum.Font.GothamBold
			ModuleInformation_2.Text = HoverText_2

			local TextSize = TextService:GetTextSize(HoverText_2, 11, Enum.Font.GothamBold, Vector2.new(100000, 100000))

			ModuleInformation_2.Size = UDim2.new(0, (TextSize.X + 15), 0, (TextSize.Y + 4))

			UICorner_3.Parent = ModuleInformation_2
			UICorner_3.Name = "UICorner_2"

			UICorner_3.CornerRadius = UDim.new(0.4, 0)

			UITextSizeConstraint_5.Parent = ModuleInformation_2
			UITextSizeConstraint_5.Name = "UITextSizeConstraint_3"

			UITextSizeConstraint_5.MaxTextSize = 11

			task.spawn(function()
				local FollowMouseValue = false

				task.spawn(function()
					Dropdown.MouseLeave:Connect(function()
						ModuleInformation_2.Visible = false

						FollowMouseValue = false
					end)
				end)

				task.spawn(function()
					Dropdown.MouseEnter:Connect(function()
						ModuleInformation_2.Visible = true

						FollowMouseValue = true
					end)
				end)

				task.spawn(function()
					Mouse.Move:Connect(function()
						if FollowMouseValue == true then
							local MousePosition = UserInputService:GetMouseLocation()

							ModuleInformation_2.Position = UDim2.new(0, MousePosition.X , 0, MousePosition.Y - 10)
						end
					end)
				end)
			end)

			task.spawn(function()
				DropdownButton.Activated:Connect(function()
					Dropdown.Visible = not Dropdown.Visible
				end)
			end)

			function DropdownTable:CreateToggle(Arguments)
				local DefaultValue = Arguments.DefaultValue
				local Function_2 = Arguments.Function
				local Parent_2 = Name
				local Name = Arguments.Name

				local Button = Instance.new("TextButton")
				local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")

				if AlSploitSettings[Parent][Parent_2][Name] == nil then
					AlSploitSettings[Parent][Parent_2][Name] = {Value = DefaultValue}
				end

				local function ToggleValue(Start)
					if Start == false then
						AlSploitSettings[Parent][Parent_2][Name].Value = not AlSploitSettings[Parent][Parent_2][Name].Value
					end

					if AlSploitSettings[Parent][Parent_2][Name].Value == true then
						Button.BackgroundTransparency = 0

						Function_2()
					end

					if AlSploitSettings[Parent][Parent_2][Name].Value == false then
						Button.BackgroundTransparency = 1

						Function_2()
					end
				end

				Button.Parent = OptionsContainer
				Button.Name = "Button"

				Button.BackgroundTransparency = (AlSploitSettings[Parent][Parent_2][Name].Value == true and 0 or 1)
				Button.BackgroundColor3 = Color3.new(0, 0.6, 1)
				Button.AutoButtonColor = false
				Button.BorderSizePixel = 0
				Button.TextColor3 = Color3.new(1, 1, 1)
				Button.TextScaled = true
				Button.TextSize = 11
				Button.Position = UDim2.new(3.039, 0, -2.333, 0)
				Button.Size = UDim2.new(1, 0, 0.172, 0)
				Button.Font = Enum.Font.GothamBold
				Button.Text = Name		

				UITextSizeConstraint_6.Parent = Button
				UITextSizeConstraint_6.Name = "UITextSizeConstraint_5"

				UITextSizeConstraint_6.MaxTextSize = 11

				task.spawn(function()
					ToggleValue(true)
				end)

				task.spawn(function()
					Button.Activated:Connect(function()
						ToggleValue(false)
					end)
				end)
			end

			return DropdownTable
		end

		function ToggleTable:CreateColorSlider(Arguments)
			local DefaultValue = Arguments.DefaultValue
			local Function = Arguments.Function
			local Parent = Name
			local Name = Arguments.Name

			if AlSploitSettings[Parent][Name] == nil then
				AlSploitSettings[Parent][Name] = {Value = tostring(DefaultValue.R .. "," .. DefaultValue.G .. "," .. DefaultValue.B), Percentage = 0}
			end

			local ColorSplit = string.split(AlSploitSettings[Parent][Name].Value, ",")

			local R = ColorSplit[1]
			local G = ColorSplit[2]
			local B = ColorSplit[3]

			local ColorPicker = Instance.new("Frame")

			local SliderFrame = Instance.new("Frame")

			local Bar = Instance.new("TextButton")
			local UICorner_3 = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")

			local ColorDisplay = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")

			local Fill = Instance.new("Frame")
			local UIGradient_3 = Instance.new("UIGradient")

			local NameDisplay = Instance.new("TextLabel")
			local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
			local UIPadding_2 = Instance.new("UIPadding")

			ColorPicker.Parent = ModulesContainer
			ColorPicker.Name = "ColorPicker"

			ColorPicker.BackgroundTransparency = 0.15
			ColorPicker.BackgroundColor3 = Color3.new(0, 0, 0)
			ColorPicker.BorderSizePixel = 0
			ColorPicker.Position = UDim2.new(0, 0, 0.287, 0)
			ColorPicker.Visible = false
			ColorPicker.Size = UDim2.new(1, 0, 0.099, 0)

			ColorPicker.LayoutOrder = CurrentLayoutOrder
			ColorPicker.LayoutOrder = (CurrentLayoutOrder + 1)

			SliderFrame.Parent = ColorPicker
			SliderFrame.Name = "SliderFrame"

			SliderFrame.BackgroundTransparency = 1
			SliderFrame.BorderSizePixel = 0
			SliderFrame.Position = UDim2.new(0.150, 0, 0.654, 0)
			SliderFrame.Size = UDim2.new(0.700, 0, 0.060, 0)

			Bar.Parent = SliderFrame
			Bar.Name = "Bar"

			Bar.BackgroundColor3 = Color3.new(0, 0.6, 1)
			Bar.AutoButtonColor = false
			Bar.BorderSizePixel = 0
			Bar.TextScaled = true
			Bar.TextSize = 14
			Bar.Position = UDim2.new(AlSploitSettings[Parent][Name].Percentage, 0, -1.111, 0)
			Bar.ZIndex = 2
			Bar.Size = UDim2.new(0.070, 0, 1.915, 0)
			Bar.Font = Enum.Font.GothamBold
			Bar.Text = ""

			UICorner_3.Parent = Bar
			UICorner_3.Name = "UICorner_3"

			UICorner_3.CornerRadius = UDim.new(1, 0)

			UIStroke.Parent = Bar
			UIStroke.Name = "UIStroke"

			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Thickness = 1
			UIStroke.Color = Color3.new(0, 0, 0)

			UITextSizeConstraint_4.Parent = Bar
			UITextSizeConstraint_4.Name = "UITextSizeConstraint_4"

			UITextSizeConstraint_4.MaxTextSize = 14

			ColorDisplay.Parent = SliderFrame
			ColorDisplay.Name = "ColorDisplay"

			ColorDisplay.BackgroundColor3 = Color3.new(R, G, B)
			ColorDisplay.BorderSizePixel = 0
			ColorDisplay.Position = UDim2.new(0.889, 0, -5, 0)
			ColorDisplay.Size = UDim2.new(0, 15, 0, 15)

			UICorner_4.Parent = ColorDisplay
			UICorner_4.Name = "UICorner_4"

			UICorner_4.CornerRadius = UDim.new(0.200, 0)

			Fill.Parent = SliderFrame
			Fill.Name = "Fill"

			Fill.BackgroundColor3 = Color3.new(1, 1, 1)
			Fill.BorderSizePixel = 0
			Fill.Position = UDim2.new(0, 0, -0.329, 0)
			Fill.Size = UDim2.new(1, 0, 0.650, 0)

			UIGradient_3.Parent = Fill
			UIGradient_3.Name = "UIGradient_3"

			UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 255))}

			NameDisplay.Parent = ColorPicker
			NameDisplay.Name = "NameDisplay"

			NameDisplay.BackgroundTransparency = 1
			NameDisplay.BorderSizePixel = 0
			NameDisplay.TextXAlignment = Enum.TextXAlignment.Left
			NameDisplay.TextColor3 = Color3.new(1, 1, 1)
			NameDisplay.TextScaled = true
			NameDisplay.TextSize = 10
			NameDisplay.Position = UDim2.new(-0.005, 0, 0.198, 0)
			NameDisplay.Size = UDim2.new(1.005, 0, 0.470, 0)
			NameDisplay.Font = Enum.Font.GothamBold
			NameDisplay.Text = "EnemyColor"

			UITextSizeConstraint_5.Parent = NameDisplay
			UITextSizeConstraint_5.Name = "UITextSizeConstraint_5"

			UITextSizeConstraint_5.MaxTextSize = 11

			UIPadding_2.Parent = NameDisplay
			UIPadding_2.Name = "UIPadding_2"

			UIPadding_2.PaddingLeft = UDim.new(0, 30)

			local function GetColor(Percentage)
				local UIGradientKeyPoints = UIGradient_3.Color.Keypoints

				local ClosestToRight = UIGradientKeyPoints[# UIGradientKeyPoints]
				local ClosestToLeft = UIGradientKeyPoints[1]

				local Color

				for i = 1, (# UIGradientKeyPoints - 1) do
					if (UIGradientKeyPoints[i].Time <= Percentage) and (UIGradientKeyPoints[i + 1].Time >= Percentage) then
						ClosestToRight = UIGradientKeyPoints[i + 1]
						ClosestToLeft = UIGradientKeyPoints[i]

						Percentage = ((Percentage - ClosestToLeft.Time) / (ClosestToRight.Time - ClosestToLeft.Time))
						Color = ClosestToLeft.Value:lerp(ClosestToRight.Value, Percentage)

						return Color
					end
				end
			end

			local CanUseSlider = false

			task.spawn(function()
				Bar.MouseButton1Down:Connect(function()
					CanUseSlider = true
				end)				
			end)

			task.spawn(function()
				UserInputService.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 then
						CanUseSlider = false
					end
				end)
			end)

			task.spawn(function()
				DropdownButton.Activated:Connect(function()
					ColorPicker.Visible = not ColorPicker.Visible

					task.spawn(function()
						repeat
							task.wait()

							if CanUseSlider == true then
								local MousePosition = UserInputService:GetMouseLocation().X
								local FramePosition = ColorPicker.AbsolutePosition.X
								local BarPosition = Bar.Position
								local FrameSize = ColorPicker.AbsoluteSize.X

								local Position = ((MousePosition - FramePosition) / FrameSize)
								local Percentage = math.clamp(Position, 0, 1)

								local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
								local PositionTween = TweenService:Create(Bar, TweenInformation, {Position = UDim2.new(Percentage, 0, BarPosition.Y.Scale, 0)})

								PositionTween:Play()								

								local Color = GetColor(Percentage)

								ColorDisplay.BackgroundColor3 = Color

								AlSploitSettings[Parent][Name].Percentage = Percentage
								AlSploitSettings[Parent][Name].Value = tostring(Color.R .. "," .. Color.G .. "," .. Color.B)
							end					
						until shared.AlSploitUnInjected == true or ColorPicker.Visible == false
					end)
				end)
			end)
		end

		ToggleTable:CreateKeybind()

		return ToggleTable
	end

	return TabTable
end

function CreateNotification(Duration, Message)
	local Notification = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local UIStroke = Instance.new("UIStroke")

	local NotificationText = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

	Notification.Parent = NotificationContainer
	Notification.Name = "Notification"

	Notification.BackgroundTransparency = 0.15
	Notification.BackgroundColor3 = Color3.new(0, 0, 0)
	Notification.BorderSizePixel = 0
	Notification.Position = UDim2.new(0.226, 0, 0, 0)
	Notification.Size = UDim2.new(0, 0, 0.087, 0)

	UIStroke.Parent = Notification
	UIStroke.Name = "UIStroke"

	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2
	UIStroke.Color = Color3.new(1, 1, 1)

	UIGradient.Parent = UIStroke
	UIGradient.Name = "UIGradient"

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0, 0.6, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.333333, 0.733333, 1))}

	UICorner.Parent = Notification
	UICorner.Name = "UICorner"

	UICorner.CornerRadius = UDim.new(0.1, 0)

	NotificationText.Parent = Notification
	NotificationText.Name = "NotificationText"

	NotificationText.BackgroundTransparency = 1
	NotificationText.BackgroundColor3 = Color3.new(1, 1, 1)
	NotificationText.BorderSizePixel = 0
	NotificationText.TextColor3 = Color3.new(1, 1, 1)
	NotificationText.TextScaled = true
	NotificationText.TextSize = 13
	NotificationText.Position = UDim2.new(-0.003, 0, 0, 0)
	NotificationText.Size = UDim2.new(1, 0, 1, 0)
	NotificationText.Font = Enum.Font.GothamBold
	NotificationText.Text = Message

	UITextSizeConstraint.Parent = NotificationText
	UITextSizeConstraint.Name = "UITextSizeConstraint"

	UITextSizeConstraint.MaxTextSize = 13

	task.spawn(function()
		local NotificationSize = UDim2.new(1, 0, 0.087, 0)

		local TweenInformation = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
		local SizeTween = TweenService:Create(Notification, TweenInformation, {Size = NotificationSize})

		SizeTween:Play()

		task.wait(Duration)

		NotificationSize = UDim2.new(0, 0, 0.087, 0)

		local SizeTween2 = TweenService:Create(Notification, TweenInformation, {Size = NotificationSize})

		SizeTween2:Play()

		task.spawn(function()
			task.wait(TweenInformation.Time)

			Notification:Destroy()
		end)
	end)
end

local function CreateProgressHud(MaximumValue)
	local Background = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")

	local Text = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

	local DisplayBackground = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")

	local Display = Instance.new("Frame")

	local UICorner_3 = Instance.new("UICorner")

	Background.Parent = AlSploitScreenGui
	Background.Name = "Background"

	Background.BackgroundTransparency = 0.25
	Background.BackgroundColor3 = Color3.new(0, 0, 0)
	Background.BorderSizePixel = 0
	Background.Position = UDim2.new(0.410, 0, 0.698, 0)
	Background.Size = UDim2.new(0.178, 0, 0.085, 0)

	UICorner.Parent = Background
	UICorner.Name = "UICorner"

	UICorner.CornerRadius = UDim.new(0.1, 0)
	
	UIStroke.Parent = Background
	UIStroke.Name = "UIStroke"

	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2
	UIStroke.Color = Color3.new(0, 0.6, 1)

	Text.Parent = Background
	Text.Name = "Text"

	Text.BackgroundTransparency = 1
	Text.BorderSizePixel = 0
	Text.Position = UDim2.new(0, 0, 0.510, 0)
	Text.TextColor3 = Color3.new(0, 0.6, 1)
	Text.TextScaled = true
	Text.TextSize = 20
	Text.Size = UDim2.new(1, 0, 0.489, 0)
	Text.Font = Enum.Font.GothamBold
	Text.Text = MaximumValue

	UITextSizeConstraint.Parent = Text
	UITextSizeConstraint.Name = "UITextSizeConstraint"

	UITextSizeConstraint.MaxTextSize = 20

	DisplayBackground.Parent = Background
	DisplayBackground.Name = "DisplayBackground"
	
	DisplayBackground.BackgroundColor3 = Color3.new(0, 0, 0)
	DisplayBackground.BorderSizePixel = 0
	DisplayBackground.Position = UDim2.new(0.229, 0, 0.267, 0)
	DisplayBackground.Size = UDim2.new(0.545, 0, 0.150, 0)

	UICorner_2.Parent = DisplayBackground
	UICorner_2.Name = "UICorner_2"

	UICorner_2.CornerRadius = UDim.new(0.4, 0)

	Display.Parent = DisplayBackground
	Display.Name = "Display"
	
	Display.BackgroundColor3 = Color3.new(0, 0.6, 1)
	Display.BorderSizePixel = 0
	Display.Position = UDim2.new(-0.006, 0, -0.029, 0)
	Display.ZIndex = 2
	Display.Size = UDim2.new(1, 0, 1, 0)

	UICorner_3.Parent = Display
	UICorner_3.Name = "UICorner_3"

	UICorner_3.CornerRadius = UDim.new(0.4, 0)
	
	task.spawn(function()
		local TweenInformation = TweenInfo.new(MaximumValue, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
		local SizeTween = TweenService:Create(Display, TweenInformation, {Size = UDim2.new(0, 0, 1, 0)})
		
		SizeTween:Play()
		
		SizeTween.Completed:Connect(function()
			Background:Destroy()
		end)
	end)
	
	task.spawn(function()
		repeat
			task.wait()
			
			local Percentage = math.clamp(Display.Size.X.Scale, 0, 1)
			local RoundedValue = DecimalRound((Percentage * MaximumValue), 1)
			
			Text.Text = RoundedValue
		until shared.AlSploitUnInjected == true or not Background
	end)
	
	return Background
end

local AlSploitConnections = {}

local ViewModel = Camera:WaitForChild("Viewmodel")

local C0 = ViewModel:WaitForChild("RightHand"):WaitForChild("RightWrist").C0
local C1 = ViewModel:WaitForChild("RightHand"):WaitForChild("RightWrist").C1

local OverrideHumanoidRootPartPosition = tick()
local NewLocalPlayerHumanoidRootPart
local OldLocalPlayerHumanoidRootPart
local ScytheAnticheatDisabledSpeed = 0
local ScytheAnticheatDisabled = false

local KillauraAnimations = {
	AlSploitHeartbeat = {
		{CFrame = CFrame.new(0.2, 0, -1.3) * CFrame.Angles(math.rad(100), math.rad(100), math.rad(130)), Time = 0.15},
		{CFrame = CFrame.new(0, -0.2, -1.7) * CFrame.Angles(math.rad(40), math.rad(111), math.rad(180)), Time = 0.15}
	},

	AlSploitClassic = {
		{CFrame = CFrame.new(0.2, 0, -1.3) * CFrame.Angles(math.rad(111), math.rad(111), math.rad(130)), Time = 0.17},
		{CFrame = CFrame.new(0, -0.2, -1.7) * CFrame.Angles(math.rad(30), math.rad(111), math.rad(190)), Time = 0.17}
	},


	AlSploitOld = {
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(220), math.rad(100), math.rad(100)),Time = 0.25},
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.25}
	},

	Neutral = {
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.05},
	}
}

local KnitClient = debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 6)

local ClientStore = require(LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
local Client = require(ReplicatedStorageService.TS.remotes).default.Client

local LocalPlayerInventory = ReplicatedStorageService:WaitForChild("Inventories"):WaitForChild(LocalPlayer.Name)

local KnockbackUtilCalculateKnockbackVelocity = debug.getupvalue(require(ReplicatedStorageService.TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)
local KnockbackUtil = require(ReplicatedStorageService.TS.damage["knockback-util"]).KnockbackUtil

local InventoryUtil = require(ReplicatedStorageService.TS.inventory["inventory-util"]).InventoryUtil

local BedwarsControllers = {
	ViewModelController = LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"],
	SprintController = KnitClient.Controllers.SprintController,
	SwordController = KnitClient.Controllers.SwordController,
	QueueController = KnitClient.Controllers.QueueController,
	FovController = KnitClient.Controllers.FovController
}

local BedwrasMetaGames = {
	ProjectileMeta = require(ReplicatedStorageService.TS.projectile["projectile-meta"]).ProjectileMeta
}

local BedwarsConstants = {
	CombatConstant = require(ReplicatedStorageService.TS.combat["combat-constant"]).CombatConstant
}

local BedwarsRemotes = {
	ProjectileFireRemote = ReplicatedStorageService:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ProjectileFire"),
	SetInvItemRemote = ReplicatedStorageService:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SetInvItem"),
	ScytheDashRemote = ReplicatedStorageService:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ScytheDash"),
	GroundHitRemote = ReplicatedStorageService:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("GroundHit"),
	SwordHitRemote = ReplicatedStorageService:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SwordHit")
}

local BedwarsTables = {
	ItemTable = debug.getupvalue(require(ReplicatedStorageService.TS.item["item-meta"]).getItemMeta, 1)
}

local function DestroyClonedHumanoidRootPart()
	LocalPlayer.Character.Parent = game
	OldLocalPlayerHumanoidRootPart.Parent = LocalPlayer.Character

	NewLocalPlayerHumanoidRootPart.Parent = game.Workspace

	LocalPlayer.Character.PrimaryPart = OldLocalPlayerHumanoidRootPart
	LocalPlayer.Character.Parent = game.Workspace

	OldLocalPlayerHumanoidRootPart = NewLocalPlayerHumanoidRootPart.CFrame

	NewLocalPlayerHumanoidRootPart:Destroy()
end

local function CloneHumanoidRootPart()
	LocalPlayer.Character.Parent = game
	LocalPlayer.Character.HumanoidRootPart.Archivable = true

	OldLocalPlayerHumanoidRootPart = LocalPlayer.Character.HumanoidRootPart 

	NewLocalPlayerHumanoidRootPart = OldLocalPlayerHumanoidRootPart:Clone()
	NewLocalPlayerHumanoidRootPart.Parent = LocalPlayer.Character

	OldLocalPlayerHumanoidRootPart.Transparency = 0.4

	OldLocalPlayerHumanoidRootPart.Parent = game.Workspace

	LocalPlayer.Character.PrimaryPart = NewLocalPlayerHumanoidRootPart
	LocalPlayer.Character.Parent = game.Workspace

	task.spawn(function()
		RunService.Heartbeat:Connect(function()
			if IsAlive(LocalPlayer) == true and ((tick() - OverrideHumanoidRootPartPosition) > 0.2) and OldLocalPlayerHumanoidRootPart and NewLocalPlayerHumanoidRootPart then
				OldLocalPlayerHumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				OldLocalPlayerHumanoidRootPart.CFrame = LocalPlayer.Character.PrimaryPart.CFrame
			end
		end)
	end)
end

local function TweenToNearestPlayer(Time)
	local Time = Time or 0.65

	if IsAlive(LocalPlayer) == true then
		local NearestPlayer = FindNearestPlayer()

		if NearestPlayer then
			local TweenInformation = TweenInfo.new(Time, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)	
			local PlayerTpTween = TweenService:Create(LocalPlayer.Character.PrimaryPart, TweenInformation, {CFrame = NearestPlayer.Character.PrimaryPart.CFrame + Vector3.new(0, 2, 0)})

			PlayerTpTween:Play()
		end
	end
end

function FindNearestPlayer(MaxDistance)
	local NearestPlayerDistance = MaxDistance or math.huge
	local NearestPlayer

	for i, v in next, PlayerService:GetPlayers() do
		if IsAlive(v) and v ~= LocalPlayer and IsAlive(LocalPlayer) == true and v.Team ~= LocalPlayer.Team then
			local Distance = (v.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < NearestPlayerDistance then
				NearestPlayerDistance = Distance
				NearestPlayer = v				
			end
		end
	end

	return NearestPlayer, NearestPlayerDistance
end

local function FindNearestEntity(MaxDistance)
	local NearestEntityDistance = MaxDistance
	local NearestEntity = nil
	local IsNotAPlayer = true

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("Drone") do
			if v.PrimaryPart and v:GetAttribute("Team") ~= LocalPlayer:GetAttribute("Team") then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end 
		end
	end)

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("DiamondGuardian") do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance then
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

				if Distance < NearestEntityDistance then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end
		end
	end)	

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("jellyfish") do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end 
		end
	end)

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("Monster") do
			if v.PrimaryPart and v:GetAttribute("Team") ~= LocalPlayer:GetAttribute("Team") then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end
		end
	end)

	task.spawn(function()
		for i, v in next, PlayerService:GetPlayers() do
			if IsAlive(v) == true and v ~= LocalPlayer and v.Team ~= LocalPlayer.Team then
				local Distance = (v.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance then
					NearestEntityDistance = Distance
					NearestEntity= v
					IsNotAPlayer = false
				end
			end
		end
	end)

	if NearestEntity then	
		return (IsNotAPlayer == true and NearestEntity or NearestEntity.Character), NearestEntityDistance
	end

	return nil
end

local function TweenToNearestBed(Time)
	local Time = Time or 0.65

	if IsAlive(LocalPlayer) == true then
		local NearestBed = FindNearestBed(false)

		if NearestBed then
			local RaycastParameters = RaycastParams.new()

			RaycastParameters.FilterDescendantsInstances = {CollectionService:GetTagged("block")}
			RaycastParameters.FilterType = Enum.RaycastFilterType.Include

			local BlockRaycast = game.Workspace:Raycast(NearestBed.Position + Vector3.new(0, 1000, 0), Vector3.new(0, -1000, 0), RaycastParameters)

			if BlockRaycast and BlockRaycast.Position then
				local TweenInformation = TweenInfo.new(Time, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)	
				local BedTpTween = TweenService:Create(LocalPlayer.Character.PrimaryPart, TweenInformation, {CFrame = CFrame.new(BlockRaycast.Position)})

				BedTpTween:Play()
			end
		end
	end
end

local function ShootProjectile(Item, Projectile, NearestPlayer)
	local Args = {
		[1] = Item,
		[2] = Projectile,
		[3] = Projectile,
		[4] = NearestPlayer.Character.PrimaryPart.Position,
		[5] = (NearestPlayer.Character.PrimaryPart.Position + Vector3.new(0, 2, 0)),
		[6] = Vector3.new(0, -5, 0),
		[7] = HttpService:GenerateGUID(true),
		[8] = {["drawDurationSeconds"] = 0.96, ["shotId"] = HttpService:GenerateGUID(false)},
		[9] = (game.Workspace:GetServerTimeNow() - 0.11)
	}

	BedwarsRemotes.ProjectileFireRemote:InvokeServer(unpack(Args))
end

local function HasItemEquipped(Item)
	if LocalPlayer.Character.HandInvItem.Value.Name and LocalPlayer.Character.HandInvItem.Value.Name == Item then
		return true
	end

	return false
end

function FindNearestBed(IgnoreBedSheildEndTime, MaxDistance)
	local NearestBedDistance = MaxDistance or math.huge
	local NearestBed = nil

	local AmountOfBeds = 0

	for i, v in next, CollectionService:GetTagged("bed") do
		if v:FindFirstChild("Bed").BrickColor ~= LocalPlayer.Team.TeamColor then
			AmountOfBeds = (AmountOfBeds + 1)
		end
	end

	if IgnoreBedSheildEndTime == false then
		for i, v in next, CollectionService:GetTagged("bed") do
			if v:FindFirstChild("Bed").BrickColor ~= LocalPlayer.Team.TeamColor then			
				if v:GetAttribute("BedShieldEndTime") and (v:GetAttribute("BedShieldEndTime") > game.Workspace:GetServerTimeNow() and AmountOfBeds == 1 or v:GetAttribute("BedShieldEndTime") < game.Workspace:GetServerTimeNow()) then
					local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

					if Distance < NearestBedDistance then
						NearestBedDistance = Distance
						NearestBed = v
					end
				end

				if not v:GetAttribute("BedShieldEndTime") then
					local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

					if Distance < NearestBedDistance then
						NearestBedDistance = Distance
						NearestBed = v
					end
				end
			end
		end
	end

	if IgnoreBedSheildEndTime == true then
		for i, v in next, CollectionService:GetTagged("bed")do
			if v:FindFirstChild("Bed").BrickColor ~= LocalPlayer.Team.TeamColor then				
				local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestBedDistance then
					NearestBedDistance = Distance
					NearestBed = v
				end
			end
		end
	end

	return NearestBed
end

local function TweenToCFrame(Time, Position)	
	Position = CFrame.new(Position)

	local TweenInformation = TweenInfo.new(Time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
	local CFrameTween = TweenService:Create(LocalPlayer.Character.PrimaryPart, TweenInformation, {CFrame = Position})

	CFrameTween:Play()
end

local function GetMatchState()
	return ClientStore:getState().Game.matchState
end

function DecimalRound(Number, DigitsPast0)
	DigitsPast0 = math.pow(10, DigitsPast0)

	Number = (Number * DigitsPast0)

	if Number >= 0 then 
		Number = math.floor(Number + 0.5) 
	end

	if Number < 0 then
		Number = math.ceil(Number - 0.5) 
	end

	return (Number / DigitsPast0)
end

local function GetInventory(Player)
	local Player = Player or LocalPlayer

	local Inventory = InventoryUtil.getInventory(Player)

	return Inventory
end

local function Invisibility()
	repeat task.wait() until IsAlive(LocalPlayer) == true and GetMatchState() ~= 0

	local Animation = Instance.new("Animation")
	local Id = 11360825341

	Animation.AnimationId = "rbxassetid://".. Id

	Animation = LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Animation)

	LocalPlayer.Character.LowerTorso.CollisionGroup = "Participants"
	LocalPlayer.Character.UpperTorso.CollisionGroup = "Participants"

	local PartsList = {}

	for i, v in next, LocalPlayer.Character:GetDescendants() do
		if v:IsA("BasePart") and v ~= LocalPlayer.Character.PrimaryPart and v.CanCollide == true then
			v.CanCollide = false
			v.CanTouch = false	

			table.insert(PartsList, v)
		end
	end

	LocalPlayer.Character.PrimaryPart.Transparency = 0.5

	Animation.Priority = Enum.AnimationPriority.Action4
	Animation.Looped = true

	Animation:Play()
	Animation:AdjustSpeed(0 / 10)

	task.spawn(function()
		repeat
			task.wait()

			LocalPlayer.Character.PrimaryPart.Transparency = 0.5

			Animation:AdjustSpeed(0 / 10)
		until shared.AlSploitUnInjected == true or AlSploitSettings.Invisible.Value == false

		if IsAlive(LocalPlayer) == true then
			LocalPlayer.Character.PrimaryPart.Transparency = 1

			Animation.Looped = false
			Animation:AdjustSpeed(100000)

			local InvisibilityConenction

			InvisibilityConenction = Animation.Ended:Connect(function()
				InvisibilityConenction:Disconnect()
				Animation:Destroy()

				LocalPlayer.Character.LowerTorso.CollisionGroup = "Players"
				LocalPlayer.Character.UpperTorso.CollisionGroup = "Players"

				for i, v in next, PartsList do
					v.CanCollide = true
					v.CanTouch = true
				end

				PartsList = {}
			end)
		end
	end)
end

local function SwitchItem(Item)	
	local InventoryItem = LocalPlayerInventory:FindFirstChild(Item)

	BedwarsRemotes.SetInvItemRemote:InvokeServer({hand = InventoryItem})
end

local function GetScythe()
	for i, v in next, GetInventory(LocalPlayer).items do
		if v.itemType:find("scythe") and not v.itemType:find("sky") then 
			return v
		end
	end
end

function GetSpeed()
	local Speed = 0

	local SpeedBoost = LocalPlayer.Character:GetAttribute("SpeedBoost")

	if SpeedBoost and SpeedBoost > 1 then 
		Speed = (Speed + (8 * (SpeedBoost - 1)))
	end

	if LocalPlayer.Character:GetAttribute("GrimReaperChannel") then 
		Speed = (Speed + 20)
	end

	if ScytheAnticheatDisabled == true then			
		Speed = (Speed + ScytheAnticheatDisabledSpeed)
	end

	Speed = ((Speed + AlSploitSettings.Speed.Speed.Value) - 20)

	return Speed
end

function HasItem(Name)
	for i, v in next, GetInventory(LocalPlayer).items do
		if v.itemType:find(Name) then
			return v 
		end
	end	

	return nil
end

function IsAlive(Player)
	if not Player.Character then return false end
	if not Player.Character:FindFirstChildOfClass("Humanoid") then return false end
	if Player.Character:GetAttribute("Health") <= 0 then return false end
	if not Player.Character.PrimaryPart then return false end	

	return true
end	

local function GetBow()
	local BestArrow, BestBow, BestBowDamage = nil, nil, 0

	for i, v in next, GetInventory(LocalPlayer).items do
		if v.itemType:find("bow") then 
			local Item = BedwarsTables.ItemTable[v.itemType].projectileSource
			local Arrow = Item.projectileType("arrow")	
			local Damage = BedwrasMetaGames.ProjectileMeta[Arrow].combat.damage

			if Damage > BestBowDamage then
				BestBowDamage = Damage
				BestBow = v
				BestArrow = Arrow
			end
		end
	end	

	return BestArrow, BestBow
end

local CombatTab = AlSploitLibrary:CreateTab("Combat")
local BlatantTab = AlSploitLibrary:CreateTab("Blatant")
local UtilityTab = AlSploitLibrary:CreateTab("Utility")
local WorldTab = AlSploitLibrary:CreateTab("World")
local GuiTab = AlSploitLibrary:CreateTab("Gui")

task.spawn(function()
	local ScytheDisabler = CombatTab:CreateToggle({
		Name = "ScytheDisabler",

		Function = function()
			local Scythe = GetScythe()

			if not Scythe and AlSploitSettings.ScytheDisabler.Value == true then
				CreateNotification(3, "A Scythe Is Required To Use ScytheDisabler")
			end

			repeat
				task.wait()

				Scythe = GetScythe()

				if Scythe and IsAlive(LocalPlayer) == true then
					local HasItemEquipped = HasItemEquipped(Scythe.itemType)

					if HasItemEquipped == true then
						local MoveDirection = LocalPlayer.Character.Humanoid.MoveDirection
						local Vector = (LocalPlayer.Character.PrimaryPart.CFrame.lookVector * 1.25)

						ScytheAnticheatDisabledSpeed = AlSploitSettings.ScytheDisabler.Speed.Value

						if (MoveDirection - Vector).Magnitude > 1.6 then
							ScytheAnticheatDisabledSpeed = math.random(0, AlSploitSettings.ScytheDisabler.Speed.Value)

							Vector = MoveDirection
						end

						ScytheAnticheatDisabled = true

						BedwarsRemotes.ScytheDashRemote:FireServer({direction = Vector})	
					end

					if HasItemEquipped == false then
						ScytheAnticheatDisabled = false
					end
				end

				if not Scythe or IsAlive(LocalPlayer) == false then
					ScytheAnticheatDisabled = false
				end
			until shared.AlSploitUnInjected == true or AlSploitSettings.ScytheDisabler.Value == false

			ScytheAnticheatDisabled = false
		end,

		HoverText = "Gives The Anticheat Brain Damage 🧠❌"
	})

	ScytheDisabler:CreateSlider({
		Name = "Speed",

		Function = function() end,

		MaximumValue = 50,
		DefaultValue = 50
	})
end)

task.spawn(function()
	local OldIsClickingTooFast

	local NoClickDelay = CombatTab:CreateToggle({
		Name = "NoClickDelay",

		Function = function()
			if AlSploitSettings.NoClickDelay.Value == true then
				OldIsClickingTooFast = BedwarsControllers.SwordController.isClickingTooFast

				BedwarsControllers.SwordController.isClickingTooFast = function(self) 
					if shared.AlSploitUnInjected == false then
						self.lastSwing = tick()

						return false
					end			
				end
			end

			if AlSploitSettings.NoClickDelay.Value == false then
				BedwarsControllers.SwordController.isClickingTooFast = OldIsClickingTooFast
			end
		end,

		HoverText = "Removes The Delay While Clicking 💾"
	})
end)

task.spawn(function()
	local Autoclicker = CombatTab:CreateToggle({
		Name = "Autoclicker",

		Function = function()
			repeat
				task.wait(1 / AlSploitSettings.Autoclicker.Cps.Value)

				BedwarsControllers.SwordController:swingSwordAtMouse()
			until shared.AlSploitUnInjected == true or AlSploitSettings.Autoclicker.Value == false
		end,

		HoverText = "Clicks At The Desired Speed 🖱️"
	})

	local Cps = Autoclicker:CreateSlider({
		Name = "Cps",

		Function = function() end,

		MaximumValue = 100,
		DefaultValue = 20
	})
end)

task.spawn(function()
	local AimAssist = CombatTab:CreateToggle({
		Name = "AimAssist",

		Function = function()
			repeat
				task.wait()

				if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 then
					local NearestPlayer = FindNearestPlayer(AlSploitSettings.AimAssist.Range.Value)
					local NearestEntity = FindNearestEntity(AlSploitSettings.AimAssist.Range.Value)		

					if NearestPlayer or NearestEntity then
						local NearestEntityPrimaryPart = (AlSploitSettings.AimAssist.FaceMobs.Value == true and (NearestEntity and NearestEntity.PrimaryPart or nil) or (NearestPlayer and NearestPlayer.Character.PrimaryPart or nil))

						if not NearestEntityPrimaryPart then
							return
						end

						local LookVector = (NearestEntityPrimaryPart.Position - Camera.CFrame.Position).Unit

						Camera.CFrame = CFrame.new(Camera.CFrame.Position, (Camera.CFrame.Position + LookVector))
					end
				end				
			until shared.AlSploitUnInjected == true or AlSploitSettings.AimAssist.Value == false
		end,

		HoverText = "Makes Your Camera Face The Disered Entity 👁️"
	})

	AimAssist:CreateToggle({
		Name = "FaceMobs",

		Function = function() end,

		DefaultValue = false
	})

	AimAssist:CreateSlider({
		Name = "Range",

		Function = function() end,

		MaximumValue = 19,
		DefaultValue = 19
	})
end)

task.spawn(function()
	local OldKnockback = KnockbackUtilCalculateKnockbackVelocity

	local Velocity = CombatTab:CreateToggle({
		Name = "Velocity",

		Function = function() 			
			if AlSploitSettings.Velocity.Value == true then
				KnockbackUtilCalculateKnockbackVelocity.kbDirectionStrength = (KnockbackUtilCalculateKnockbackVelocity.kbDirectionStrength * (AlSploitSettings.Velocity.Horizontal.Value / 100))
				KnockbackUtilCalculateKnockbackVelocity.kbUpwardStrength =  (KnockbackUtilCalculateKnockbackVelocity.kbUpwardStrength * (AlSploitSettings.Velocity.Vertical.Value / 100))
			end

			if AlSploitSettings.Velocity.Value == false then
				KnockbackUtilCalculateKnockbackVelocity = OldKnockback
			end
		end,

		HoverText = "Changes The Knockback Direction, 100 Being Normal Value 🛸"
	})

	local Horizontal = Velocity:CreateSlider({
		Name = "Horizontal",

		Function = function() end,

		MaximumValue = 100,
		DefaultValue = 0
	})

	local Vertical = Velocity:CreateSlider({
		Name = "Vertical",

		Function = function() end,

		MaximumValue = 100,
		DefaultValue = 0
	})
end)

task.spawn(function()
	local SelectedAnimation = nil
	local KillauraBox

	local Killaura = CombatTab:CreateToggle({
		Name = "Killaura",

		Function = function()
			local KillAuraAnimationCooldown = false

			local function PlayAnimation(Animation)
				if ViewModel and C0 then
					for i, v in next, Animation do
						local TweenInformation = TweenInfo.new(v.Time, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
						local AnimationTween = TweenService:Create(ViewModel.RightHand.RightWrist, TweenInformation, {C0 = (C0 * v.CFrame)})

						AnimationTween:Play()

						task.wait(v.Time)
					end
				end				
			end

			local function SwordHit(Entity, Weapon, NearestEntityDistance)				
				task.spawn(function()
					if AlSploitSettings.Killaura.CustomAnimation.Value == true and KillAuraAnimationCooldown == false then
						KillAuraAnimationCooldown = true

						PlayAnimation(KillauraAnimations[SelectedAnimation])

						KillAuraAnimationCooldown = false
					end
				end)

				task.spawn(function()
					if AlSploitSettings.Killaura.ShowEnemy.Value == true and not KillauraBox then			
						KillauraBox = Instance.new("Part")

						KillauraBox.Parent = game.Workspace
						KillauraBox.Name = "KillauraBox"

						KillauraBox.Transparency = 0.6
						KillauraBox.CanCollide = false
						KillauraBox.Anchored = true
						KillauraBox.Material = Enum.Material.SmoothPlastic
						KillauraBox.CFrame = Entity.PrimaryPart.CFrame

						local ColorSplit = string.split(AlSploitSettings.Killaura.TargetBoxColor.Value, ",")

						local R = ColorSplit[1]
						local G = ColorSplit[2]
						local B = ColorSplit[3]

						KillauraBox.Color = Color3.new(R, G, B)
						KillauraBox.Size = Vector3.new(4, 6, 4)
					end

					if KillauraBox then											
						KillauraBox.CFrame = Entity.PrimaryPart.CFrame

						local ColorSplit = string.split(AlSploitSettings.Killaura.TargetBoxColor.Value, ",")

						local R = ColorSplit[1]
						local G = ColorSplit[2]
						local B = ColorSplit[3]

						KillauraBox.Color = Color3.new(R, G, B)
					end

					if AlSploitSettings.Killaura.ShowEnemy.Value == false and KillauraBox then
						KillauraBox:Destroy()
					end
					
					if KillauraBox then
						KillauraBox.CFrame = Entity.PrimaryPart.CFrame
					end
				end)			

				local LookVector = LocalPlayer.Character.PrimaryPart.CFrame.LookVector
				local Unit = (Entity.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Unit

				local Angle = math.acos(Unit:Dot(LookVector))

				if Angle > math.rad((AlSploitSettings.Killaura.Angle.Value / 2)) then
					return
				end

				local RaycastParameters = RaycastParams.new()

				RaycastParameters.FilterDescendantsInstances = {CollectionService:GetTagged("block")}
				RaycastParameters.FilterType = Enum.RaycastFilterType.Include

				local Raycast = game.Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, Entity.PrimaryPart.Position, RaycastParameters)

				if AlSploitSettings.Killaura.WallCheck.Value == true and (Raycast and Raycast.Position or true) then
					return
				end	

				if AlSploitSettings.Killaura.Exeptions.MouseDown.Value == true and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) == false then
					return
				end

				if AlSploitSettings.Killaura.Exeptions.GuiClosed.Value == true and ContainerFrame.Visible == true then
					return
				end

				task.spawn(function()
					if AlSploitSettings.Killaura.SwitchToWeapon.Value == true then
						SwitchItem(Weapon.itemType)
					end
				end)

				local LocalPlayerHumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
				local EntityPrimaryPart = Entity.PrimaryPart
				local LookVector = CFrame.lookAt(LocalPlayerHumanoidRootPart.Position, EntityPrimaryPart.Position).lookVector
				local Magnitude = (LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude

				local SelfPosition

				task.spawn(function()
					SelfPosition = (LocalPlayerHumanoidRootPart.Position + (LookVector * (Magnitude - 14)))

					BedwarsRemotes.SwordHitRemote:FireServer({
						weapon = Weapon.tool,
						chargedAttack = {chargeRatio = 0},
						entityInstance = Entity,

						validate = {
							raycast = {
								cameraPosition = ({value = LocalPlayerHumanoidRootPart.Position}), 
								cursorDirection = ({value = LookVector})
							},

							targetPosition = ({value = EntityPrimaryPart.Position}),
							selfPosition = ({value = SelfPosition})
						}
					})	
				end)
			end

			local function GetSword()
				local HighestDamage, Sword = -math.huge, nil

				for i, v in next, GetInventory(LocalPlayer).items do 		

					local SwordMetaGame = BedwarsTables.ItemTable[v.itemType].sword

					if SwordMetaGame then
						local SwordDamage = (SwordMetaGame.damage / SwordMetaGame.attackSpeed)

						if SwordDamage > HighestDamage then
							HighestDamage = SwordDamage
							Sword = v
						end
					end
				end

				return Sword
			end

			task.spawn(function()
				repeat
					task.wait(0)

					if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 then
						local NearestEntity, NearestEntityDistance = FindNearestEntity(AlSploitSettings.Killaura.Range.Value)
						local Sword = GetSword()

						task.spawn(function()
							if Sword and Sword.tool and not NearestEntity then
								PlayAnimation(KillauraAnimations.Neutral)
							end
						end)

						task.spawn(function()
							if Sword and NearestEntity then
								SwordHit(NearestEntity, Sword, NearestEntityDistance)
							end
							
							if not Sword or not NearestEntity and KillauraBox then
								KillauraBox:Destroy()
							end
						end)						
					end				
				until shared.AlSploitUnInjected == true or AlSploitSettings.Killaura.Value == false

				if KillauraBox then
					KillauraBox:Destroy()
				end
			end)		
		end,

		HoverText = "Automatically Hits Entities For You 🎯"
	})

	local CustomAnimation = Killaura:CreateToggle({
		Name = "CustomAnimation",

		Function = function() end,

		DefaultValue = true
	})

	local SwitchToWeapon = Killaura:CreateToggle({
		Name = "SwitchToWeapon",

		Function = function() end,

		DefaultValue = true
	})

	local ShowEnemy = Killaura:CreateToggle({
		Name = "ShowEnemy",

		Function = function() end,

		DefaultValue = true
	})

	local WallCheck = Killaura:CreateToggle({
		Name = "WallCheck",

		Function = function() end,

		DefaultValue = false
	})

	local Range = Killaura:CreateSlider({
		Name = "Range",

		Function = function() end,	

		DefaultValue = 19,
		MaximumValue = 19
	})

	local Angle = Killaura:CreateSlider({
		Name = "Angle",

		Function = function() end,	

		DefaultValue = 360,
		MaximumValue = 360
	})	

	local Exeptions = Killaura:CreateDropdown({
		Name = "Exeptions",
		HoverText = "What Is Required For Killaura To Work"
	})

	local MouseDown = Exeptions:CreateToggle({
		Name = "MouseDown",

		Function = function() end,

		DefaultValue = false
	})

	local GuiClosed = Exeptions:CreateToggle({
		Name = "GuiClosed",

		Function = function() end,

		DefaultValue = false
	})

	local Animations = Killaura:CreateDropdown({
		Name = "Animations",
		HoverText = "Pick The Animation Of Your Choice"
	})

	local AlSploitClassic = Animations:CreateToggle({
		Name = "AlSploitHeartbeat",

		Function = function()
			if AlSploitSettings.Killaura.Animations.AlSploitHeartbeat.Value == true then
				SelectedAnimation = "AlSploitHeartbeat"
			end
		end,

		DefaultValue = false
	})

	local AlSploitClassic = Animations:CreateToggle({
		Name = "AlSploitClassic",

		Function = function()
			if AlSploitSettings.Killaura.Animations.AlSploitClassic.Value == true then
				SelectedAnimation = "AlSploitClassic"
			end
		end,

		DefaultValue = true
	})

	local AlSploitClassic = Animations:CreateToggle({
		Name = "AlSploitOld",

		Function = function()
			if AlSploitSettings.Killaura.Animations.AlSploitOld.Value == true then
				SelectedAnimation = "AlSploitOld"
			end
		end,

		DefaultValue = false
	})

	local TargetBoxColor = Killaura:CreateColorSlider({
		Name = "TargetBoxColor",

		Function = function() end,

		DefaultValue = Color3.new(1, 0.278431, 0.290196)
	})
	
	UnInjectEvent.Event:Connect(function()
		if KillauraBox then
			KillauraBox:Destroy()
		end
	end)
end)

task.spawn(function()
	local Aimbot = CombatTab:CreateToggle({
		Name = "Aimbot",

		Function = function()    
			repeat
				task.wait()

				if IsAlive(LocalPlayer) == true then
					local NearestPlayer = FindNearestPlayer()
					local BestArrow, BestBow = GetBow()

					if NearestPlayer and GetMatchState() ~= 0 and not NearestPlayer:FindFirstChildOfClass("ForceField") then
						task.spawn(function()
							if HasItem("vacuum") then
								local Vacuum = LocalPlayerInventory:FindFirstChild("vacuum")

								task.spawn(function()
									if AlSploitSettings.Aimbot.SwitchToItem.Value == true then	
										SwitchItem("vacuum")
									end
								end)

								ShootProjectile(Vacuum, "ghost", NearestPlayer)
							end
						end)

						task.spawn(function()
							if BestBow and HasItem("arrow") then
								local Bow = LocalPlayerInventory:FindFirstChild(BestBow.itemType)

								task.spawn(function()
									if AlSploitSettings.Aimbot.SwitchToItem.Value == true then	
										SwitchItem(BestBow.itemType)
									end
								end)

								ShootProjectile(Bow, BestArrow, NearestPlayer)
							end
						end)					

						task.spawn(function()
							if HasItem("fireball") then
								local FireBall = LocalPlayerInventory:FindFirstChild("fireball")

								task.spawn(function()
									if AlSploitSettings.Aimbot.SwitchToItem.Value == true then	
										SwitchItem("fireball")
									end
								end)

								ShootProjectile(FireBall, "fireball", NearestPlayer)
							end

							if HasItem("Snowball") and not (HasItem("arrow") or BestBow) then
								local SnowBall = LocalPlayerInventory:FindFirstChild("Snowball")

								task.spawn(function()
									if AlSploitSettings.Aimbot.SwitchToItem.Value == true then	
										SwitchItem("Snowball")
									end
								end)

								ShootProjectile(SnowBall, "Snowball", NearestPlayer)
							end
						end)

						task.spawn(function()
							if HasItem("lasso") then
								local Lasso = LocalPlayerInventory:FindFirstChild("lasso")

								task.spawn(function()
									if AlSploitSettings.Aimbot.SwitchToItem.Value == true then	
										SwitchItem("lasso")
									end
								end)

								ShootProjectile(Lasso, "lasso", NearestPlayer)
							end
						end)
					end
				end
			until shared.AlSploitUnInjected == true or AlSploitSettings.Aimbot.Value == false
		end,

		HoverText = "Automatically Shoots Players 🏹"
	})

	Aimbot:CreateToggle({
		Name = "SwitchToItem",

		Function = function() end,

		DefaultValue = true
	})
end)

--[[task.spawn(function()
	local AntiHit = CombatTab:CreateToggle({
		Name = "AntiHit",

		Function = function()   		
			task.spawn(function()
				if AlSploitSettings.AntiHit.Value == true and GetMatchState() ~= 0 then
					CloneHumanoidRootPart()

					LocalPlayer.CharacterAdded:Connect(function()
						repeat task.wait() until IsAlive(LocalPlayer)
						
						if not NewLocalPlayerHumanoidRootPart then
							CloneHumanoidRootPart()
						end
					end)
				end		
			end)
			
			repeat
				task.wait()

				if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 then
					local NearestEntity = FindNearestEntity(AlSploitSettings.AntiHit.Range.Value)

					task.spawn(function()
						if NearestEntity then		
							task.spawn(function()
								if OldLocalPlayerHumanoidRootPart and NewLocalPlayerHumanoidRootPart then							
									OverrideHumanoidRootPartPosition = tick()
									
									OldLocalPlayerHumanoidRootPart.CFrame = (NewLocalPlayerHumanoidRootPart.CFrame + Vector3.new(0, 1000, 0))
									
									OverrideHumanoidRootPartPosition = tick()
									
									task.wait(5 / AlSploitSettings.AntiHit.Speed.Value)
									
									OldLocalPlayerHumanoidRootPart.CFrame = NewLocalPlayerHumanoidRootPart.CFrame
									
									task.wait(5 / AlSploitSettings.AntiHit.Speed.Value)
								end
							end)	
						end
					end)				
				end
			until shared.AlSploitUnInjected == true or AlSploitSettings.AntiHit.Value == false
			
			if NewLocalPlayerHumanoidRootPart then
				DestroyClonedHumanoidRootPart()
				
				OverrideHumanoidRootPartPosition = (tick() + math.huge)
			end
		end,

		HoverText = "Makes You Dodge The Attacks 🏃‍ (Works Better With NoFall)"
	})

	AntiHit:CreateSlider({
		Name = "Speed",

		Function = function() end,

		MaximumValue = 10,
		DefaultValue = 10
	})

	AntiHit:CreateSlider({
		Name = "Range",

		Function = function() end,

		MaximumValue = 19,
		DefaultValue = 19
	})
end)--]]

task.spawn(function()
	local OldSwingSwordAtMouse
	local OldReach = BedwarsConstants.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE    

	local Reach = CombatTab:CreateToggle({
		Name = "Reach",

		Function = function()    
			task.spawn(function()
				repeat
					task.wait()

					if IsAlive(LocalPlayer) == true then
						local NearestEntity, NearestEntityDistance = FindNearestEntity(AlSploitSettings.Killaura.Range.Value)

						if NearestEntity then
							BedwarsConstants.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = (NearestEntityDistance + 2)
						end
					end        
				until shared.AlSploitUnInjected == true or AlSploitSettings.Reach.Value == false

				BedwarsConstants.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = OldReach
			end)

			task.spawn(function()
				if AlSploitSettings.Reach.Value == true then
					OldSwingSwordAtMouse = BedwarsControllers.SwordController.swingSwordAtMouse

					BedwarsControllers.SwordController.swingSwordAtMouse = function(Enabled, LastSwing, BufferedMobileAttack, ...)    
						BufferedMobileAttack = true

						return OldSwingSwordAtMouse(Enabled, LastSwing, BufferedMobileAttack, ...)          
					end    
				end    

				if AlSploitSettings.Reach.Value == false then
					BedwarsControllers.SwordController.swingSwordAtMouse = OldSwingSwordAtMouse
				end        
			end)
		end,

		HoverText = "Increases Reach 👾"
	})

	UnInjectEvent.Event:Connect(function()
		BedwarsControllers.SwordController.swingSwordAtMouse = OldSwingSwordAtMouse
	end)
end)

task.spawn(function()
	local NoFallDamage = BlatantTab:CreateToggle({
		Name = "NoFallDamage",

		Function = function()
			repeat
				task.wait(0.5)

				if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 then
					BedwarsRemotes.GroundHitRemote:FireServer()
				end		
			until shared.AlSploitUnInjected == true or AlSploitSettings.NoFallDamage.Value == false
		end,

		HoverText = "Prevents You From Taking Fall Damage 💪"
	})
end)

task.spawn(function()	
	local KnockbackTp = BlatantTab:CreateToggle({
		Name = "KnockbackTp",

		Function = function() end,

		HoverText = "Teleports You When Knockback Is Applied 🛸"
	})
	
	local MovementMethod = KnockbackTp:CreateDropdown({
		Name = "MovementMethod",
		HoverText = "Decide If You Control The Movement Or The Script"
	})

	MovementMethod :CreateToggle({
		Name = "Automatic",

		Function = function() end,

		DefaultValue = false
	})

	MovementMethod :CreateToggle({
		Name = "Manual",

		Function = function() end,

		DefaultValue = true
	})

	local TeleportTo = KnockbackTp:CreateDropdown({
		Name = "TeleportTo",
		HoverText = "Decide Where You Want To Teleport After The Knockback Is Applied"
	})
	
	TeleportTo:CreateToggle({
		Name = "LookDirection",

		Function = function() end,

		DefaultValue = true
	})

	TeleportTo:CreateToggle({
		Name = "NearestPlayer",

		Function = function() end,

		DefaultValue = false
	})

	TeleportTo:CreateToggle({
		Name = "NearestBed",

		Function = function() end,

		DefaultValue = false
	})

	Client:WaitFor("EntityDamageEvent"):andThen(function(v)
		v:Connect(function(DamageTable)
			if IsAlive(LocalPlayer) == true and DamageTable.entityInstance == LocalPlayer.Character and GetMatchState() ~= 0 and AlSploitSettings.KnockbackTp.Value == true then 
				local KnockbackMultiplier = DamageTable.knockbackMultiplier

				if KnockbackMultiplier then
					KnockbackMultiplier = DamageTable.knockbackMultiplier.horizontal

					if KnockbackMultiplier then
						local ProgressHud = CreateProgressHud(KnockbackMultiplier)
						local Speed = (GetSpeed() * 120)

						if AlSploitSettings.KnockbackTp.TeleportTo.LookDirection.Value == true then
							if AlSploitSettings.KnockbackTp.MovementMethod.Automatic.Value == true then
								local StartTick = tick()

								local Unit = Vector3.new(LocalPlayer.Character.PrimaryPart.CFrame.LookVector.X, 0, LocalPlayer.Character.PrimaryPart.CFrame.LookVector.Z).Unit

								task.spawn(function()
									repeat
										task.wait()

										LocalPlayer.Character.PrimaryPart.Velocity = (Unit * Speed)
									until shared.AlSploitUninjected == true or AlSploitSettings.KnockbackTp.Value == false or IsAlive(LocalPlayer) == false or ((tick() - StartTick) >= KnockbackMultiplier)

									LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(0, 0, 0)
								end)

								return
							end

							if AlSploitSettings.KnockbackTp.MovementMethod.Manual.Value == true then
								local StartTick = tick()

								task.spawn(function()
									repeat
										task.wait()
										local Unit = Vector3.new(LocalPlayer.Character.PrimaryPart.CFrame.LookVector.X, 0, LocalPlayer.Character.PrimaryPart.CFrame.LookVector.Z).Unit

										LocalPlayer.Character.PrimaryPart.Velocity = (Unit * Speed)
									until shared.AlSploitUninjected == true or AlSploitSettings.KnockbackTp.Value == false or IsAlive(LocalPlayer) == false or ((tick() - StartTick) >= KnockbackMultiplier)

									LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(0, 0, 0)
								end)

								return
							end
						end

						if AlSploitSettings.KnockbackTp.TeleportTo.NearestPlayer.Value == true then
							local NearestPlayer = FindNearestPlayer()

							if NearestPlayer then
								local StartTick = tick()

								local Unit = (LocalPlayer.Character.PrimaryPart.Position - NearestPlayer.Character.PrimaryPart.Position).Unit

								task.spawn(function()
									repeat
										task.wait()

										LocalPlayer.Character.PrimaryPart.Velocity = (Unit * Speed)
									until shared.AlSploitUninjected == true or AlSploitSettings.KnockbackTp.Value == false or IsAlive(LocalPlayer) == false or ((tick() - StartTick) >= KnockbackMultiplier)

									LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(0, 0, 0)
								end)

								return
							end
						end

						if AlSploitSettings.KnockbackTp.TeleportTo.NearestBed.Value == true then
							local NearestBed = FindNearestBed()

							if NearestBed then
								local StartTick = tick()

								local Unit = (LocalPlayer.Character.PrimaryPart.Position - NearestBed.Character.PrimaryPart.Position).Unit

								task.spawn(function()
									repeat
										task.wait()

										LocalPlayer.Character.PrimaryPart.Velocity = (Unit * Speed)
									until shared.AlSploitUninjected == true or AlSploitSettings.KnockbackTp.Value == false or IsAlive(LocalPlayer) == false or ((tick() - StartTick) >= KnockbackMultiplier)

									LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(0, 0, 0)
								end)

								return
							end
						end
					end
				end
			end 
		end)	
	end) 
end)

task.spawn(function()
	local InfiniteJump = BlatantTab:CreateToggle({
		Name = "InfiniteJump",

		Function = function() end,

		HoverText = "Allows You To Jump Without A Cooldown 🦘"
	})

	UserInputService.JumpRequest:Connect(function()
		if shared.AlSploitUnInjected == false and IsAlive(LocalPlayer) == true and AlSploitSettings.InfiniteJump.Value == true then
			LocalPlayer.Character.Humanoid:ChangeState("Jumping")
		end
	end)
end)

task.spawn(function()
	local TargetStrafe = BlatantTab:CreateToggle({
		Name = "TargetStrafe",

		Function = function()
			local Tetha = 0

			repeat
				task.wait()

				if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 then
					local NearestPlayer = FindNearestPlayer((AlSploitSettings.TargetStrafe.Range.Value + 3))
					local NearestEntity = FindNearestEntity((AlSploitSettings.TargetStrafe.Range.Value + 3))		

					if NearestPlayer or NearestEntity then
						local NearestEntityPrimaryPart = (AlSploitSettings.TargetStrafe.TargetMobs.Value == true and (NearestEntity and NearestEntity.PrimaryPart or nil) or (NearestPlayer and NearestPlayer.Character.PrimaryPart or nil))

						if not NearestEntityPrimaryPart then
							return
						end

						local LocalPlayerPrimaryPart = LocalPlayer.Character.PrimaryPart

						Tetha = (Tetha + 0.025)

						local TargetPosition = Vector3.new((NearestEntityPrimaryPart.Position.X + ((AlSploitSettings.TargetStrafe.Range.Value - 2) * math.sin(Tetha))), LocalPlayerPrimaryPart.Position.Y, (NearestEntityPrimaryPart.Position.Z + ((AlSploitSettings.TargetStrafe.Range.Value - 2) * math.cos(Tetha))))

						local RaycastParameters = RaycastParams.new()

						RaycastParameters.FilterDescendantsInstances = {CollectionService:GetTagged("block")}
						RaycastParameters.FilterType = Enum.RaycastFilterType.Include

						local Raycast = game.Workspace:Raycast(TargetPosition, Vector3.new(0, -10000, 0), RaycastParameters)
						local Raycast2 = game.Workspace:Raycast((TargetPosition - LocalPlayerPrimaryPart.CFrame.LookVector), Vector3.new(0, 3, 0), RaycastParameters)
						local Raycast3 = game.Workspace:Raycast((TargetPosition + Vector3.new(0, 5, 0)), Vector3.new(0, -4, 0), RaycastParameters)

						if Raycast and Raycast.Position and Raycast.Instance and (Raycast.Instance:IsA("BasePart") or Raycast.Instance:IsA("Part")) and Raycast.Instance.CanCollide == true and not Raycast2 and not Raycast3 then
							local Magnitude = (LocalPlayerPrimaryPart.Position - TargetPosition).Magnitude

							TweenToCFrame((Magnitude / 22.5), TargetPosition)
						end
					end
				end		
			until shared.AlSploitUnInjected == true or AlSploitSettings.TargetStrafe.Value == false
		end,

		HoverText = "Automatically Circles Around Desired Entities 💫"
	})

	TargetStrafe:CreateToggle({
		Name = "TargetMobs",

		Function = function() end,

		DefaultValue = false
	})

	TargetStrafe:CreateSlider({
		Name = "Range",

		Function = function() end,

		MaximumValue = 19,
		DefaultValue = 19
	})
end)

task.spawn(function()
	local Invisible = BlatantTab:CreateToggle({
		Name = "Invisible",

		Function = function()
			if AlSploitSettings.Invisible.Value == true then
				Invisibility()
			end
		end,

		HoverText = "Makes You Invisible 👓"
	})

	LocalPlayer.CharacterAdded:Connect(function()
		repeat task.wait() until IsAlive(LocalPlayer)

		if AlSploitSettings.Invisible.Value == true then
			Invisibility()
		end
	end)
end)

task.spawn(function()	
	local Speed = BlatantTab:CreateToggle({
		Name = "Speed",

		Function = function()
			task.spawn(function()
				if AlSploitSettings.Speed.Value == true then
					AlSploitConnections["SpeedConnection"] = RunService.Heartbeat:Connect(function(Delta)
						if IsAlive(LocalPlayer) == true then
							local SpeedRaycastParameters = RaycastParams.new()

							SpeedRaycastParameters.FilterDescendantsInstances = {CollectionService:GetTagged("block")}
							SpeedRaycastParameters.FilterType = Enum.RaycastFilterType.Include

							local SpeedValue = GetSpeed()

							local SpeedPosition = (LocalPlayer.Character.Humanoid.MoveDirection * (SpeedValue * Delta))

							local Raycast = game.Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, SpeedPosition, SpeedRaycastParameters)

							if not Raycast then
								LocalPlayer.Character.PrimaryPart.CFrame = (LocalPlayer.Character.PrimaryPart.CFrame + SpeedPosition)
							end
						end				
					end)
				end
			end)

			if AlSploitSettings.Speed.Value == false and AlSploitConnections["SpeedConnection"] then
				AlSploitConnections["SpeedConnection"]:Disconnect()
			end
		end,

		HoverText = "Makes Your Speed Equal To The Desired Value ⚡"
	})

	Speed:CreateSlider({
		Name = "Speed",

		Function = function() end,

		MaximumValue = 23,
		DefaultValue = 23
	})
end)

task.spawn(function()
	local OldHorizontalOffset = BedwarsControllers.ViewModelController:GetAttribute("ConstantManager_HORIZONTAL_OFFSET")
	local OldVerticalOffset = BedwarsControllers.ViewModelController:GetAttribute("ConstantManager_VERTICAL_OFFSET")
	local OldDepthOffset = BedwarsControllers.ViewModelController:GetAttribute("ConstantManager_DEPTH_OFFSET")

	local ViewModelChanger = UtilityTab:CreateToggle({
		Name = "ViewModelChanger",

		Function = function()
			if AlSploitSettings.ViewModelChanger.Value == true and ViewModel and C1 then
				BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", (AlSploitSettings.ViewModelChanger.Horizontal.Value / 10))
				BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_VERTICAL_OFFSET", (AlSploitSettings.ViewModelChanger.Vertical.Value / 10))
				BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_DEPTH_OFFSET", -(AlSploitSettings.ViewModelChanger.Depth.Value / 10))

				ViewModel:WaitForChild("RightHand"):WaitForChild("RightWrist").C1 = (C1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad((AlSploitSettings.ViewModelChanger.Horizontal.Value / 3))))
			end

			if AlSploitSettings.ViewModelChanger.Value == false and ViewModel and C1 then
				BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", OldHorizontalOffset)
				BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_VERTICAL_OFFSET",  OldVerticalOffset)
				BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_DEPTH_OFFSET", OldDepthOffset)

				ViewModel:WaitForChild("RightHand"):WaitForChild("RightWrist").C1 = (C1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad((OldHorizontalOffset / 3))))
			end
		end,

		HoverText = "Allows You To Change Your ViewModel (First Person Camera) 📷"
	})

	ViewModelChanger:CreateSlider({
		Name = "Horizontal",

		Function = function()
			if AlSploitSettings.ViewModelChanger.Value == true then
				BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", (AlSploitSettings.ViewModelChanger.Horizontal.Value / 10))
			end
		end,

		MaximumValue = 45,
		DefaultValue = 15
	})

	ViewModelChanger:CreateSlider({
		Name = "Vertical",

		Function = function()
			if AlSploitSettings.ViewModelChanger.Value == true and ViewModel and C1 then
				BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_VERTICAL_OFFSET", (AlSploitSettings.ViewModelChanger.Vertical.Value / 10))

				C1 = (C1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad((AlSploitSettings.ViewModelChanger.Horizontal.Value / 3))))
			end
		end,

		MaximumValue = 15,
		DefaultValue = 5
	})

	ViewModelChanger:CreateSlider({
		Name = "Depth",

		Function = function()
			if AlSploitSettings.ViewModelChanger.Value == true then
				BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_DEPTH_OFFSET", -(AlSploitSettings.ViewModelChanger.Depth.Value / 10))
			end
		end,

		MaximumValue = 105,
		DefaultValue = 35
	})

	UnInjectEvent.Event:Connect(function()
		BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", OldHorizontalOffset)
		BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_VERTICAL_OFFSET",  OldVerticalOffset)
		BedwarsControllers.ViewModelController:SetAttribute("ConstantManager_DEPTH_OFFSET", OldDepthOffset)

		ViewModel:WaitForChild("RightHand"):WaitForChild("RightWrist").C1 = (C1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad((OldHorizontalOffset / 3))))
	end)
end)

task.spawn(function()
	local KillFeedHudGui

	task.spawn(function()
		repeat
			task.wait()

			pcall(function()
				KillFeedHudGui = LocalPlayer.PlayerGui.KillFeedGui
			end)
		until KillFeedHudGui
	end)

	local HideKillFeed = UtilityTab:CreateToggle({
		Name = "HideKillFeedGui",

		Function = function()
			if AlSploitSettings.HideKillFeedGui.Value == true and KillFeedHudGui then
				KillFeedHudGui.Parent = ReplicatedStorageService
			end	

			if AlSploitSettings.HideKillFeedGui.Value == true and not KillFeedHudGui then
				CreateNotification(3, "KillFeedGui Not Found")
			end

			if AlSploitSettings.HideKillFeedGui.Value == false and ReplicatedStorageService:FindFirstChild("KillFeedHud") then
				ReplicatedStorageService.KillFeedHud.Parent = LocalPlayer.PlayerGui

				KillFeedHudGui = LocalPlayer.PlayerGui.KillFeedGui
			end	
		end,

		HoverText = "Removes The Kill Feed 🖼️"
	})

	UnInjectEvent.Event:Connect(function()
		if ReplicatedStorageService:FindFirstChild("KillFeedHud") then
			ReplicatedStorageService.KillFeedHud.Parent = LocalPlayer.PlayerGui

			KillFeedHudGui = LocalPlayer.PlayerGui.KillFeedGui
		end	
	end)
end)

task.spawn(function()
	local OldGlobalChatSystemMessages = ClientStore:getState().Settings.global_chat_system_messages
	local OldFriendSpectating = ClientStore:getState().Settings.friendSpectating
	local OldStreamerMode = ClientStore:getState().Settings.streamer_mode

	local Anonymous = UtilityTab:CreateToggle({
		Name = "Anonymous",

		Function = function()			
			if AlSploitSettings.Anonymous.Value == true then
				OldGlobalChatSystemMessages = ClientStore:getState().Settings.global_chat_system_messages
				OldFriendSpectating = ClientStore:getState().Settings.friendSpectating
				OldStreamerMode = ClientStore:getState().Settings.streamer_mode

				ClientStore:getState().Settings.global_chat_system_messages = false
				ClientStore:getState().Settings.friendSpectating = false
				ClientStore:getState().Settings.streamer_mode = true
			end

			if AlSploitSettings.Anonymous.Value == false then
				ClientStore:getState().Settings.global_chat_system_messages = OldGlobalChatSystemMessages
				ClientStore:getState().Settings.friendSpectating = OldFriendSpectating
				ClientStore:getState().Settings.streamer_mode = OldStreamerMode
			end
		end,

		HoverText = "Makes You Anonymous To Players🕵️"
	})

	UnInjectEvent.Event:Connect(function()
		ClientStore:getState().Settings.global_chat_system_messages = OldGlobalChatSystemMessages
		ClientStore:getState().Settings.friendSpectating = OldFriendSpectating
		ClientStore:getState().Settings.streamer_mode = OldStreamerMode
	end)
end)

task.spawn(function()
	local OldSprintFunction = BedwarsControllers.SprintController.stopSprinting

	local AutoSprint = UtilityTab:CreateToggle({
		Name = "AutoSprint",

		Function = function()			
			if AlSploitSettings.AutoSprint.Value == true then		
				OldSprintFunction = BedwarsControllers.SprintController.stopSprinting

				BedwarsControllers.SprintController.stopSprinting = function(...)
					local Function = OldSprintFunction(...)

					BedwarsControllers.SprintController:startSprinting()

					return Function
				end

				task.spawn(function()
					BedwarsControllers.SprintController:startSprinting()
				end)
			end

			if AlSploitSettings.AutoSprint.Value == false then
				BedwarsControllers.SprintController.stopSprinting = OldSprintFunction
				BedwarsControllers.SprintController:stopSprinting()
			end
		end,

		HoverText = "Makes You Sprint Automatically 🐾"
	})

	UnInjectEvent.Event:Connect(function()
		BedwarsControllers.SprintController.stopSprinting = OldSprintFunction
		BedwarsControllers.SprintController:stopSprinting()
	end)
end)

task.spawn(function()
	local AntiStaff = UtilityTab:CreateToggle({
		Name = "AntiStaff",

		Function = function()			
			task.spawn(function()
				task.spawn(function()
					PlayerService.PlayerAdded:Connect(function(Player)
						if shared.AlSploitUnInjected == false and AlSploitSettings.AntiStaff.Value == true and Player:IsInGroup(5774246) and Player:GetRankInGroup(5774246) > 1 then
							if AlSploitSettings.AntiStaff.LeaveParty.Value == true then
								BedwarsControllers.QueueController.leaveParty()
							end

							if AlSploitSettings.AntiStaff.UnInject.Value == true then
								shared.AlSploitUnInjected = true
							end	

							if AlSploitSettings.AntiStaff.Kick.Value == true then
								LocalPlayer:Kick(Player.Name .. ", A Staff Has Joined Your Game!")
							end	

							CreateNotification(60, Player.Name .. ", A Staff Has Joined Your Game!")
						end
					end)
				end)

				task.spawn(function()
					task.wait(2)

					for i, v in next, PlayerService:GetPlayers() do
						if shared.AlSploitUnInjected == false and AlSploitSettings.AntiStaff.Value == true and v:IsInGroup(5774246) and v:GetRankInGroup(5774246) > 1 then
							if AlSploitSettings.AntiStaff.LeaveParty.Value == true then
								BedwarsControllers.QueueController.leaveParty()
							end

							if AlSploitSettings.AntiStaff.UnInject.Value == true then
								shared.AlSploitUnInjected = true
							end	

							if AlSploitSettings.AntiStaff.Kick.Value == true then
								LocalPlayer:Kick(v.Name .. ", A Staff Has Joined Your Game!")
							end	

							CreateNotification(60, v.Name .. ", A Staff Has Joined Your Game!")						
						end
					end
				end)
			end)
		end,

		HoverText = "Tells You When A Staff Joins 🔔"
	})

	AntiStaff:CreateToggle({
		Name = "LeaveParty",

		Function = function() end,

		DefaultValue = true
	})

	AntiStaff:CreateToggle({
		Name = "Uninject",

		Function = function() end,

		DefaultValue = true
	})

	AntiStaff:CreateToggle({
		Name = "Kick",

		Function = function() end,

		DefaultValue = false
	})
end)

task.spawn(function()
	local OldFov = BedwarsControllers.FovController.fov

	local Fov = UtilityTab:CreateToggle({
		Name = "Fov",

		Function = function()			
			repeat
				task.wait()

				BedwarsControllers.FovController:setFOV(AlSploitSettings.Fov.Fov.Value)
			until shared.AlSploitUnInjected == true or AlSploitSettings.Fov.Value == false

			BedwarsControllers.FovController.fov = OldFov
		end,

		HoverText = "Changes Your Fov 👀"
	})

	Fov:CreateSlider({
		Name = "Fov",

		Function = function() end,

		MaximumValue = 120,
		DefaultValue = 120
	})
end)

task.spawn(function()
	local WinterSky = WorldTab:CreateToggle({
		Name = "WinterSky",

		Function = function()
			if AlSploitSettings.WinterSky.Value == true then
				task.spawn(function()
					local SnowPart = Instance.new("Part")

					SnowPart.Parent = game.Workspace
					SnowPart.Name = "SnowPart"

					SnowPart.Transparency = 1
					SnowPart.CanCollide = false
					SnowPart.Anchored = true
					SnowPart.Size = Vector3.new(240, 0.5, 240)

					local Snow = Instance.new("ParticleEmitter")

					Snow.Parent = SnowPart
					Snow.Name = "Snow"

					Snow.EmissionDirection = Enum.NormalId.Bottom
					Snow.VelocitySpread = 35
					Snow.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.16939899325371, 0), NumberSequenceKeypoint.new(0.23365999758244 ,0.62841498851776, 0.37158501148224), NumberSequenceKeypoint.new(0.56209099292755, 0.38797798752785, 0.2771390080452), NumberSequenceKeypoint.new(0.90577298402786, 0.51912599802017, 0), NumberSequenceKeypoint.new(1, 1, 0)})
					Snow.SpreadAngle = Vector2.new(35, 35)
					Snow.Lifetime = NumberRange.new(8, 14)
					Snow.Rotation = NumberRange.new(110)
					Snow.RotSpeed = NumberRange.new(300)
					Snow.Texture = "rbxassetid://8158344433"
					Snow.Speed = NumberRange.new(8, 18)
					Snow.Rate = 28
					Snow.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.039760299026966, 1.3114800453186, 0.32786899805069), NumberSequenceKeypoint.new(0.7554469704628, 0.98360699415207, 0.44038599729538), NumberSequenceKeypoint.new(1, 0, 0)})

					local WindSnow = Instance.new("ParticleEmitter")

					WindSnow.Parent = SnowPart
					WindSnow.Name = "WindSnow"

					WindSnow.EmissionDirection = Enum.NormalId.Bottom
					WindSnow.VelocitySpread = 35
					WindSnow.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.16939899325371, 0), NumberSequenceKeypoint.new(0.23365999758244, 0.62841498851776, 0.37158501148224), NumberSequenceKeypoint.new(0.56209099292755, 0.38797798752785, 0.2771390080452), NumberSequenceKeypoint.new(0.90577298402786, 0.51912599802017, 0),NumberSequenceKeypoint.new(1, 1, 0)})
					WindSnow.Acceleration = Vector3.new(0, 0, 1)
					WindSnow.SpreadAngle = Vector2.new(35, 35)
					WindSnow.Lifetime = NumberRange.new(8, 14)
					WindSnow.Rotation = NumberRange.new(110)
					WindSnow.RotSpeed = NumberRange.new(100)
					WindSnow.Texture = "rbxassetid://8158344433"
					WindSnow.Speed = NumberRange.new(8, 18)
					WindSnow.Rate = 28
					WindSnow.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.039760299026966, 1.3114800453186, 0.32786899805069), NumberSequenceKeypoint.new(0.7554469704628, 0.98360699415207, 0.44038599729538), NumberSequenceKeypoint.new(1, 0, 0)})

					repeat
						task.wait()

						if IsAlive(LocalPlayer) == true then 
							SnowPart.CFrame = (LocalPlayer.Character.PrimaryPart.CFrame + Vector3.new(0, 100, 0))
						end
					until shared.AlSploitUnInjected == true or AlSploitSettings.WinterSky.Value == false

					SnowPart:Destroy()
					WindSnow:Destroy()
					Snow:Destroy()
				end)

				task.spawn(function()
					task.spawn(function()
						if LightingService:FindFirstChild("Sky") then
							LightingService.Sky.Parent = ReplicatedStorageService				
						end
					end)			

					task.spawn(function()
						local Sky = Instance.new("Sky")

						Sky.Parent = LightingService
						Sky.Name = "WinterSky"

						Sky.MoonAngularSize = 30
						Sky.SunAngularSize = 11
						Sky.MoonTextureId = "rbxassetid://8139665943"
						Sky.SunTextureId = "rbxassetid://6196665106"
						Sky.StarCount = 5000
						Sky.SkyboxUp = "rbxassetid://8139676647"
						Sky.SkyboxLf = "rbxassetid://8139676988"
						Sky.SkyboxFt = "rbxassetid://8139677111"
						Sky.SkyboxBk = "rbxassetid://8139677359"
						Sky.SkyboxDn = "rbxassetid://8139677253"
						Sky.SkyboxRt = "rbxassetid://8139676842"						
					end)

					task.spawn(function()
						if LightingService:FindFirstChildOfClass("SunRaysEffect") then
							LightingService:FindFirstChildOfClass("SunRaysEffect"):Destroy()

							local SunRaysEffect = Instance.new("SunRaysEffect")

							SunRaysEffect.Parent = LightingService
							SunRaysEffect.Name = "SunRaysEffect"

							SunRaysEffect.Intensity = 0.03
						end
					end)

					task.spawn(function()
						if not LightingService:FindFirstChildOfClass("SunRaysEffect") then
							local SunRay = Instance.new("SunRaysEffect")

							SunRay.Parent = LightingService
							SunRay.Name = "SunRay"

							SunRay.Intensity = 0.03
						end
					end)

					task.spawn(function()
						if LightingService:FindFirstChildOfClass("BloomEffect") then
							LightingService:FindFirstChildOfClass("BloomEffect"):Destroy()

							local BloomEffect = Instance.new("BloomEffect")

							BloomEffect.Parent = LightingService
							BloomEffect.Name = "BloomEffect"

							BloomEffect.Threshold = 2
							BloomEffect.Intensity = 1
							BloomEffect.Size = 2
						end
					end)

					task.spawn(function()
						if not LightingService:FindFirstChildOfClass("BloomEffect") then
							local BloomEffect = Instance.new("BloomEffect")

							BloomEffect.Parent = LightingService
							BloomEffect.Name = "BloomEffect"

							BloomEffect.Threshold = 2
							BloomEffect.Intensity = 1
							BloomEffect.Size = 2
						end
					end)

					task.spawn(function()
						if LightingService:FindFirstChildOfClass("Atmosphere") then
							LightingService:FindFirstChildOfClass("Atmosphere"):Destroy()

							local Atmosphere = Instance.new("Atmosphere")

							Atmosphere.Parent = LightingService
							Atmosphere.Name = "Atmosphere"

							Atmosphere.Density = 0.3
							Atmosphere.Offset = 0.25
							Atmosphere.Color = Color3.new(0.776471, 0.776471, 0.776471)
							Atmosphere.Decay = Color3.new(0.407843, 0.439216, 0.486275)
							Atmosphere.Glare = 0
							Atmosphere.Haze = 0
						end
					end)

					task.spawn(function()
						if not LightingService:FindFirstChildOfClass("Atmosphere") then
							local Atmosphere = Instance.new("Atmosphere")

							Atmosphere.Parent = LightingService
							Atmosphere.Name = "Atmosphere"

							Atmosphere.Density = 0.3
							Atmosphere.Offset = 0.25
							Atmosphere.Color = Color3.new(0.776471, 0.776471, 0.776471)
							Atmosphere.Decay = Color3.new(0.407843, 0.439216, 0.486275)
							Atmosphere.Glare = 0
							Atmosphere.Haze = 0
						end
					end)

					task.spawn(function()
						if LightingService:FindFirstChild("GalaxySky")then
							LightingService.GalaxySky:Destroy()					
						end
					end)
				end)	
			end

			if AlSploitSettings.WinterSky.Value == false then
				if ReplicatedStorageService:FindFirstChild("Sky") and LightingService:FindFirstChild("WinterSky") then
					ReplicatedStorageService:FindFirstChild("Sky").Parent = LightingService 		

					LightingService.WinterSky:Destroy()	
				end
			end
		end,

		HoverText = "Makes Your Sky Look Like Winter ⛄"
	})

	UnInjectEvent.Event:Connect(function()
		if ReplicatedStorageService:FindFirstChild("Sky") and LightingService:FindFirstChild("WinterSky") then
			ReplicatedStorageService:FindFirstChild("Sky").Parent = LightingService 		

			LightingService.WinterSky:Destroy()	
		end
	end)
end)

task.spawn(function()
	local GalaxySky = WorldTab:CreateToggle({
		Name = "GalaxySky",

		Function = function()
			if AlSploitSettings.GalaxySky.Value == true then
				if LightingService:FindFirstChild("Sky") then
					LightingService.Sky.Parent = ReplicatedStorageService

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

				if LightingService:FindFirstChild("WinterSky") then
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

					if game.Workspace:FindFirstChild("SnowPart") then
						game.Workspace.SnowPart:Destroy()
					end

					if game.Workspace:FindFirstChild("Snow") then
						game.Workspace.Snow:Destroy()
					end

					if game.Workspace:FindFirstChild("WindSnow") then
						game.Workspace.WindSnow:Destroy()
					end
				end	
			end

			if AlSploitSettings.GalaxySky.Value == false then
				if ReplicatedStorageService:FindFirstChild("Sky") and LightingService:FindFirstChild("GalaxySky") then
					ReplicatedStorageService.Sky.Parent = LightingService 

					LightingService.GalaxySky:Destroy()				
				end
			end
		end,

		HoverText = "Makes Your Sky Look Like A Galaxy 🌌"
	})

	UnInjectEvent.Event:Connect(function()
		if ReplicatedStorageService:FindFirstChild("Sky") and LightingService:FindFirstChild("GalaxySky") then
			ReplicatedStorageService.Sky.Parent = LightingService 

			LightingService.GalaxySky:Destroy()				
		end
	end)
end)

task.spawn(function()
	local ClickMeIfAlSploitBroke = GuiTab:CreateToggle({
		Name = "ClickMeIfAlSploitBroke",

		Function = function()            
			if AlSploitSettings.ClickMeIfAlSploitBroke.Value == true then
				AlSploitSettings.ClickMeIfAlSploitBroke.Value = false

				AlSploitScreenGui:Destroy()

				shared.AlSploitUnInjected = true

				if DelFolder then
					DelFolder("AlSploit")
				end
			end
		end,

		HoverText = "Resets AlSploit ♻️"
	})
end)

task.spawn(function()
	local FpsUnlocker = GuiTab:CreateToggle({
		Name = "FpsUnlocker",

		Function = function()
			if AlSploitSettings.FpsUnlocker.Value == true and AlSploitSettings.FpsUnlocker.NoFpsCap.Value == false and SetFpsCap then
				SetFpsCap(AlSploitSettings.FpsUnlocker.Fps.Value)
			end

			if AlSploitSettings.FpsUnlocker.Value == false and SetFpsCap then
				SetFpsCap(AlSploitSettings.FpsUnlocker.Fps.Value)
			end

			if not SetFpsCap then
				CreateNotification(3, "Unable To Unlock Fps")
			end
		end,

		HoverText = "Increases Your Fps To The Desired Value 💻"
	})

	FpsUnlocker:CreateToggle({
		Name = "NoFpsCap",

		Function = function()
			if AlSploitSettings.FpsUnlocker.Value == true and AlSploitSettings.FpsUnlocker.NoFpsCap.Value == true and setfpscap then
				SetFpsCap(1000)
			end

			if AlSploitSettings.FpsUnlocker.Value == true and AlSploitSettings.FpsUnlocker.NoFpsCap.Value == false and setfpscap then
				SetFpsCap(AlSploitSettings.FpsUnlocker.Fps.Value)
			end

			if not SetFpsCap then
				CreateNotification(3, "Unable To Unlock Fps")
			end
		end,

		DefaultValue = true
	})

	FpsUnlocker:CreateSlider({
		Name = "Fps",

		Function = function()
			if AlSploitSettings.FpsUnlocker.Value == true and AlSploitSettings.FpsUnlocker.NoFpsCap.Value == false and setfpscap then
				SetFpsCap(AlSploitSettings.FpsUnlocker.Fps.Value)
			end

			if not SetFpsCap then
				CreateNotification(3, "Unable To Unlock Fps")
			end
		end,

		MaximumValue = 240,
		DefaultValue = 240
	})

	UnInjectEvent.Event:Connect(function()
		if SetFpsCap then
			setfpscap(AlSploitSettings.FpsUnlocker.Fps.Value)
		end
	end)
end)

task.spawn(function()
	local UnInject = GuiTab:CreateToggle({
		Name = "UnInject",

		Function = function()            
			if AlSploitSettings.UnInject.Value == true then
				UnInjectEvent:Fire()
			end
		end,

		HoverText = "Uninjects AlSploit ⌨️"
	})
end)

task.spawn(function()
	CreateNotification(3, "AlSploit Has Loaded")
	
	shared.AlSploitUnInjected = false
	
	task.spawn(function()
		UnInjectEvent.Event:Connect(function()
			AlSploitSettings.UnInject.Value = false
			shared.AlSploitUnInjected = true

			AlSploitScreenGui:Destroy()

			for i, v in next, AlSploitConnections do
				v:Disconnect()
			end

			task.wait(0.5)

			UnInjectEvent:Destroy()
		end)
	end)
end)

--Things to fix because i have nothing else to do :shrug:

--print(string.format("%s", identifyexecutor()))
--support require upvalue constants retarded shitsploits
--saving on poopexes
--fix targetstrafe
--scythedisabler fix / multiaura
--channe gui color
--progresshud
