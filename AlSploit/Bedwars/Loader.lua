local LocalPlayer = game.Players.LocalPlayer 

local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")

local MinecraftFontUrl = "https://github.com/AlSploit/AlSploit/raw/main/AlSploit/Fonts/MinecraftFont"
local HttpRequest = request or http_request

local LoadTick = tick()

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
	LoadingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadingFrame.BorderSizePixel = 0
	LoadingFrame.Position = UDim2.new(0.322303236, 0, 0.280487806, 0)
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
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.000605325156, 0, 0.02233251, 0)
	Title.Size = UDim2.new(0.998529434, 0, 0.663888872, 0)
	Title.Image = "rbxassetid://17100452624"
	Title.ScaleType = Enum.ScaleType.Fit

	LoadingBar.Name = "LoadingBar"
	LoadingBar.Parent = LoadingFrame
	LoadingBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadingBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadingBar.BorderSizePixel = 0
	LoadingBar.Position = UDim2.new(0.0720588267, 0, 0.658333361, 0)
	LoadingBar.Size = UDim2.new(0.852941155, 0, 0.027777778, 0)

	UICorner_2.CornerRadius = UDim.new(0, 3)
	UICorner_2.Parent = LoadingBar
	
	UIStroke_2.Parent = LoadingBar
	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_2.Color = Color3.new(1, 1, 1)
	UIStroke_2.Thickness = 1

	Fill.Name = "Fill"
	Fill.Parent = LoadingBar
	Fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
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
	Percentage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Percentage.BackgroundTransparency = 1.000
	Percentage.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Percentage.BorderSizePixel = 0
	Percentage.Position = UDim2.new(0.35147059, 0, 0.519444466, 0)
	Percentage.Size = UDim2.new(0.294117659, 0, 0.138888896, 0)
	Percentage.FontFace = Font.new(getcustomasset("AlSploit/Fonts/MinecraftFace.json"))
	Percentage.Text = "0%"
	Percentage.TextColor3 = Color3.fromRGB(255, 255, 255)
	Percentage.TextScaled = true
	Percentage.TextSize = 20.000
	Percentage.TextWrapped = true

	UITextSizeConstraint.Parent = Percentage
	UITextSizeConstraint.MaxTextSize = 20

	Discord.Name = "Discord"
	Discord.Parent = LoadingFrame
	Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Discord.BackgroundTransparency = 1.000
	Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Discord.BorderSizePixel = 0
	Discord.Position = UDim2.new(0, 0, 0.889999986, 0)
	Discord.Size = UDim2.new(0.998529434, 0, 0.0972222239, 0)
	Discord.FontFace = Font.new(getcustomasset("AlSploit/Fonts/MinecraftFace.json"))
	Discord.Text = "Discord Username: godclutcher"
	Discord.TextColor3 = Color3.fromRGB(255, 255, 255)
	Discord.TextScaled = true
	Discord.TextSize = 16.000
	Discord.TextWrapped = true

	UITextSizeConstraint_2.Parent = Discord
	UITextSizeConstraint_2.MaxTextSize = 16

	DiscordServer.Name = "DiscordServer"
	DiscordServer.Parent = LoadingFrame
	DiscordServer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DiscordServer.BackgroundTransparency = 1.000
	DiscordServer.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DiscordServer.BorderSizePixel = 0
	DiscordServer.Position = UDim2.new(0.00147058826, 0, 0.822222233, 0)
	DiscordServer.Size = UDim2.new(1, 0, 0.0694444478, 0)
	DiscordServer.FontFace = Font.new(getcustomasset("AlSploit/Fonts/MinecraftFace.json"))
	DiscordServer.Text = "Discord Server: discord.gg/JJryxTawZa"
	DiscordServer.TextColor3 = Color3.fromRGB(255, 255, 255)
	DiscordServer.TextScaled = true
	DiscordServer.TextSize = 16.000
	DiscordServer.TextWrapped = true

	UITextSizeConstraint_3.Parent = DiscordServer
	UITextSizeConstraint_3.MaxTextSize = 16
	
	task.spawn(function()
		local TweenInformation = TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)			
		local LoadingFrameTween = TweenService:Create(LoadingFrame, TweenInformation, {Size = UDim2.new(0.355393529, 0, 0.365853667, 0)})

		LoadingFrameTween:Play()
		
		task.spawn(function()
			LoadingFrameTween.Completed:Connect(function()
				task.wait(0.9)
				
				print(tick() - LoadTick)

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
	
	if not isfolder("AlSploit/Bedwars") then
		makefolder("AlSploit/Bedwars")
	end
	
	if not isfolder("AlSploit/Fonts") then
		makefolder("AlSploit/Fonts")
	end
end

local function LoadFiles()
	if not isfile("AlSploit/Fonts/Minecraft.otf") then
		writefile("AlSploit/Fonts/Minecraft.otf", HttpRequest({Url = MinecraftFontUrl, Method = "GET"}).Body)
	end
	
	if not isfile("AlSploit/Fonts/MinecraftFont.json") then		
		writefile("AlSploit/Fonts/MinecraftFont.json", HttpService:JSONEncode({name = "Minecraft", faces = {{name = "Regular", weight = 300, style = "normal", assetId = getcustomasset("AlSploit/Fonts/Minecraft.otf")}}}))
		writefile("AlSploit/Fonts/MinecraftFont.json", HttpService:JSONEncode({name = 'Minecraft', faces = {{name = "Regular", weight = 300, style = "normal", AssetId = getcustomasset("Fonts/Minecraft.otf")}}}))
	end
end

task.spawn(function()	
	task.spawn(function()
		LoadFolders()
		LoadFiles()

		MakeAlSploitLoadingScreen()
	end)
	
	task.spawn(function()
		task.wait(2)
		task.wait(2.6 + (tick() - LoadTick))
		
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/MainScript.lua"))()
	end)
end)
