�ку для открытия нового меню
	
	local menus = {}
	local lastButton 
	local mainMenu = groupsCanvas:FindFirstChild("Main")
	local mainHidden = false 
	
	-- Заполняем таблицу menus
	for _, menu in pairs(groupsCanvas:GetChildren()) do
		if menu:IsA("CanvasGroup") then
			menus[menu.Name] = menu
			menu.Visible = (menu.Name == "Main")
			menu.Position = UDim2.new(0.5, 0, 0.5, 0)
		end
	end
	
	local function showMenu(menuName)
		if not menus[menuName] then return end
	
		if mainMenu and not mainHidden then
			mainMenu.Visible = false
			mainHidden = true
		end
	
		local currentMenu
		for _, menu in pairs(menus) do
			if menu.Visible then
				currentMenu = menu
				break
			end
		end
	
		local function disableButtons(container)
			for _, button in pairs(container:GetDescendants()) do
				if button:IsA("TextButton") then
					button.Interactable = false
				end
			end
		end
		disableButtons(buttonsCanvas)
	
		if currentMenu then
			local hideTween = TweenService:Create(currentMenu, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(1.6, 0, 0.5, 0)})
			hideTween:Play()
			hideTween.Completed:Wait()
			currentMenu.Visible = false
		end
	
		local newMenu = menus[menuName]
		newMenu.Visible = true
		newMenu.Position = UDim2.new(-1.6, 0, 0.5, 0)  
	
		local showTween = TweenService:Create(newMenu, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 0.5, 0)})
		showTween:Play()
		showTween.Completed:Wait()
	
		local function enableButtons(container)
			for _, button in pairs(container:GetDescendants()) do
				if button:IsA("TextButton") then
					button.Interactable = true
				end
			end
		end
		enableButtons(buttonsCanvas)
	end
	
	local function updateButtonVisuals(button)
		if lastButton and lastButton ~= button then
			local lastModeText = lastButton:FindFirstChild("Mode")
			local lastButtonImage = lastButton:FindFirstChild("Image")
			if lastModeText and lastModeText:IsA("TextLabel") then
				lastModeText.TextColor3 = Color3.new(0.49, 0.49, 0.48)
			end
			if lastButtonImage and lastButtonImage:IsA("ImageLabel") then
				lastButtonImage.ImageColor3 = Color3.new(0.49, 0.49, 0.48)
			end
		end
	
		local modeText = button:FindFirstChild("Mode")
		local buttonImage = button:FindFirstChild("Image")
	
		if modeText and modeText:IsA("TextLabel") then
			modeText.TextColor3 = Color3.new(1, 1, 1)
		end
	
		if buttonImage and buttonImage:IsA("ImageLabel") then
			buttonImage.ImageColor3 = Color3.new(1, 1, 1)
		end
	
		lastButton = button
	end
	
	local function connectButtons(container)
		for _, button in pairs(container:GetDescendants()) do
			if button:IsA("TextButton") and menus[button.Name] then
				button.MouseButton1Click:Connect(function()
					updateButtonVisuals(button)
					showMenu(button.Name)
				end)
			end
		end
	end
	
	local aimBot = buttonsCanvas:FindFirstChild("AimBot")
	local visuals = buttonsCanvas:FindFirstChild("Visual")
	
	if aimBot then connectButtons(aimBot) end
	if visuals then connectButtons(visuals) end
	
	-- Подключаем кнопку "MenuOpen" к новой менюшке "Menu"
	if menuOpenButton then
		menuOpenButton.MouseButton1Click:Connect(function()
			showMenu("Menu")
		end)
	end
	
end;
task.spawn(C_5);
-- StarterGui.EclipseEngine.Main.EclipseLogo.UIGradient.LocalScript
local function C_8()
local script = G2L["8"];
	local TweenService = game:GetService("TweenService")
	local gradient = script.Parent
	
	local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true)
	local tween = TweenService:Create(gradient, tweenInfo, {Rotation = 360})
	
	tween:Play()
	
end;
task.spawn(C_8);
-- StarterGui.EclipseEngine.Main.Optimizations.Borders
local function C_a()
local script = G2L["a"];
	-- Made by @ItsCaelmYt
	
	for i, v in pairs(script.Parent.Parent:GetDescendants()) do
	
		if v:IsA("UIStroke") then
	
			local BASE_SIZE = 1700
	
			local uiStroke = v
			local initialStrokeThickness = uiStroke.Thickness
			local camera = game:GetService("Workspace").CurrentCamera
	
			local function updateStrokeThickness()
				uiStroke.Thickness = initialStrokeThickness * camera.ViewportSize.X / BASE_SIZE
			end
	
			camera:GetPropertyChangedSignal("ViewportSize"):Connect(updateStrokeThickness)
			updateStrokeThickness()
	
		end
	
	end
end;
task.spawn(C_a);
-- StarterGui.EclipseEngine.Main.Groups.Legit.LegitBotek.FriendList.UIStroke.UIGradient.LocalScript
local function C_39()
local script = G2L["39"];
	local TweenService = game:GetService("TweenService")
	local gradient = script.Parent
	
	local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true)
	local tween = TweenService:Create(gradient, tweenInfo, {Rotation = 360})
	
	tween:Play()
	
end;
task.spawn(C_39);
-- StarterGui.EclipseEngine.Main.Groups.Legit.LegitBotek.TextLabel.Tween
local function C_3c()
local script = G2L["3c"];
	local TweenService = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	local goal = {ImageTransparency = 0}
	local goal2 = {ImageTransparency = 1}
	local object = script.Parent.Effect
	
	local poyavlenie = TweenService:Create(object, tweeninfo, goal)
	local izchez = TweenService:Create(object, tweeninfo, goal2)
	local db = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if db == false then
			db = true
			poyavlenie:Play()
		else
			db = false
			izchez:Play()
		end
	end)
	
end;
task.spawn(C_3c);
-- StarterGui.EclipseEngine.Main.Groups.Legit.LegitBotek.TextLabel.Main
local function C_3d()
local script = G2L["3d"];
	local UIS = game.UserInputService
	local camera = game.Workspace.CurrentCamera
	local TS = game.TweenService
	local tweeninfo = TweenInfo.new(0.25)
	local aimButton = script.Parent -- Предполагаем, что кнопка находится в том же скрипте
	_G.aim = false
	
	function getClosest()
		local closestDistance = math.huge
		local closestPlayer = nil
		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Team ~= game.Players.LocalPlayer.Team then
				if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
					local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
					if distance < closestDistance then
						closestDistance = distance
						closestPlayer = v
					end
				end
			end
		end
		return closestPlayer
	end
	
	local function toggleAimbot()
		_G.aim = not _G.aim
		if _G.aim then
			while _G.aim do
				local target = getClosest()
				if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
					local tween = TS:Create(camera, tweeninfo, {CFrame = CFrame.new(camera.CFrame.Position, target.Character.HumanoidRootPart.Position)})
					tween:Play()
				end
				task.wait()
			end
		end
	end
	
	aimButton.MouseButton1Click:Connect(toggleAimbot)
	
end;
task.spawn(C_3d);
-- StarterGui.EclipseEngine.Main.Groups.Players.LegitBotek.TextLabel.Tween
local function C_4e()
local script = G2L["4e"];
	local TweenService = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	local goal = {ImageTransparency = 0}
	local goal2 = {ImageTransparency = 1}
	local object = script.Parent.Effect
	
	local poyavlenie = TweenService:Create(object, tweeninfo, goal)
	local izchez = TweenService:Create(object, tweeninfo, goal2)
	local db = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if db == false then
			db = true
			poyavlenie:Play()
		else
			db = false
			izchez:Play()
		end
	end)
	
end;
task.spawn(C_4e);
-- StarterGui.EclipseEngine.Main.Groups.Players.LegitBotek.TextLabel.ESP
local function C_51()
local script = G2L["51"];
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	local camera = workspace.CurrentCamera
	
	local highlightButton = script.Parent
	local WallHackSettings = script.Parent.Parent.Parent.WallHackSettings
	local redButton = WallHackSettings.List.RedButton
	local greenButton = WallHackSettings.List.GreenButton
	local blueButton = WallHackSettings.List.BlueButton
	local yellowButton = WallHackSettings.List.YellowButton
	local cyanButton = WallHackSettings.List.CyanButton
	local orangeButton = WallHackSettings.List.OrangeButton
	
	local selectedColor = Color3.new(1, 0, 0)
	local highlightEnabled = false
	
	function applyHighlight(targetPlayer)
		if targetPlayer.Character then
			-- Получаем точку крепления
			local attachPoint = targetPlayer.Character:FindFirstChild("Head") or targetPlayer.Character.PrimaryPart
			if not attachPoint then return end
	
			-- Работа с подсветкой
			local highlight = targetPlayer.Character:FindFirstChild("Highlight")
			if not highlight then
				highlight = Instance.new("Highlight")
				highlight.Parent = targetPlayer.Character
			end
			highlight.FillColor = selectedColor
			highlight.OutlineColor = Color3.new(1, 1, 1)
			highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	
			-- Работа с NameTag
			local billboard = attachPoint:FindFirstChild("NameTag")
			if not billboard then
				billboard = Instance.new("BillboardGui")
				billboard.Name = "NameTag"
				billboard.Size = UDim2.new(0, 100, 0, 50)
				billboard.StudsOffset = Vector3.new(0, 2, 0)
				billboard.AlwaysOnTop = true
				billboard.Parent = attachPoint
	
				local nameLabel = Instance.new("TextLabel")
				nameLabel.Size = UDim2.new(1, 0, 1, 0)
				nameLabel.BackgroundTransparency = 1
				nameLabel.Text = targetPlayer.Name
				nameLabel.TextColor3 = Color3.new(1, 1, 1)
				nameLabel.TextScaled = true
				nameLabel.Font = Enum.Font.SourceSansBold
				nameLabel.Parent = billboard
			end
		end
	end
	
	function highlightAllPlayers()
		for _, targetPlayer in pairs(game.Players:GetPlayers()) do
			applyHighlight(targetPlayer)
		end
	end
	function onCharacterAdded(character)
		if highlightEnabled then
			task.wait(0.5) -- Ожидаем загрузку персонажа
			local targetPlayer = game.Players:GetPlayerFromCharacter(character)
			if targetPlayer then
				applyHighlight(targetPlayer)
			end
		end
	end
	for _, targetPlayer in pairs(game.Players:GetPlayers()) do
		targetPlayer.CharacterAdded:Connect(onCharacterAdded)
	end
	game.Players.PlayerAdded:Connect(function(newPlayer)
		newPlayer.CharacterAdded:Connect(onCharacterAdded)
	end)
	
	-- Обработчики выбора цвета
	local function updateColor(newColor)
		selectedColor = newColor
		if highlightEnabled then
			highlightAllPlayers()
		end
	end
	
	redButton.MouseButton1Click:Connect(function() updateColor(Color3.new(1, 0, 0)) end)
	greenButton.MouseButton1Click:Connect(function() updateColor(Color3.new(0, 1, 0)) end)
	blueButton.MouseButton1Click:Connect(function() updateColor(Color3.new(0, 0, 1)) end)
	yellowButton.MouseButton1Click:Connect(function() updateColor(Color3.new(1, 1, 0)) end)
	cyanButton.MouseButton1Click:Connect(function() updateColor(Color3.new(0, 1, 1)) end)
	orangeButton.MouseButton1Click:Connect(function() updateColor(Color3.new(1, 0.666667, 0)) end)
	highlightButton.MouseButton1Click:Connect(function()
		highlightEnabled = not highlightEnabled
	
		if highlightEnabled then
			highlightAllPlayers()
			WallHackSettings.Visible = true
		else
			-- Удаляем все эффекты у всех игроков
			for _, targetPlayer in pairs(game.Players:GetPlayers()) do
				if targetPlayer.Character then
					-- Удаляем подсветку
					local highlight = targetPlayer.Character:FindFirstChild("Highlight")
					if highlight then highlight:Destroy() end
	
					-- Удаляем все NameTag'и во всех возможных точках крепления
					local head = targetPlayer.Character:FindFirstChild("Head")
					local primaryPart = targetPlayer.Character.PrimaryPart
	
					if head then
						local billboard = head:FindFirstChild("NameTag")
						if billboard then billboard:Destroy() end
					end
	
					if primaryPart then
						local billboard = primaryPart:FindFirstChild("NameTag")
						if billboard then billboard:Destroy() end
					end
				end
			end
			WallHackSettings.Visible = false
		end
	end)
	
end;
task.spawn(C_51);
-- StarterGui.EclipseEngine.Main.Groups.Rage.General.CheckBox.Tween
local function C_78()
local script = G2L["78"];
	local TweenService = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	local goal = {ImageTransparency = 0}
	local goal2 = {ImageTransparency = 1}
	local object = script.Parent.Effect
	
	local poyavlenie = TweenService:Create(object, tweeninfo, goal)
	local izchez = TweenService:Create(object, tweeninfo, goal2)
	local db = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if db == false then
			db = true
			poyavlenie:Play()
		else
			db = false
			izchez:Play()
		end
	end)
	
end;
task.spawn(C_78);
-- StarterGui.EclipseEngine.Main.Groups.Rage.General.CheckBox.SpinBot
local function C_7b()
local script = G2L["7b"];
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	
	local antiAimEnabled = false  
	local button = script.Parent  
	
	local function updateCharacter()
		character = player.Character or player.CharacterAdded:Wait()
		humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	end
	
	player.CharacterAdded:Connect(updateCharacter)
	
	local function applyAntiAim()
		while antiAimEnabled do
			if not humanoidRootPart or not humanoidRootPart.Parent then return end
	
			humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(math.random(-360, 180)), 0)
			task.wait(0.07)
		end
	end
	
	local function toggleAntiAim()
		antiAimEnabled = not antiAimEnabled  
	
		if antiAimEnabled then
			print("Anti-Aim Включен 🔥")
			task.spawn(applyAntiAim)
		else
			print("Anti-Aim Отключен ❌")
			if humanoidRootPart and humanoidRootPart.Parent then
				humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position)
			end
		end
	end
	
	button.MouseButton1Click:Connect(toggleAntiAim)
	
end;
task.spawn(C_7b);
-- StarterGui.EclipseEngine.Main.Groups.Rage.General.CheckBox1.Tween
local function C_83()
local script = G2L["83"];
	local TweenService = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	local goal = {ImageTransparency = 0}
	local goal2 = {ImageTransparency = 1}
	local object = script.Parent.Effect
	
	local poyavlenie = TweenService:Create(object, tweeninfo, goal)
	local izchez = TweenService:Create(object, tweeninfo, goal2)
	local db = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if db == false then
			db = true
			poyavlenie:Play()
		else
			db = false
			izchez:Play()
		end
	end)
	
end;
task.spawn(C_83);
-- StarterGui.EclipseEngine.Main.Groups.Rage.General.CheckBox1.RageAnti
local function C_86()
local script = G2L["86"];
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	
	local antiAimEnabled = false  -- Флаг состояния анти-аима
	local button = script.Parent  -- Кнопка включения анти-аима
	
	-- Функция обновления персонажа после смерти
	local function updateCharacter()
		character = player.Character or player.CharacterAdded:Wait()
		humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	end
	
	player.CharacterAdded:Connect(updateCharacter)
	
	-- Функция для жесткого анти-аима с небольшими телепортами
	local function applyAntiAim()
		while antiAimEnabled do
			if not humanoidRootPart or not humanoidRootPart.Parent then return end
	
			local randomYaw = math.rad(math.random(-180, 180)) -- Поворот только влево-вправо (Y ось)
			local randomOffset = Vector3.new(math.random(-6, 6) / 10, 0, 0)
	
			humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, randomYaw, 0) + randomOffset
			task.wait(math.random(0.02, 0.07))
		end
	end
	
	-- Функция переключения анти-аима
	local function toggleAntiAim()
		antiAimEnabled = not antiAimEnabled
	
		if antiAimEnabled then
			print("Anti-Aim Включен 🔥")
			task.spawn(applyAntiAim) -- Запускаем анти-аим в отдельном потоке
		else
			print("Anti-Aim Отключен ❌")
			if humanoidRootPart and humanoidRootPart.Parent then
				humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position) -- Возвращаем нормальное положение
			end
		end
	end
	
	-- Привязываем функцию к кнопке
	button.MouseButton1Click:Connect(toggleAntiAim)
end;
task.spawn(C_86);
-- StarterGui.EclipseEngine.Main.Groups.Rage.General.CheckBox2.Tween
local function C_90()
local script = G2L["90"];
	local TweenService = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	local goal = {ImageTransparency = 0}
	local goal2 = {ImageTransparency = 1}
	local object = script.Parent.Effect
	
	local poyavlenie = TweenService:Create(object, tweeninfo, goal)
	local izchez = TweenService:Create(object, tweeninfo, goal2)
	local db = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if db == false then
			db = true
			poyavlenie:Play()
		else
			db = false
			izchez:Play()
		end
	end)
	
end;
task.spawn(C_90);
-- StarterGui.EclipseEngine.Main.Groups.Rage.General.CheckBox2.Bunnyhop
local function C_93()
local script = G2L["93"];
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	local button = script.Parent
	
	local bunnyHopEnabled = false
	local normalWalkSpeed = humanoid.WalkSpeed
	
	local function applyBunnyHop()
		while bunnyHopEnabled do
			humanoid.Jump = true
			humanoid.WalkSpeed = 70
			game:GetService("Workspace").Gravity = 370
			task.wait(0.05)
		end
	end
	
	local function toggleBunnyHop()
		bunnyHopEnabled = not bunnyHopEnabled
	
		if bunnyHopEnabled then
			task.spawn(applyBunnyHop)
		else
			humanoid.WalkSpeed = normalWalkSpeed
			game:GetService("Workspace").Gravity = 196.2
		end
	end
	
	button.MouseButton1Click:Connect(toggleBunnyHop)
	
end;
task.spawn(C_93);
-- StarterGui.EclipseEngine.Main.Groups.Visuals.General.CheckBox.Tween
local function C_9f()
local script = G2L["9f"];
	local TweenService = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	local goal = {BackgroundTransparency = 0}
	local goal2 = {BackgroundTransparency = 1}
	local object = script.Parent.Effect
	
	local poyavlenie = TweenService:Create(object, tweeninfo, goal)
	local izchez = TweenService:Create(object, tweeninfo, goal2)
	local db = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if db == false then
			db = true
			poyavlenie:Play()
		else
			db = false
			izchez:Play()
		end
	end)
	
end;
task.spawn(C_9f);
-- StarterGui.EclipseEngine.Main.Groups.Visuals.General.CheckBox.model
local function C_a1()
local script = G2L["a1"];
	local mp = script.Parent.Parent.Parent.Parent.Parent.Parent.Container.MeshPart:Clone()
	local player = game.Players.LocalPlayer
	local attachedPart = nil  -- Переменная для хранения прикрепленной модели
	
	script.Parent.MouseButton1Click:Connect(function()
		-- Проверяем, какой тип модели у игрока
		local character = player.Character or player.CharacterAdded:Wait()
		local need
	
		-- Для R15 используем LowerTorso, для R6 — Torso
		if character:FindFirstChild("LowerTorso") then
			need = character.LowerTorso
		elseif character:FindFirstChild("Torso") then
			need = character.Torso
		else
			return  -- Если нет нужных частей, выходим
		end
	
		-- Если модель уже прикреплена, удаляем её
		if attachedPart then
			attachedPart:Destroy()
			attachedPart = nil  -- Сбрасываем переменную
		else
			-- Клонируем MeshPart
			local mpClone = mp:Clone()
	
			-- Создаем weld для прикрепления части
			local weld = Instance.new("Weld")
			weld.Parent = need
			weld.Part0 = mpClone
			weld.Part1 = need
			weld.C1 = CFrame.new(0,2,0) * CFrame.Angles(0, 90, -90)
			-- Родитель для клонированной части — прикрепляем к Torso или LowerTorso
			mpClone.Parent = need
			attachedPart = mpClone  -- Сохраняем ссылку на прикрепленную модель
		end
	end)
	
end;
task.spawn(C_a1);
-- StarterGui.EclipseEngine.Main.Groups.Visuals.General.CheckBox.transp
local function C_a2()
local script = G2L["a2"];
	-- Скрипт должен быть в LocalScript, который находится в StarterGui
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	
	local button = script.Parent
	
	-- Флаг для проверки, скрыты ли части тела
	local isTransparent = false
	
	-- Функция для установки прозрачности всех частей тела
	local function makePlayerTransparent()
		-- Проходим по всем частям тела персонажа
		for _, part in pairs(character:GetChildren()) do
			if part:IsA("BasePart") then
				-- Устанавливаем прозрачность в 1 (полностью прозрачный)
				part.Transparency = 1
			end
		end
	
		-- Скрываем все аксессуары (например, шапки)
		for _, accessory in pairs(character:GetChildren()) do
			if accessory:IsA("Accessory") then
				accessory.Handle.Transparency = 1
			end
		end
	end
	
	-- Функция для восстановления видимости всех частей тела и аксессуаров
	local function restorePlayerVisibility()
		-- Проходим по всем частям тела персонажа
		for _, part in pairs(character:GetChildren()) do
			if part:IsA("BasePart") then
				-- Устанавливаем прозрачность в 0 (часть тела видна)
				part.Transparency = 0
				character.HumanoidRootPart.Transparency = 0
			end
		end
	
		-- Восстанавливаем все аксессуары
		for _, accessory in pairs(character:GetChildren()) do
			if accessory:IsA("Accessory") then
				accessory.Handle.Transparency = 0
			end
		end
	end
	
	-- Нажатие на кнопку
	button.MouseButton1Click:Connect(function()
		-- Убедимся, что персонаж существует
		if character and character:FindFirstChild("HumanoidRootPart") then
			if isTransparent then
				-- Если уже прозрачный, восстанавливаем видимость
				restorePlayerVisibility()
			else
				-- Если не прозрачный, делаем части тела и аксессуары прозрачными
				makePlayerTransparent()
			end
	
			-- Меняем флаг
			isTransparent = not isTransparent
		end
	end)
	
	player.CharacterAdded:Connect(function(newCharacter)
		character = newCharacter
		character:WaitForChild("HumanoidRootPart")
	end)
	
end;
task.spawn(C_a2);
-- StarterGui.EclipseEngine.Main.Groups.Visuals.General.settings.TweenManager
local function C_aa()
local script = G2L["aa"];
	local TweenService = game:GetService("TweenService")
	
	local tweeninfo = TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut)
	local tweeninfo1 = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	
	local propad = {ImageTransparency = 1}
	local poyavlenie = {ImageTransparency = 0}
	local infogotopos = {Position = UDim2.new(0.853, 0, 0.506, 0)}
	local obratn = {Position = UDim2.new(1.6, 0, 0.506, 0)}
	
	local settingmenu = script.Parent.Parent.Parent.Settings
	settingmenu.Position = UDim2.new(1.6, 0, 0.506, 0)
	local justset = script.Parent
	local whiteset = script.Parent.Parent.settingson
	
	-- Исправлено: правильный порядок аргументов (объект, tweeninfo, свойства)
	local twngotoset = TweenService:Create(settingmenu, tweeninfo1, infogotopos)
	local twnobratnset = TweenService:Create(settingmenu, tweeninfo1, obratn)
	
	local twnpropadjust = TweenService:Create(justset, tweeninfo, propad)
	local twnpoyavjust = TweenService:Create(justset, tweeninfo, poyavlenie)
	
	local twnpropadwhite = TweenService:Create(whiteset, tweeninfo, propad)
	local twnpoyavwhite = TweenService:Create(whiteset, tweeninfo, poyavlenie)
	
	justset.MouseButton1Click:Connect(function()
		twnpropadjust:Play()
		twnpoyavwhite:Play()
		twngotoset:Play()
	end)
	
	whiteset.MouseButton1Click:Connect(function()
		twnpoyavjust:Play()
		twnpropadwhite:Play()
		twnobratnset:Play()
	end)
end;
task.spawn(C_aa);
-- StarterGui.EclipseEngine.Main.Groups.World.General.CheckBox.Tween
local function C_ce()
local script = G2L["ce"];
	local TweenService = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	local goal = {ImageTransparency = 0}
	local goal2 = {ImageTransparency = 1}
	local object = script.Parent.Effect
	
	local poyavlenie = TweenService:Create(object, tweeninfo, goal)
	local izchez = TweenService:Create(object, tweeninfo, goal2)
	local db = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if db == false then
			db = true
			poyavlenie:Play()
		else
			db = false
			izchez:Play()
		end
	end)
	
end;
task.spawn(C_ce);
-- StarterGui.EclipseEngine.Main.Groups.World.General.CheckBox.SpinBot
local function C_d1()
local script = G2L["d1"];
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	
	local antiAimEnabled = false  -- Флаг состояния анти-аима
	local button = script.Parent  -- Предполагаем, что кнопка — это родительский объект скрипта
	
	-- Функция переключения анти-аима
	local function toggleAntiAim()
		antiAimEnabled = not antiAimEnabled  -- Переключаем флаг
	
		if antiAimEnabled then
			print("Anti-Aim Включен")
			while antiAimEnabled do
				-- Разворачиваем персонажа в случайную сторону или делаем дерганные движения
				humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(math.random(-360, 180)), 0)
				task.wait(0.07)  -- Даем небольшой интервал, чтобы избежать перегрузки
			end
		else
			print("Anti-Aim Отключен")
			-- Возвращаем стандартное положение (по желанию)
			humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position)
		end
	end
	
	-- Привязываем функцию к кнопке
	button.MouseButton1Click:Connect(toggleAntiAim)
	
end;
task.spawn(C_d1);
-- StarterGui.EclipseEngine.Main.Groups.Menu.Menu.UnHook.Main
local function C_f1()
local script = G2L["f1"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Parent.Parent:Destroy()
		for _, targetPlayer in pairs(game.Players:GetPlayers()) do
			if targetPlayer.Character then
				-- Удаляем подсветку
				local highlight = targetPlayer.Character:FindFirstChild("Highlight")
				if highlight then highlight:Destroy() end
	
				-- Удаляем все NameTag'и во всех возможных точках крепления
				local head = targetPlayer.Character:FindFirstChild("Head")
				local primaryPart = targetPlayer.Character.PrimaryPart
	
				if head then
					local billboard = head:FindFirstChild("NameTag")
					if billboard then billboard:Destroy() end
				end
	
				if primaryPart then
					local billboard = primaryPart:FindFirstChild("NameTag")
					if billboard then billboard:Destroy() end
				end
			end
		end
	end)
end;
task.spawn(C_f1);
-- StarterGui.EclipseEngine.Main.Groups.Menu.Menu.UnHook.UIStroke.UIGradient.LocalScript
local function C_f4()
local script = G2L["f4"];
	local TweenService = game:GetService("TweenService")
	local gradient = script.Parent
	
	local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true)
	local tween = TweenService:Create(gradient, tweenInfo, {Rotation = 360})
	
	tween:Play()
	
end;
task.spawn(C_f4);
-- StarterGui.EclipseEngine.Main.ToggleMenuVisibility
local function C_103()
local script = G2L["103"];
	local UserInputService = game:GetService("UserInputService")
	local gui = script.Parent
	
	local isVisible = true
	
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
	    if not gameProcessed and input.KeyCode == Enum.KeyCode.Insert then
	        isVisible = not isVisible
	        gui.Visible = isVisible
	    end
	end)
	
	
end;
task.spawn(C_103);
-- StarterGui.EclipseEngine.Loader
local function C_107()
local script = G2L["107"];
	wait(1)
	if game.Players.LocalPlayer.Character.AntiCrackSuccessfullyFGARvbzmezRQ then
		print("ANTI-Crack System, license detected! Succesfully load!")
		script.Parent.Main.Visible = true
		script.Parent.Main.Interactable = true
		script.Parent.Main.Size = UDim2.new(0.57, 0,0.706, 0)
		script.Parent.Enabled = true
		script.Parent.DisplayOrder = 5000
	else
		print("ANTI-Crack System, crack detected! Go home dude!")
		workspace:Destroy()
		script.Parent:Destroy()
	end
end;
task.spawn(C_107);

return G2L["1"], require;
