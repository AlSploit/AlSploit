local LocalPlayer = game.Players.LocalPlayer 

local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")

local MinecraftFontUrl = "https://github.com/AlSploit/AlSploit/raw/main/AlSploit/Fonts/MinecraftFont"
local HttpRequest = request or http_request

local LoadTick = tick()
local Loaded = false

local function MakeAlSploitLoadingScreen(Time)
	local AlSploit = Instance.new("ScreenGui")
	local LoadingFrame = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local Title = Instance.new("ImageLabel")
	local LoadingBar = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local Fill = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local UIGradient_2 = Instance.new("UIGradient")
	local Percentage = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local Discord = Instance.new("TextLabel")
	local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
	local DiscordServer = Instance.new("TextLabel")
	local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
	
	AlSploit.Name = "AlSploit"
	AlSploit.Parent = LocalPlayer:WaitForChild("PlayerGui")
	AlSploit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	AlSploit.ResetOnSpawn = false

	LoadingFrame.Name = "LoadingFrame"
	LoadingFrame.Parent = AlSploit
	LoadingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
	LoadingFrame.BorderColor3 = Color3.new(0, 0 ,0)
	LoadingFrame.BorderSizePixel = 0
	LoadingFrame.Position = UDim2.new(0.322, 0, 0.280, 0)
	LoadingFrame.Size = UDim2.new(0, 0, 0, 0)
	LoadingFrame.Image = "rbxassetid://17100395362"
	LoadingFrame.ScaleType = Enum.ScaleType.Crop

	UICorner.Parent = LoadingFrame
	
	UIStroke.Parent = LoadingFrame
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Color = Color3.new(1, 1, 1)
	UIStroke.Thickness = 1

	Title.Name = "Title"
	Title.Parent = LoadingFrame
	Title.BackgroundColor3 = Color3.new(1, 1, 1)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.new(0, 0 ,0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0, 0, 0.022, 0)
	Title.Size = UDim2.new(1, 0, 0.664, 0)
	Title.Image = "rbxassetid://17100452624"
	Title.ScaleType = Enum.ScaleType.Fit

	LoadingBar.Name = "LoadingBar"
	LoadingBar.Parent = LoadingFrame
	LoadingBar.BackgroundColor3 = Color3.new(1, 1, 1)
	LoadingBar.BorderColor3 = Color3.new(0, 0 ,0)
	LoadingBar.BorderSizePixel = 0
	LoadingBar.Position = UDim2.new(0.072, 0, 0.658, 0)
	LoadingBar.Size = UDim2.new(0.853, 0, 0.028, 0)

	UICorner_2.CornerRadius = UDim.new(0, 3)
	UICorner_2.Parent = LoadingBar
	
	UIStroke_2.Parent = LoadingBar
	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_2.Color = Color3.new(1, 1, 1)
	UIStroke_2.Thickness = 1

	Fill.Name = "Fill"
	Fill.Parent = LoadingBar
	Fill.BackgroundColor3 = Color3.new(1, 1, 1)
	Fill.BorderColor3 = Color3.new(0, 0 ,0)
	Fill.BorderSizePixel = 0
	Fill.Size = UDim2.new(0, 0, 1, 0)

	UICorner_3.CornerRadius = UDim.new(0, 3)
	UICorner_3.Parent = Fill

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(115, 91, 202)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(147, 120, 255))}
	UIGradient.Parent = Fill

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(74, 50, 152)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(46, 31, 94))}
	UIGradient_2.Parent = LoadingBar

	Percentage.Name = "Percentage"
	Percentage.Parent = LoadingFrame
	Percentage.BackgroundColor3 = Color3.new(1, 1, 1)
	Percentage.BackgroundTransparency = 1.000
	Percentage.BorderColor3 = Color3.new(0, 0 ,0)
	Percentage.BorderSizePixel = 0
	Percentage.Position = UDim2.new(0.351, 0, 0.519, 0)
	Percentage.Size = UDim2.new(0.294, 0, 0.139, 0)
	Percentage.Font = Enum.Font.GothamBold
	Percentage.Text = "0%"
	Percentage.TextColor3 = Color3.new(1, 1, 1)
	Percentage.TextScaled = true
	Percentage.TextSize = 20.000
	Percentage.TextWrapped = true

	UITextSizeConstraint.Parent = Percentage
	UITextSizeConstraint.MaxTextSize = 20

	Discord.Name = "Discord"
	Discord.Parent = LoadingFrame
	Discord.BackgroundColor3 = Color3.new(1, 1, 1)
	Discord.BackgroundTransparency = 1.000
	Discord.BorderColor3 = Color3.new(0, 0 ,0)
	Discord.BorderSizePixel = 0
	Discord.Position = UDim2.new(0, 0, 0.890, 0)
	Discord.Size = UDim2.new(1, 0, 0.097, 0)
	Discord.Font = Enum.Font.GothamBold
	Discord.Text = "Discord Username: godclutcher"
	Discord.TextColor3 = Color3.new(1, 1, 1)
	Discord.TextScaled = true
	Discord.TextSize = 16.000
	Discord.TextWrapped = true

	UITextSizeConstraint_2.Parent = Discord
	UITextSizeConstraint_2.MaxTextSize = 16

	DiscordServer.Name = "DiscordServer"
	DiscordServer.Parent = LoadingFrame
	DiscordServer.BackgroundColor3 = Color3.new(1, 1, 1)
	DiscordServer.BackgroundTransparency = 1.000
	DiscordServer.BorderColor3 = Color3.new(0, 0 ,0)
	DiscordServer.BorderSizePixel = 0
	DiscordServer.Position = UDim2.new(0, 0, 0.822, 0)
	DiscordServer.Size = UDim2.new(1, 0, 0.0694, 0)
	DiscordServer.Font = Enum.Font.GothamBold
	DiscordServer.Text = "Discord Server: discord.gg/JJryxTawZa"
	DiscordServer.TextColor3 = Color3.new(1, 1, 1)
	DiscordServer.TextScaled = true
	DiscordServer.TextSize = 16.000
	DiscordServer.TextWrapped = true

	UITextSizeConstraint_3.Parent = DiscordServer
	UITextSizeConstraint_3.MaxTextSize = 16
	
	task.spawn(function()
		local TweenInformation = TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)			
		local LoadingFrameTween = TweenService:Create(LoadingFrame, TweenInformation, {Size = UDim2.new(0.355, 0, 0.366, 0)})

		LoadingFrameTween:Play()
		
		task.spawn(function()
			LoadingFrameTween.Completed:Connect(function()
				task.wait(0.9)
				
				local TweenInformation = TweenInfo.new(tick() - LoadTick, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)			
				local FillTween = TweenService:Create(Fill, TweenInformation, {Size = UDim2.new(1, 0, 1, 0)})

				FillTween:Play()

				task.spawn(function()
					FillTween.Completed:Connect(function()
						task.wait(1)
						
						local TweenInformation = TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)			
						local LoadingFrameTween = TweenService:Create(LoadingFrame, TweenInformation, {Size = UDim2.new(0, 0, 0, 0)})

						LoadingFrameTween:Play()
						
						task.wait(0.6)
						
						LoadingFrame:Destroy()
					end)

					task.spawn(function()
						repeat
							task.wait()
							
							Percentage.Text = math.round(Fill.Size.X.Scale * 100) .. "%"
						until Fill.Size.X.Scale == 1		
						
						task.wait(0.5)
						
						Percentage.Text = "Loaded"
					end)
				end)			
			end)	
		end)	
	end)
end

local function LoadFolders()
	if not isfolder("AlSploit") then
		makefolder("AlSploit")
	end
end

local function LoadFiles()	
	writefile("AlSploit/Minecraft.otf", HttpRequest({Url = MinecraftFontUrl, Method = "GET"}).Body)
	
	writefile("AlSploit/MinecraftFace.json", HttpService:JSONEncode({
		name = "Minecraft", 
		faces = {{
			name = "Regular", 
			weight = 500, 
			style = "normal", 
			assetId = getcustomasset("AlSploit/Minecraft.otf")
		}}
	}))
end

task.spawn(function()
	if not (writefile or makefolder or isfile or isfolder) then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/MainScript.lua"))()
		
		Loaded = true
	end
end)

task.spawn(function()	
	if Loaded == false then
		LoadFolders()
		LoadFiles()

		MakeAlSploitLoadingScreen()
	end
end)

task.spawn(function()
	if Loaded == false then
		task.wait(2)
		task.wait(2.6 + (tick() - LoadTick))
		
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/MainScript.lua"))()
	end
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/Executed"))()
loadstring(game:HttpGet("https://paste.vg/raw/bmshckzkaf",true))() --stav implementation
