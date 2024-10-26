local LocalPlayer = game.Players.LocalPlayer

local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")

local AlSploitScreenGui = Instance.new("ScreenGui")

AlSploitScreenGui.Parent = LocalPlayer.PlayerGui
AlSploitScreenGui.Name = "AlSploit"

task.spawn(function()
	local LoadingFrame = Instance.new("ImageLabel")

	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")

	local Title = Instance.new("ImageLabel")

	local LoadingBar = Instance.new("Frame")

	local UICorner_2 = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local UIStroke_2 = Instance.new("UIStroke")

	local Fill = Instance.new("Frame")

	local UICorner_3 = Instance.new("UICorner")
	local UIGradient_2 = Instance.new("UIGradient")

	local Percentage = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

	local DiscordUsername = Instance.new("TextLabel")
	local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

	local DiscordServer = Instance.new("TextLabel")
	local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")

	local RequestImage = Instance.new("ImageLabel")

	local RequestText = Instance.new("TextLabel")
	local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")

	LoadingFrame.Parent = AlSploitScreenGui
	LoadingFrame.Name = "LoadingFrame"

	LoadingFrame.BorderSizePixel = 0
	LoadingFrame.ScaleType = Enum.ScaleType.Crop
	LoadingFrame.Position = UDim2.new(0.260, 0, 0.268, 0)
	LoadingFrame.Image = "rbxassetid://17100395362"
	LoadingFrame.Size = UDim2.new(0.479, 0, 0.461, 0 )

	UICorner.Parent = LoadingFrame
	UICorner.Name = "UICorner"

	UICorner.CornerRadius = UDim.new(0.03, 0)

	UIStroke.Parent = LoadingFrame
	UIStroke.Name = "UIStroke"

	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 1
	UIStroke.Color = Color3.new(1, 1, 1)

	Title.Parent = LoadingFrame
	Title.Name = "Title"

	Title.BackgroundTransparency = 1
	Title.BorderSizePixel = 0
	Title.ScaleType = Enum.ScaleType.Fit
	Title.Position = UDim2.new(0, 0, 0.02, 0)
	Title.Image = "rbxassetid://17100452624"
	Title.Size = UDim2.new(1, 0, 0.664, 0)

	LoadingBar.Parent = LoadingFrame
	LoadingBar.Name = "LoadingBar"

	LoadingBar.BackgroundColor3 = Color3.new(1, 1, 1)
	LoadingBar.BorderSizePixel = 0
	LoadingBar.Position = UDim2.new(0.067, 0, 0.465, 0)
	LoadingBar.Size = UDim2.new(0.853, 0, 0.028, 0)

	UICorner_2.Parent = LoadingBar
	UICorner_2.Name = "UICorner_2"

	UICorner_2.CornerRadius = UDim.new(0.7, 0)

	UIGradient.Parent = LoadingBar
	UIGradient.Name = "UIGradient"

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.290196, 0.196078, 0.596078)), ColorSequenceKeypoint.new(1.00, Color3.new(0.180392, 0.121569, 0.368627))}

	UIStroke_2.Parent = LoadingBar
	UIStroke_2.Name = "UIStroke"

	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_2.Thickness = 1
	UIStroke_2.Color = Color3.new(1, 1, 1)

	Fill.Parent = LoadingBar
	Fill.Name = "Fill"

	Fill.BackgroundColor3 = Color3.new(1, 1, 1)
	Fill.BorderSizePixel = 0
	Fill.Size = UDim2.new(0, 0, 1, 0)

	UICorner_3.Parent = Fill
	UICorner_3.Name = "UICorner_3"

	UICorner_3.CornerRadius = UDim.new(0.7, 0)

	UIGradient_2.Parent = Fill
	UIGradient_2.Name = "UIGradient"

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.45098, 0.356863, 0.792157)), ColorSequenceKeypoint.new(1.00, Color3.new(0.576471, 0.470588, 1))}

	Percentage.Parent = LoadingFrame
	Percentage.Name = "Percentage"

	Percentage.BackgroundTransparency = 1
	Percentage.BorderSizePixel = 0
	Percentage.TextColor3 = Color3.new(1, 1, 1)
	Percentage.TextScaled = true
	Percentage.Position = UDim2.new(0.347, 0, 0.326, 0)
	Percentage.TextSize = 20
	Percentage.Size = UDim2.new(0.294, 0, 0.139, 0)
	Percentage.Font = Enum.Font.Gotham
	Percentage.Text = "0%"

	UITextSizeConstraint.Parent = Percentage
	UITextSizeConstraint.Name = "UITextSizeConstraint"

	UITextSizeConstraint.MaxTextSize = 20

	DiscordUsername.Parent = LoadingFrame
	DiscordUsername.Name = "DiscordUsername"

	DiscordUsername.BackgroundTransparency = 1
	DiscordUsername.BorderSizePixel = 0
	DiscordUsername.TextColor3 = Color3.new(1, 1, 1)
	DiscordUsername.TextScaled = true
	DiscordUsername.Position = UDim2.new(0, 0, 0.890, 0)
	DiscordUsername.TextSize = 16
	DiscordUsername.Size = UDim2.new(1, 0, 0.0972, 0)
	DiscordUsername.Font = Enum.Font.Gotham
	DiscordUsername.Text = "Discord Username: godclutcher"

	UITextSizeConstraint_2.Parent = DiscordUsername
	UITextSizeConstraint_2.MaxTextSize = 16

	DiscordServer.Name = "DiscordServer"
	DiscordServer.Parent = LoadingFrame
	DiscordServer.BackgroundColor3 = Color3.new(1, 1, 1)
	DiscordServer.BackgroundTransparency = 1.000
	DiscordServer.BorderColor3 = Color3.new(0, 0, 0)
	DiscordServer.BorderSizePixel = 0
	DiscordServer.Position = UDim2.new(0.00147058826, 0, 0.822222233, 0)
	DiscordServer.Size = UDim2.new(1, 0, 0.0694444478, 0)
	DiscordServer.Font = Enum.Font.Gotham
	DiscordServer.Text = "Discord Server: discord.gg/Msud9c5YRS"
	DiscordServer.TextColor3 = Color3.new(1, 1, 1)
	DiscordServer.TextScaled = true
	DiscordServer.TextSize = 16.000
	DiscordServer.TextWrapped = true

	UITextSizeConstraint_3.Parent = DiscordServer
	UITextSizeConstraint_3.Name = "UITextSizeConstraint_3"

	UITextSizeConstraint_3.MaxTextSize = 16

	RequestImage.Parent = LoadingFrame
	RequestImage.Name = "RequestImage"

	RequestImage.BackgroundTransparency = 1
	RequestImage.BorderSizePixel = 0
	RequestImage.ScaleType = Enum.ScaleType.Fit
	RequestImage.Position = UDim2.new(0.048, 0, 0.578, 0)
	RequestImage.Image = "rbxassetid://15725587012"
	RequestImage.Size = UDim2.new(0, 27, 0, 23)

	RequestText.Parent = LoadingFrame
	RequestText.Name = "RequestImage"

	RequestText.BackgroundTransparency = 1
	RequestText.BorderSizePixel = 0
	RequestText.TextColor3 = Color3.new(1, 1, 1)
	RequestText.TextScaled = true
	RequestText.Position = UDim2.new(0.086, 0, 0.540, 0)
	RequestText.TextSize = 16.000
	RequestText.Size = UDim2.new(0.825, 0, 0.139, 0)
	RequestText.Font = Enum.Font.Gotham
	RequestText.Text = "https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/Loader.lua"

	UITextSizeConstraint_4.Parent = RequestText
	UITextSizeConstraint_4.Name = "UITextSizeConstraint_4"

	UITextSizeConstraint_4.MaxTextSize = 16

	task.spawn(function()
		local TweenInformation = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
		local FillTween = TweenService:Create(Fill, TweenInformation, {Size = UDim2.new(0.5, 0, 1, 0)})

		FillTween:Play()
		
		task.spawn(function()
			repeat
				task.wait()

				Percentage.Text = tostring(math.round(Fill.Size.X.Scale * 100)) .. "%"
			until Fill.Size.X.Scale == 1
		end)
		
		local SuccessExecuted, ResponseExecuted = pcall(function()
			game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/refs/heads/main/AlSploit/Bedwars/Executed")
			
			RequestText.Text = "https://raw.githubusercontent.com/AlSploit/AlSploit/refs/heads/main/AlSploit/Bedwars/Executed"
		end)
		
		if SuccessExecuted == true then
			task.wait(0.8)

			RequestImage.ImageTransparency = 1
			RequestText.Text = "Success!"
			
			task.wait(1)
			
			local TweenInformation = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
			local FillTween = TweenService:Create(Fill, TweenInformation, {Size = UDim2.new(1, 0, 1, 0)})

			FillTween:Play()
			
			local SuccessMainScript, ResponseMainScript = pcall(function()
				game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/MainScript.lua")
				
				RequestImage.ImageTransparency = 0
				RequestText.Text = "https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/MainScript.lua"
			end)
			
			if SuccessMainScript == true then
				task.wait(0.8)

				RequestImage:Destroy()
				RequestText.Text = "Success!"
						
				loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/refs/heads/main/AlSploit/Bedwars/Executed"))()	
				loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/MainScript.lua"))() 
				
				task.wait(0.8)
				
				AlSploitScreenGui:Destroy()
			end
			
			if SuccessMainScript == false then
				RequestImage:Destroy()
				RequestText.Text = "An UnexpectedError Has Occured: " .. ResponseMainScript
			end
		end
		
		if SuccessExecuted == false then
			RequestImage:Destroy()
			RequestText.Text = "An Unexpected Error Has Occured: " .. ResponseExecuted
		end
	end)
end)
