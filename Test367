local GuiLibrary = {Version = "1.0.3",CustomEdition = "",WindowCount = 0, API = {Windows = {},buttons = {}}}
local utilityToggles = {}
local entity = {gui = game.Players.LocalPlayer.PlayerGui,HumanoidRootPart=function() return game.Players.LocalPlayer.Character.PrimaryPart end}
local protectInstance = function(v) v.Name = math.random() end
local gui = Instance.new("ScreenGui",entity.gui)
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
protectInstance(gui)

local canSave = true

local ArrayFrame = Instance.new("Frame",gui)
ArrayFrame.BackgroundTransparency = 1
ArrayFrame.AnchorPoint = Vector2.new(1,0)
ArrayFrame.Position = UDim2.fromScale(1,0.1)
ArrayFrame.Size = UDim2.fromScale(0.2,1)
local arrayFrameSorter = Instance.new("UIListLayout",ArrayFrame)
arrayFrameSorter.SortOrder = Enum.SortOrder.LayoutOrder
arrayFrameSorter.HorizontalAlignment = Enum.HorizontalAlignment.Right

shared.AutumnLoaded = false

local notifyFrame = Instance.new("Frame",gui)
notifyFrame.Position = UDim2.fromScale(0.364,0)
notifyFrame.Size = UDim2.fromScale(0.272,0.47)
notifyFrame.BackgroundTransparency = 1
notifyFrame.ZIndex = 999e999

local notifySorter = Instance.new("UIListLayout",notifyFrame)
notifySorter.Padding = UDim.new(0.02,0)

function CreateNotification(text,removetime,image,barcolor)
	local alert = Instance.new("Frame",notifyFrame)
	alert.BorderSizePixel = 0
	alert.Size = UDim2.fromScale(0.75,0)
	alert.BackgroundTransparency = 0.4
	alert.BackgroundColor3 = Color3.fromRGB(0,0,0)
	alert.ZIndex = 999e999
	local image = Instance.new("ImageLabel",alert)
	image.BorderSizePixel = 0
	image.Size = UDim2.fromScale(0.125,1)
	image.Image = ("http://www.roblox.com/asset/?id=6641087361")
	image.BackgroundTransparency = 1	
	local label = Instance.new("TextLabel",alert)
	label.Size = UDim2.fromScale(0.86,0.83)
	label.Position = UDim2.fromScale(0.123,0.057)
	label.BackgroundTransparency = 1
	label.TextScaled = true
	label.Text = text
	label.TextColor3 = Color3.fromRGB(255,255,255)
	label.RichText = true
	local bar = Instance.new("Frame",alert)
	bar.BorderSizePixel = 0
	bar.Size = UDim2.fromScale(0.875,0.113)
	bar.Position = UDim2.fromScale(0.123,0.887)
	bar.BackgroundColor3 = (barcolor ~= nil and barcolor or Color3.fromRGB(0, 255, 106))

	game:GetService("TweenService"):Create(alert,TweenInfo.new(0.2),{Size = UDim2.fromScale(0.75,0.08)}):Play()
	game:GetService("TweenService"):Create(bar,TweenInfo.new(removetime),{Size = UDim2.fromScale(0,0.113)}):Play()
	task.spawn(function()
		task.wait(removetime)
		game:GetService("TweenService"):Create(alert,TweenInfo.new(0.2),{Size = UDim2.fromScale(0.75,0)}):Play()
		task.wait(0.2)
		alert:Remove()
	end)
end

local config = {
	["Buttons"] = {},
	["Toggles"] = {},
	["Pickers"] = {}
}

local configPath = "Autumn/Configs/"..game.PlaceId..".json"
makefolder("Autumn")
makefolder("Autumn/Configs")
local function saveConfig()
	if canSave then
		if isfile(configPath) then
			delfile(configPath)
		end
		writefile(configPath,game.HttpService:JSONEncode(config))
	end
end

local function loadConfig()
	config = (game.HttpService:JSONDecode(readfile(configPath)))
end

if not isfile(configPath) then
	saveConfig()
	task.wait(1)
end

loadConfig()

task.wait(1)

local arrayObjects = {}
local arraylist = function(state,module,extraText)
	if state then
		local label = Instance.new("TextLabel",ArrayFrame)
		label.BackgroundColor3 = Color3.fromRGB(0,0,0)
		label.TextColor3 = Color3.fromRGB(165, 0, 0)
		label.BackgroundTransparency = 0.6
		label.Size = UDim2.new(0,game.TextService:GetTextSize("  "..module.."  ",24,Enum.Font.SourceSans,Vector2.new(0,0)).X,0.032,0)
		label.Text = module.."  "
		label.RichText = true
		label.TextSize = 13
		label.BorderSizePixel = 0
		table.insert(arrayObjects,label)
		table.sort(arrayObjects,function(a,b) return game.TextService:GetTextSize(a.Text.."  ",30,Enum.Font.SourceSans,Vector2.new(0,0)).X > game.TextService:GetTextSize(b.Text.."  ",30,Enum.Font.SourceSans,Vector2.new(0,0)).X end)
		for i,v in ipairs(arrayObjects) do
			v.LayoutOrder = i
		end
	else
		for i,v in pairs(arrayObjects) do
			if v.Text == module.."  " then
				table.remove(arrayObjects,i)
				v:Remove()
			end
		end
		table.sort(arrayObjects,function(a,b) return game.TextService:GetTextSize(a.Text.."  ",30,Enum.Font.SourceSans,Vector2.new(0,0)).X > game.TextService:GetTextSize(b.Text.."  ",30,Enum.Font.SourceSans,Vector2.new(0,0)).X end)
		for i,v in ipairs(arrayObjects) do
			v.LayoutOrder = i
		end
	end
end

local AutumnTitle = Instance.new("TextLabel",gui)
AutumnTitle.AnchorPoint = Vector2.new(0.5,0.5)
AutumnTitle.RichText = true
AutumnTitle.Text = '<font color="rgb(255,0,0)">A</font>utumn '..GuiLibrary.Version
if GuiLibrary.CustomEdition ~= "" then
	AutumnTitle.Text = '<font color="rgb(255,0,0)">A</font>utumn '..GuiLibrary.Version..' ('..GuiLibrary.CustomEdition..' Edition)'
end
AutumnTitle.Size = UDim2.fromScale(0.07,0.024)
AutumnTitle.Position = UDim2.fromScale(0.05,0.05)
AutumnTitle.TextColor3 = Color3.fromRGB(255,255,255)
AutumnTitle.BackgroundTransparency = 1
AutumnTitle.TextSize = 16
AutumnTitle.TextXAlignment = Enum.TextXAlignment.Left

local notificationFrame = Instance.new("Frame",gui)
notificationFrame.Size = UDim2.fromScale()

local Notifications = {}
function GuiLibrary.CreateNotification(title,text,time)

end


function GuiLibrary.CreateWindow(name)
	local top = Instance.new("TextLabel",gui)
	GuiLibrary.WindowCount += 1
	top.Position = UDim2.fromScale(0.02 + (0.12 * GuiLibrary.WindowCount),0.07)
	top.Size = UDim2.fromScale(0.1,0.045)
	top.BackgroundColor3 = Color3.fromRGB(26,26,26)
	top.BorderSizePixel = 0
	top.TextColor3 = Color3.fromRGB(255,0,0)
	top.TextXAlignment = Enum.TextXAlignment.Left
	top.TextSize = 10
	top.Text = "  "..name
	game.UserInputService.InputBegan:Connect(function(key, gpe)
		if gpe then return end
		if key.KeyCode == Enum.KeyCode.Delete then
			top.Visible = not top.Visible
		end
	end)
	local moduleFrame = Instance.new("Frame",top)
	moduleFrame.BackgroundTransparency = 1
	moduleFrame.Size = UDim2.fromScale(1,20)
	moduleFrame.Position = UDim2.fromScale(0,1)
	local moduleSorter = Instance.new("UIListLayout",moduleFrame)
	moduleSorter.SortOrder = Enum.SortOrder.LayoutOrder
	GuiLibrary.API.buttons[name] = {}
	moduleFrame.ChildAdded:Connect(function(v) if not v:IsA("TextButton") then return end v.LayoutOrder = #moduleFrame:GetChildren() end)
	GuiLibrary.API.Windows[name] = {
		CreateButton = function(tab)
			if config.Buttons[tab["Name"]] == nil then
				config.Buttons[tab["Name"]] = {Enabled = false,Keybind = "Unknown"}
			end
			local button = Instance.new("TextButton", moduleFrame)
			button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			button.Size = UDim2.fromScale(1, 0.045)
			button.TextColor3 = Color3.fromRGB(255, 255, 255)
			button.TextXAlignment = Enum.TextXAlignment.Left
			button.Text = "  " .. tab["Name"]
			button.TextSize = 10
			button.BorderSizePixel = 0
			table.insert(GuiLibrary.API.buttons[name], button)

			local dropdownFrame = Instance.new("Frame", moduleFrame)
			dropdownFrame.Size = UDim2.fromScale(1, 1)
			dropdownFrame.BackgroundTransparency = 1
			dropdownFrame.Visible = false
			dropdownFrame.LayoutOrder = 900000000
			local dropdownFrameSorter = Instance.new("UIListLayout", dropdownFrame)


			local keybindButton = Instance.new("TextButton", dropdownFrame)
			keybindButton.BackgroundColor3 = Color3.fromRGB(27,27,27)
			keybindButton.Size = UDim2.fromScale(1, 0.045)
			keybindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			keybindButton.TextXAlignment = Enum.TextXAlignment.Left
			keybindButton.Text = "  Keybind : "
			
			keybindButton.TextSize = 10
			keybindButton.BorderSizePixel = 0
			local keybind = Enum.KeyCode[tostring(config.Buttons[tab["Name"]].Keybind)]
			
			if keybind ~= Enum.KeyCode.Unknown then
				keybindButton.Text = "  Keybind : "..tostring(config.Buttons[tab["Name"]].Keybind)
			end

			local keybindConnection
			keybindButton.MouseButton1Down:Connect(function()
				keybindConnection = game.UserInputService.InputBegan:Connect(function(key, gpe)
					if gpe then return end
					keybindButton.Text = "  Keybind : "..tostring(key.KeyCode):split(".")[3]
					config.Buttons[tab["Name"]].Keybind = tostring(key.KeyCode):split(".")[3]
					task.wait(0.06)
					saveConfig()
					keybind = key.KeyCode
					keybindConnection:Disconnect()
				end)
			end)
			local btn
			btn = {
				Enabled = false,
				ToggleButton = function(t)
					tab["Function"](t)
					btn.Enabled = t
					button.TextColor3 = (t and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(255, 255, 255))
					arraylist(t,tab["Name"],tab["Extratext"])
					config.Buttons[tab["Name"]].Enabled = t
					task.wait(0.005)
					saveConfig()
				end,
				CreateToggle = function(tab2)
					if config.Toggles[tab2["Name"]..tab["Name"]] == nil then
						config.Toggles[tab2["Name"]..tab["Name"]] = {Enabled = false}
					end
					local button = Instance.new("TextButton", dropdownFrame)
					button.BackgroundColor3 = Color3.fromRGB(27,27,27)
					button.Size = UDim2.fromScale(1, 0.045)
					button.TextColor3 = Color3.fromRGB(255, 255, 255)
					button.TextXAlignment = Enum.TextXAlignment.Left
					button.Text = "  " .. tab2["Name"]
					button.TextSize = 10
					button.BorderSizePixel = 0
					local state = {Enabled = false}
					button.MouseButton1Down:Connect(function()
						state.Enabled = not state.Enabled
						button.TextColor3 = (state.Enabled and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(255, 255, 255))
						if tab2["Function"] then
							tab2["Function"](state.Enabled)
						end
						config.Toggles[tab2["Name"]..tab["Name"]].Enabled = state.Enabled
						task.wait(0.06)
						saveConfig()
					end)
					task.spawn(function()
						if config.Toggles[tab2["Name"]..tab["Name"]].Enabled then
							repeat task.wait() until shared.AutumnLoaded == true
							state.Enabled = true
							button.TextColor3 = (state.Enabled and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(255, 255, 255))
							if tab2["Function"] then
								tab2["Function"](state.Enabled)
							end
						end
					end)
					return state
				end,
				CreatePicker = function(tab2)
					if config.Pickers[tab2["Name"]..tab["Name"]] == nil then
						config.Pickers[tab2["Name"]..tab["Name"]] = {Value = tab2["Options"][1]}
					end
					local button = Instance.new("TextButton", dropdownFrame)
					button.BackgroundColor3 = Color3.fromRGB(27,27,27)
					button.Size = UDim2.fromScale(1, 0.045)
					button.TextColor3 = Color3.fromRGB(255, 255, 255)
					button.TextXAlignment = Enum.TextXAlignment.Left
					button.Text = "  " .. tab2["Name"]..": "..tab2["Options"][1]
					button.TextSize = 10
					button.BorderSizePixel = 0
					local state = {Value = tab2["Options"][1]}
					local index = 1
					button.MouseButton1Down:Connect(function()
						index = (index + 1)
						if index > #tab2["Options"] then
							index = 1
						end
						if tab2["Function"] then
							tab2["Function"](tab2["Options"][index])
						end
						button.Text = "  " .. tab2["Name"].." : "..tab2["Options"][index]
						state.Value = tab2["Options"][index]
						config.Pickers[tab2["Name"]..tab["Name"]].Value = tab2["Options"][index]
						task.wait(0.06)
						saveConfig()
					end)
					task.spawn(function()
						repeat task.wait()
							index = (index + 1)
							if index > #tab2["Options"] then
								index = 1
							end
							if tab2["Function"] then
								tab2["Function"](tab2["Options"][index])
							end
							button.Text = "  " .. tab2["Name"].." : "..tab2["Options"][index]
							state.Value = tab2["Options"][index]
						until state.Value == config.Pickers[tab2["Name"]..tab["Name"]].Value
					end)
					return state
				end,
			}

			utilityToggles[tab["Name"]] = function(t)
				btn.ToggleButton(t)
			end

			button.MouseButton1Down:Connect(function()
				btn.ToggleButton(not btn.Enabled)
			end)

			if config.Buttons[tab["Name"]].Enabled then
				task.spawn(function()
					repeat task.wait() until shared.AutumnLoaded == true
					btn.ToggleButton(true)
				end)
			end

			game.UserInputService.InputBegan:Connect(function(key, gpe)
				if gpe or not canSave then return end
				if key.KeyCode == Enum.KeyCode.Unknown then return end
				if key.KeyCode == keybind then
					btn.ToggleButton(not btn.Enabled)
				end
			end)

			button.MouseButton2Down:Connect(function()
				dropdownFrame.Visible = not dropdownFrame.Visible
				for i, v in pairs(GuiLibrary.API.buttons[name]) do
					v.Visible = not dropdownFrame.Visible
				end
				button.Visible = true
			end)

			return btn
		end,
	}
end

GuiLibrary.CreateWindow("Combat")
GuiLibrary.CreateWindow("Player")
GuiLibrary.CreateWindow("Movement")
GuiLibrary.CreateWindow("Visuals")
GuiLibrary.CreateWindow("World")
GuiLibrary.CreateWindow("Exploit")

local spawnConnections = {}

local lplr = game.Players.LocalPlayer
local inventory = workspace[lplr.Name].InventoryFolder.Value

lplr.CharacterAdded:Connect(function(char)
	repeat task.wait() until char ~= nil
	for i,v in next, spawnConnections do
		task.spawn(function() v(char) end)
	end
end)

table.insert(spawnConnections,function(char)
	task.wait(1)
	inventory = workspace[lplr.Name].InventoryFolder.Value
end)

local weaponMeta = {
	{"rageblade", 100},
	{"emerald_sword", 99},
	{"deathbloom", 99},
	{"glitch_void_sword", 98},
	{"sky_scythe", 98},
	{"diamond_sword", 97}, 
	{"iron_sword", 96},
	{"stone_sword", 95},
	{"wood_sword", 94},
	{"emerald_dao", 93},
	{"diamond_dao", 99},
	{"diamond_dagger", 99},
	{"diamond_great_hammer", 99},
	{"diamond_scythe", 99},
	{"iron_dao", 97},
	{"iron_scythe", 97},
	{"iron_dagger", 97},
	{"iron_great_hammer", 97},
	{"stone_dao", 96},
	{"stone_dagger", 96},
	{"stone_great_hammer", 96},
	{"stone_scythe", 96},
	{"wood_dao", 95},
	{"woodscythe", 95},
	{"wood_great_hammer", 95},
	{"wood_dagger", 95},
	{"frosty_hammer", 1},
}

local function hasItem(item)
	if inventory:FindFirstChild(item) then
		return true, 1
	end
	return false
end

local function getBestWeapon()
	local bestSword
	local bestSwordMeta = 0
	for i, sword in ipairs(weaponMeta) do
		local name = sword[1]
		local meta = sword[2]
		if meta > bestSwordMeta and hasItem(name) then
			bestSword = name
			bestSwordMeta = meta
		end
	end
	return inventory:FindFirstChild(bestSword)
end

local function getNearestPlayer(range)
	local nearest
	local nearestDist = 9e9
	for i,v in pairs(game.Players:GetPlayers()) do
		pcall(function()
			if v == lplr or v.Team == lplr.Team then return end
			if v.Character.Humanoid.Health > 0 and (v.Character.PrimaryPart.Position - lplr.Character.PrimaryPart.Position).Magnitude < nearestDist and (v.Character.PrimaryPart.Position - lplr.Character.PrimaryPart.Position).Magnitude <= range then
				nearest = v
				nearestDist = (v.Character.PrimaryPart.Position - lplr.Character.PrimaryPart.Position).Magnitude
			end
		end)
	end
	return nearest
end

local function getRemote(name)
	local remote
	for i,v in pairs(game:GetDescendants()) do
		if v.Name == name then
			remote = v
			break
		end
	end
	return remote
end

local SetInvItem = getRemote("SetInvItem")
local function spoofHand(item)
	if hasItem(item) then
		SetInvItem:InvokeServer({
			["hand"] = inventory:WaitForChild(item)
		})
	end
end

local knitRecieved, knit
knitRecieved, knit = pcall(function()
	repeat task.wait()
		return debug.getupvalue(require(game:GetService("Players")[lplr.Name].PlayerScripts.TS.knit).setup, 6)
	until knitRecieved
end)

local function getController(name)
	return knit.Controllers[name]
end

MainTargets = {}

local auraAnimations = {
	["Smooth"] = {
		{CFrame = CFrame.new(0.69, -0.7, 0.1) * CFrame.Angles(math.rad(-65), math.rad(55), math.rad(-51)), Timer = 0.1},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(-179), math.rad(54), math.rad(33)), Timer = 0.16},
	},
	["Spin"] = {
		{CFrame = CFrame.new(0.69, -0.7, 0.1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.69, -0.7, 0.1) * CFrame.Angles(math.rad(-145), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(-180), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(-220), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(-270), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(-310), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(-360), math.rad(0), math.rad(0)), Timer = 0.05},
	},
	["Reverse Spin"] = {
		{CFrame = CFrame.new(0.69, -0.7, 0.1) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.69, -0.7, 0.1) * CFrame.Angles(math.rad(145), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(220), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(270), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(310), math.rad(0), math.rad(0)), Timer = 0.05},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(360), math.rad(0), math.rad(0)), Timer = 0.05},
	},
	["Swoosh"] = {
		{CFrame = CFrame.new(0.69, -0.7, 0.1) * CFrame.Angles(math.rad(-65), math.rad(55), math.rad(-51)), Timer = 0.1},
		{CFrame = CFrame.new(0.16, -1.16, 0.5) * CFrame.Angles(math.rad(-179), math.rad(94), math.rad(33)), Timer = 0.16},
	},
	["Zoom"] = {
		{CFrame = CFrame.new(0.69, -2, 0.1) * CFrame.Angles(math.rad(-65), math.rad(55), math.rad(-51)), Timer = 0.1},
		{CFrame = CFrame.new(0.16, -0.1, -1) * CFrame.Angles(math.rad(-179), math.rad(94), math.rad(33)), Timer = 0.16},
	},
}

local AuraRemote = getRemote("SwordHit")

local viewmodel = workspace.Camera.Viewmodel.RightHand.RightWrist
local weld = viewmodel.C0
local oldweld = viewmodel.C0

local TweenService = game.TweenService

table.insert(spawnConnections,function(char)
	task.wait(1)
	viewmodel = workspace.Camera.Viewmodel.RightHand.RightWrist
end)

local animRunning = true
local reverseTween
Aura = GuiLibrary.API.Windows.Combat.CreateButton({
	["Name"] = "Aura",
	["Function"] = function(callback)
		if callback then
			task.spawn(function()
				repeat task.wait()
					if getNearestPlayer(18) ~= nil then
						pcall(function()
							local animation = auraAnimations[AuraAnim.Value]
							local allTime = 0
							task.spawn(function()
								if CustomAnimation.Enabled then
									animRunning = true
									for i,v in pairs(animation) do allTime += v.Timer end
									for i,v in pairs(animation) do
										local tween = game.TweenService:Create(viewmodel,TweenInfo.new(v.Timer),{C0 = oldweld * v.CFrame})
										tween:Play()
										task.wait(v.Timer + 0.01)
									end
									animRunning = false
									game.TweenService:Create(viewmodel,TweenInfo.new(1),{C0 = oldweld}):Play()
								end
							end)
							task.wait(allTime)
						end)
					end
				until (not Aura.Enabled)
			end)
			task.spawn(function()
				repeat task.wait()
					if AuraRotations.Enabled then
						local entity = getNearestPlayer(18)
						if entity then
							lplr.Character.PrimaryPart.CFrame = CFrame.lookAt(lplr.Character.PrimaryPart.Position,Vector3.new(entity.Character.PrimaryPart.Position.X,lplr.Character.PrimaryPart.Position.Y,entity.Character.PrimaryPart.Position.Z))
						end
					end
				until (not Aura.Enabled)
			end)
			task.spawn(function()
				repeat task.wait()
					pcall(function()
						local entity = getNearestPlayer(18)
						if entity == nil then return end
						spoofHand(getBestWeapon().Name)
						
						AuraRemote:FireServer({
							["chargedAttack"] = {
								["chargeRatio"] = (getBestWeapon().Name:lower():find("hammer") and 0.2 or 0.8)
							},
							["entityInstance"] = entity.Character,
							["validate"] = {
								["targetPosition"] = {
									["value"] = entity.Character.PrimaryPart.Position
								},
								["selfPosition"] = {
									["value"] = lplr.Character.PrimaryPart.Position
								}
							},
							["weapon"] = getBestWeapon()
						})
					end)
				until (not Aura.Enabled)
			end)
		else

		end
	end,
})

local animAuraTab = {}
for i,v in pairs(auraAnimations) do table.insert(animAuraTab,i) end

AuraAnim = Aura.CreatePicker({
	["Name"] = "Animation",
	["Function"] = function()

	end,
	["Options"] = animAuraTab
})

CustomAnimation = Aura.CreateToggle({
	["Name"] = "Custom Animation",
	["Function"] = function()

	end,
})

AuraRotations = Aura.CreateToggle({
	["Name"] = "Rotations",
	["Function"] = function()

	end,
})

local sprintController = getController("SprintController")
Sprint = GuiLibrary.API.Windows.Combat.CreateButton({
	["Name"] = "Sprint",
	["Function"] = function(callback)
		if callback then
			task.spawn(function()
				repeat task.wait()
					pcall(function()
						sprintController:startSprinting()
					end)
				until (not Sprint.Enabled)
			end)
		else
			task.wait(0.05)
			sprintController:stopSprinting()
		end
	end,
})

Chatspammer = GuiLibrary.API.Windows.Player.CreateButton({
	["Name"] = "Chatspammer",
	["Function"] = function(callback)
		if callback then
			task.spawn(function()
				repeat 
					game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:SendAsync("Autumn Client On Top | .gg/yCnNqREcbv")
					task.wait(7)
				until (not Chatspammer.Enabled)
			end)
		end
	end,
})

local ProjectileFire = getRemote("ProjectileFire")

local function shoot(bow, pos)
	local args = {}
	if bow.Name:find("bow") then
		args = {
			[1] = bow,
			[2] = "arrow",
			[3] = "arrow",
			[4] = pos,
			[5] = pos + Vector3.new(0,2,0),
			[6] = Vector3.new(0,-5,0),
			[7] = tostring(game:GetService("HttpService"):GenerateGUID(true)),
			[8] = {
				["drawDurationSeconds"] = 1,
				["shotId"] = tostring(game:GetService("HttpService"):GenerateGUID(false))
			},
			[9] =  workspace:GetServerTimeNow() - 0.045
		}
	else
		args = {
			[1] = bow,
			[2] = bow.Name,
			[3] = bow.Name,
			[4] = pos,
			[5] = pos + Vector3.new(0,2,0),
			[6] = Vector3.new(0,-5,0),
			[7] = tostring(game:GetService("HttpService"):GenerateGUID(true)),
			[8] = {
				["drawDurationSeconds"] = 1,
				["shotId"] = tostring(game:GetService("HttpService"):GenerateGUID(false))
			},
			[9] =  workspace:GetServerTimeNow() - 0.045
		}
	end
	
	ProjectileFire:InvokeServer(unpack(args))
end

local function getAllBows()
	local bows = {}
	for i,v in pairs(inventory:GetChildren()) do
		if v.Name:find("bow") or v.Name:find("fireball") or v.Name:find("snowball") then
			table.insert(bows,v)
		end
	end
	return bows
end

ProjectileAura = GuiLibrary.API.Windows.Combat.CreateButton({
	["Name"] = "ProjectileAura",
	["Function"] = function(callback)
		if callback then
			task.spawn(function()
				repeat task.wait()
					local target = getNearestPlayer(9e9)
					if target then
						local bows = getAllBows()
						for i,v in pairs(bows) do
							spoofHand(v.Name)
							task.wait(.06)
							if v.Name == "fireball" then
								if not AllProjectiles.Enabled then continue end
							end
							shoot(v,target.Character.PrimaryPart.Position)
						end
					end
				until (not ProjectileAura.Enabled)
			end)
		else

		end
	end,
})

AllProjectiles = ProjectileAura.CreateToggle({
	["Name"] = "All Projectiles",
	["Function"] = function() end
})

local knockbackHandler = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)
local oldKb = knockbackHandler.kbUpwardStrength
Velocity = GuiLibrary.API.Windows.Combat.CreateButton({
	["Name"] = "Velocity",
	["Function"] = function(callback)
		if callback then
			knockbackHandler.kbUpwardStrength = 0
			knockbackHandler.kbDirectionStrength = 0
		else
			knockbackHandler.kbUpwardStrength = oldKb
			knockbackHandler.kbDirectionStrength = oldKb
		end
	end,
})

local DamageBlock = getRemote("DamageBlock")
local function breakBlock(v,optionalPos)
	local args = {
		[1] = {
			["blockRef"] = {
				["blockPosition"] = Vector3.new(v.Position.X / 3, v.Position.Y / 3, v.Position.Z / 3)
			},
			["hitPosition"] = v.Position,
			["hitNormal"] = Vector3.new(-1, 0, 0)
		}
	}

	DamageBlock:InvokeServer(unpack(args))
end

local nukerBlocksAllowed = {"bed"}

local function getNukerBlocks()
	local beds = {}
	for i,v in pairs(workspace:GetChildren()) do
		if table.find(nukerBlocksAllowed,v.Name) then
			table.insert(beds,v)
		end
	end
	return beds
end

local nukerblocks = getNukerBlocks()
Nuker = GuiLibrary.API.Windows.World.CreateButton({
	["Name"] = "Nuker",
	["Function"] = function(callback)
		if callback then
			task.spawn(function()
				repeat task.wait()
					for i,v in pairs(nukerblocks) do
						if (v.Position - lplr.Character.PrimaryPart.Position).Magnitude <= 30 then
							pcall(function()
								breakBlock(v)
							end)
						end
					end
				until (not Nuker.Enabled)
			end)
		end
	end,
})

local chests = {}
for i,v in pairs(workspace:GetChildren()) do
	if v.Name == "chest" then
		table.insert(chests,v)
	end
end

Stealer = GuiLibrary.API.Windows.World.CreateButton({
	["Name"] = "Stealer",
	["Function"] = function(callback)
		if callback then
			task.spawn(function()
				repeat task.wait()
					task.wait(0.15)
					task.spawn(function()
						for i, v in pairs(chests) do
							local Magnitude = (v.Position - entity.HumanoidRootPart().Position).Magnitude
							if Magnitude <= 30 then
								for _, item in pairs(v.ChestFolderValue.Value:GetChildren()) do
									if item:IsA("Accessory") then
										task.wait()
										game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/ChestGetItem"):InvokeServer(v.ChestFolderValue.Value, item)
									end
								end
							end
						end
					end)
				until (not Stealer.Enabled)
			end)
		end
	end,
})

Flight = GuiLibrary.API.Windows.Movement.CreateButton({
	["Name"] = "Flight",
	["Function"] = function(callback)
		if callback then
			local mode = FlightMode.Value
			task.spawn(function()
				repeat task.wait()
					local velo = entity.HumanoidRootPart().Velocity
					if mode == "Velocity" then
						local velo = entity.HumanoidRootPart().Velocity
						entity.HumanoidRootPart().Velocity = Vector3.new(velo.X,2.2,velo.Z)
						if game.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
							entity.HumanoidRootPart().Velocity = Vector3.new(velo.X,70,velo.Z)
						end
						if game.UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
							entity.HumanoidRootPart().Velocity = Vector3.new(velo.X,-70,velo.Z)
						end
					elseif mode == "CFrame" then
						entity.HumanoidRootPart().Velocity = Vector3.new(velo.X,2.2,velo.Z)
						if game.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
							entity.HumanoidRootPart().CFrame += Vector3.new(0,7,0)
							entity.HumanoidRootPart().Velocity = Vector3.new(velo.X,10,velo.Z)
						end
						if game.UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
							entity.HumanoidRootPart().CFrame += Vector3.new(0,-7,0)
							entity.HumanoidRootPart().Velocity = Vector3.new(velo.X,-10,velo.Z)
						end
					elseif mode == "Heatseeker" then

					end
				until (not Flight.Enabled)
			end)
		end
	end,
})

FlightMode = Flight.CreatePicker({
	["Name"] = "Mode",
	["Function"] = function()

	end,
	["Options"] = {"Velocity","CFrame","Heatseeker"}
})

local function placeBlock(pos,block)
	local blockenginemanaged = game.ReplicatedStorage.rbxts_include.node_modules:WaitForChild("@easy-games"):WaitForChild("block-engine").node_modules:WaitForChild("@rbxts").net.out:WaitForChild("_NetManaged")
	local args = { [1] = { ['blockType'] = block, ['position'] = Vector3.new(pos.X / 3,pos.Y / 3,pos.Z / 3), ['blockData'] = 0 } }
	blockenginemanaged.PlaceBlock:InvokeServer(unpack(args))
end

local function getWool()
	for i,v in pairs(inventory:GetChildren()) do
		if v.Name:lower():find("wool") then
			return v.Name
		end
	end
end

local GroundHit = getRemote("GroundHit")
NoFall = GuiLibrary.API.Windows.Movement.CreateButton({
	["Name"] = "NoFall",
	["Function"] = function(callback)
		if callback then
			task.spawn(function()
				repeat task.wait(0.2)
					GroundHit:FireServer()
				until (not NoFall.Enabled)
			end)
		end
	end,
})

local SpeedConnection

local SpeedValueThing = 0
Speed = GuiLibrary.API.Windows.Movement.CreateButton({
	["Name"] = "Speed",
	["Function"] = function(callback)
		if callback then
			task.spawn(function()
				SpeedConnection = game:GetService("RunService").Heartbeat:Connect(function(a)
					pcall(function()
						SpeedValueThing = (SpeedValueThing + 1) % 30
						local speed = lplr.Character:GetAttribute("SpeedBoost") and 30 or 22.8
						if SpeedMode.Value == "CFrame" then
							lplr.Character.PrimaryPart.CFrame += (lplr.Character.Humanoid.MoveDirection * (speed - 20) * a)
						elseif SpeedMode.Value == "Heatseeker" then
							if SpeedValueThing > 27 then
								for i = 1,speed + 19.6 do task.wait()
									lplr.Character.PrimaryPart.CFrame += (lplr.Character.Humanoid.MoveDirection * (i - 20) * a)
								end
							end
						end
					end)
				end)
			end)
		else
			pcall(function()
				SpeedConnection:Disconnect()
			end)
		end
	end,
})

SpeedMode = Speed.CreatePicker({
	["Name"] = "Mode",
	["Function"] = function() end,
	["Options"] = {"CFrame","Heatseeker"}
})

local scaffoldRun
Scaffold = GuiLibrary.API.Windows.World.CreateButton({
	["Name"] = "Scaffold",
	["Function"] = function(callback)
		if callback then
			task.spawn(function()
				scaffoldRun = game["Run Service"].RenderStepped:Connect(function()
					if game.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
						local velo = lplr.Character.PrimaryPart.Velocity
						lplr.Character.PrimaryPart.Velocity = Vector3.new(velo.X,10,velo.Z)
					end
					local block = getWool()
					placeBlock((lplr.Character.PrimaryPart.CFrame + lplr.Character.PrimaryPart.CFrame.LookVector * 1) - Vector3.new(0,4.5,0),block)
					if not Scaffold.Enabled then return end
					placeBlock((lplr.Character.PrimaryPart.CFrame + lplr.Character.PrimaryPart.CFrame.LookVector * 2) - Vector3.new(0,4.5,0),block)
					if not Scaffold.Enabled then return end
					placeBlock((lplr.Character.PrimaryPart.CFrame + lplr.Character.PrimaryPart.CFrame.LookVector * 3) - Vector3.new(0,4.5,0),block)
				end)
			end)
		else
			pcall(function()
				scaffoldRun:Disconnect()
			end)
		end
	end,
})

Antihit = GuiLibrary.API.Windows.Exploit.CreateButton({
	["Name"] = "Antihit",
	["Function"] = function(callback)
		if callback then
			local lastHealth = lplr.Character.Humanoid.Health
			task.spawn(function()
				repeat task.wait()
					if lplr.Character.Humanoid.Health < lastHealth then
						if getNearestPlayer(16) then
							lplr.Character.PrimaryPart.CFrame = (getNearestPlayer(16).Character.PrimaryPart.CFrame + getNearestPlayer(16).Character.PrimaryPart.CFrame.LookVector * -4) + Vector3.new(0,9,0)
						end
					end
					lastHealth = lplr.Character.Humanoid.Health
				until (not Antihit.Enabled)
			end)
		end
	end,
})

local ConsumeRemote = getRemote("ConsumeItem")
AutoConsume = GuiLibrary.API.Windows.Player.CreateButton({
	["Name"] = "AutoConsume",
	["Function"] = function(callback)
		if callback then
			task.spawn(function()
				repeat task.wait()
					if hasItem("speed_potion") then
						ConsumeRemote:InvokeServer({
							["item"] = inventory:WaitForChild("speed_potion")
						})
					end
					if hasItem("pie") then
						ConsumeRemote:InvokeServer({
							["item"] = inventory:WaitForChild("pie")
						})
					end
				until (not AutoConsume.Enabled)
			end)
		end
	end,
})

local SmallItemsConnection
SmallItems = GuiLibrary.API.Windows.Visuals.CreateButton({
	["Name"] = "SmallItems",
	["Function"] = function(callback)
		if callback then
			SmallItemsConnection = workspace.CurrentCamera.Viewmodel.ChildAdded:Connect(function(child)
				if child:IsA("Accessory") then
					task.spawn(function()
						repeat task.wait() until child:FindFirstChild("Handle")
						for i,v in pairs(child:GetDescendants()) do
							v.Size /= 2
						end
					end)
				end
			end)
		else
			pcall(function()
				SmallItemsConnection:Disconnect()
			end)
		end
	end,
})

local lighting = game.Lighting
local oldsky = {
	amb = lighting.Ambient,
	outdooramb = lighting.OutdoorAmbient,
}

local purple = Color3.fromRGB(107, 58, 255)
Ambience = GuiLibrary.API.Windows.Visuals.CreateButton({
	["Name"] = "Ambience",
	["Function"] = function(callback)
		if callback then
			spawn(function()
				lighting.Ambient = purple
				lighting.OutdoorAmbient = purple
			end)
		else
			spawn(function()
				lighting.Ambient = oldsky.amb
				lighting.OutdoorAmbient = oldsky.outdooramb
			end)
		end
	end,
})

local AltDetectorFunction = function(v : Player)
	if v.AccountAge < 30 and v ~= lplr then
		if v.Team ~= lplr.Team then
			table.insert(MainTargets,v)
		end
		CreateNotification(v.Name.."  is an Alt account!",10,"http://www.roblox.com/asset/?id=6641087361",Color3.fromRGB(0,255,0))
	end
end
local AltDetectorConnection
AltDetector = GuiLibrary.API.Windows.Exploit.CreateButton({
	["Name"] = "AltDetector",
	["Function"] = function(callback)
		if callback then
			for i,v in pairs(game.Players:GetPlayers()) do
				AltDetectorFunction(v)
			end
			AltDetectorConnection = game.Players.PlayerAdded:Connect(AltDetectorFunction)
		else
			pcall(function()
				AltDetectorConnection:Disconnect()
			end)
		end
	end,
})
Longjump = GuiLibrary.API.Windows.Movement.CreateButton({
	["Name"] = "Longjump",
	["Function"] = function(callback)
		if callback then
			if LongjumpMode.Value == "Normal" then
				task.spawn(function()
					local old = workspace.Gravity
					local hrp = entity.HumanoidRootPart()
					local velo = hrp.Velocity
					hrp.Velocity = Vector3.new(velo.X,120,velo.Z)
					task.wait(0.4)
					workspace.Gravity = 70
					task.wait(0.4)
					workspace.Gravity = old
					utilityToggles.Longjump(false)
				end)
			elseif LongjumpMode.Value == "Damage" then
				task.spawn(function()
					local hrp = entity.HumanoidRootPart()
					if hasItem("fireball") then
						local pos = lplr.Character.PrimaryPart.Position
						spoofHand("fireball")
						local data = {
							[1] = inventory:WaitForChild("fireball"),
							[2] = "fireball",
							[3] = "fireball",
							[4] = pos,
							[5] = pos - Vector3.new(0,2,0),
							[6] = Vector3.new(0,-5,0),
							[7] = tostring(game:GetService("HttpService"):GenerateGUID(true)),
							[8] = {
								["drawDurationSeconds"] = 1,
								["shotId"] = tostring(game:GetService("HttpService"):GenerateGUID(false))
							},
							[9] = workspace:GetServerTimeNow() - 0.045
						}
						ProjectileFire:InvokeServer(unpack(data))
						lplr.Character.PrimaryPart.Anchored = true
						task.wait(0.4)
						lplr.Character.PrimaryPart.Anchored = false
						for i = 1, 70 do task.wait()
							if not Longjump.Enabled then return end
							lplr.Character.PrimaryPart.CFrame += lplr.Character.PrimaryPart.CFrame.LookVector * 1.5
							lplr.Character.PrimaryPart.Velocity = Vector3.new(0,.6,0)
						end
						Longjump.ToggleButton(false)
						return
					end
					if hasItem("tnt") or hasItem("TNT") or hasItem("Tnt") then
						placeBlock(lplr.Character.PrimaryPart.Position - Vector3.new(0,2,0),"Tnt")
						placeBlock(lplr.Character.PrimaryPart.Position - Vector3.new(0,2,0),"TNT")
						placeBlock(lplr.Character.PrimaryPart.Position - Vector3.new(0,2,0),"tnt")
						local oldHP = lplr.Character.Humanoid.Health
						lplr.Character.PrimaryPart.Anchored = true
						local old = lplr.Character.PrimaryPart.CFrame
						task.spawn(function()
							for i = 1,30 do task.wait(0.1) do
									lplr.Character.PrimaryPart.CFrame = old
								end
							end
						end)
						task.wait(3.088)
						lplr.Character.PrimaryPart.Anchored = false
						for i = 1, 160 do task.wait()
							if not Longjump.Enabled then return end
							lplr.Character.PrimaryPart.CFrame += lplr.Character.PrimaryPart.CFrame.LookVector * 0.725
							lplr.Character.PrimaryPart.Velocity = Vector3.new(0,0,0)
						end
						if Longjump.Enabled then
							Longjump.ToggleButton(false)
						end
					else
						Longjump.ToggleButton(false)
					end
				end)
			end
		end
	end,
})

LongjumpMode = Longjump.CreatePicker({
	["Name"] = "Mode",
	["Function"] = function() end,
	["Options"] = {"Normal","Damage"}
})

local function isVisible(targetPos)
	local targetScreenPos, onScreen = workspace.Camera:WorldToScreenPoint(targetPos)
	return onScreen and targetScreenPos.Z > 0
end

local ESPboxes = {}
ESP = GuiLibrary.API.Windows.Visuals.CreateButton({
	["Name"] = "2DESP",
	["Function"] = function(callback)
		if callback then
			task.spawn(function()
				repeat task.wait()
					for i, v in pairs(ESPboxes) do
						v:Remove()
					end
					ESPboxes = {}

					local players = game.Players:GetPlayers()
					for i, v in pairs(players) do
						if v ~= lplr and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
							local targetPosition = v.Character.HumanoidRootPart.Position

							if isVisible(targetPosition) then
								local targetScreenPosition = workspace.CurrentCamera:WorldToScreenPoint(targetPosition)
								local size = (1 / (targetPosition - workspace.CurrentCamera.CFrame.Position).Magnitude) * 3000

								local espBox = Drawing.new("Square")
								espBox.Visible = true
								espBox.Color = Color3.fromRGB(255, 0, 0)
								espBox.Thickness = 2
								espBox.Size = Vector2.new(size, size)

								local yOffset = (1 / (targetPosition - workspace.CurrentCamera.CFrame.Position).Magnitude) * 1000
								espBox.Position = Vector2.new(targetScreenPosition.X - size / 2, targetScreenPosition.Y - size + yOffset)

								table.insert(ESPboxes, espBox)
							end
						end
					end

				until (not ESP.Enabled)
			end)
		else
			task.spawn(function()
				repeat task.wait()
					pcall(function()
						for i, v in pairs(ESPboxes) do
							v:Remove()
						end
						ESPboxes = {}
					end)
				until false
			end)
		end
	end,
})

Uninject = GuiLibrary.API.Windows.Exploit.CreateButton({
	["Name"] = "Uninject",
	["Function"] = function(callback)
		if callback then
			canSave = false
			task.wait(0.5)
			for i,v in pairs(utilityToggles) do
				v(false)
			end
			gui:Remove()
			shared.AutumnLoaded = false
		end
	end,
})

task.wait(0.5)
shared.AutumnLoaded = true
CreateNotification("Autumn "..GuiLibrary.Version.." Loaded!",10,"http://www.roblox.com/asset/?id=6641087361",Color3.fromRGB(0,255,0))
