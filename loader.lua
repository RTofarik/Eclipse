--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 17 | Scripts: 3 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.Loader
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["DisplayOrder"] = 5000;
G2L["1"]["Enabled"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[Loader]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.Loader.Ver: ALPHA v0.1
G2L["2"] = Instance.new("Script", G2L["1"]);
G2L["2"]["Enabled"] = false;
G2L["2"]["Disabled"] = true;
G2L["2"]["Name"] = [[Ver: ALPHA v0.1]];


-- StarterGui.Loader.MainLoader
G2L["3"] = Instance.new("CanvasGroup", G2L["1"]);
G2L["3"]["ZIndex"] = 5000;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 19);
G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3"]["Size"] = UDim2.new(0.29009, 0, 0.36287, 0);
G2L["3"]["Position"] = UDim2.new(0.49961, 0, 0.49968, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[MainLoader]];
G2L["3"]["LayoutOrder"] = 5000;


-- StarterGui.Loader.MainLoader.ToggleMenuVisibility
G2L["4"] = Instance.new("LocalScript", G2L["3"]);
G2L["4"]["Name"] = [[ToggleMenuVisibility]];


-- StarterGui.Loader.MainLoader.Loading
G2L["5"] = Instance.new("Frame", G2L["3"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Size"] = UDim2.new(0.06296, 0, 0.01832, 0);
G2L["5"]["Position"] = UDim2.new(-0.06928, 0, 0.002, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[Loading]];


-- StarterGui.Loader.MainLoader.Loading.UIGradient
G2L["6"] = Instance.new("UIGradient", G2L["5"]);
G2L["6"]["Rotation"] = -7;
G2L["6"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(174, 0, 165)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(120, 0, 255))};


-- StarterGui.Loader.MainLoader.Loading.LoadingAnim
G2L["7"] = Instance.new("LocalScript", G2L["5"]);
G2L["7"]["Name"] = [[LoadingAnim]];


-- StarterGui.Loader.MainLoader.LetterE
G2L["8"] = Instance.new("ImageLabel", G2L["3"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8"]["Image"] = [[rbxassetid://132953026772556]];
G2L["8"]["Size"] = UDim2.new(0.26496, 0, 0.45808, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["Name"] = [[LetterE]];
G2L["8"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Loader.MainLoader.LetterE.UIGradient
G2L["9"] = Instance.new("UIGradient", G2L["8"]);
G2L["9"]["Rotation"] = 57;
G2L["9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(174, 0, 165)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(120, 0, 255))};


-- StarterGui.Loader.MainLoader.LetterE.FadeAndFade
G2L["a"] = Instance.new("LocalScript", G2L["8"]);
G2L["a"]["Name"] = [[FadeAndFade]];


-- StarterGui.Loader.MainLoader.LetterE.UIAspectRatioConstraint
G2L["b"] = Instance.new("UIAspectRatioConstraint", G2L["8"]);
G2L["b"]["AspectRatio"] = 0.808;


-- StarterGui.Loader.MainLoader.UIAspectRatioConstraint
G2L["c"] = Instance.new("UIAspectRatioConstraint", G2L["3"]);
G2L["c"]["AspectRatio"] = 1.3969;


-- StarterGui.Loader.Back
G2L["d"] = Instance.new("CanvasGroup", G2L["1"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d"]["Size"] = UDim2.new(1.01979, 0, 1.03723, 0);
G2L["d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[Back]];
G2L["d"]["BackgroundTransparency"] = 1;


-- StarterGui.Loader.Back.Clipse
G2L["e"] = Instance.new("ImageLabel", G2L["d"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e"]["Image"] = [[rbxassetid://95797664088711]];
G2L["e"]["Size"] = UDim2.new(0.39552, 0, 0.24487, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["Name"] = [[Clipse]];
G2L["e"]["Position"] = UDim2.new(0.554, 0, 1, 150);


-- StarterGui.Loader.Back.Clipse.UIAspectRatioConstraint
G2L["f"] = Instance.new("UIAspectRatioConstraint", G2L["e"]);
G2L["f"]["AspectRatio"] = 2.77487;


-- StarterGui.Loader.Back.Letter
G2L["10"] = Instance.new("ImageLabel", G2L["d"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["10"]["Image"] = [[rbxassetid://128088363917328]];
G2L["10"]["Size"] = UDim2.new(0.10896, 0, 0.24487, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["Name"] = [[Letter]];
G2L["10"]["Position"] = UDim2.new(-0.052, 0, 0.486, 0);


-- StarterGui.Loader.Back.Letter.UIAspectRatioConstraint
G2L["11"] = Instance.new("UIAspectRatioConstraint", G2L["10"]);
G2L["11"]["AspectRatio"] = 0.7644;


-- StarterGui.Loader.MainLoader.ToggleMenuVisibility
local function C_4()
local script = G2L["4"];
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
task.spawn(C_4);
-- StarterGui.Loader.MainLoader.Loading.LoadingAnim
local function C_7()
local script = G2L["7"];
	local TweenService = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local tweeninfo2 = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local goal1 = {Size = UDim2.new(0, 109,0, 5)}
	local goal2 = {Size = UDim2.new(0, 149,0, 5)}
	local goal3 = {Size = UDim2.new(0, 249,0, 5)}
	local goal4 = {Size = UDim2.new(0, 349,0, 5)}
	local goalmax = {Size = UDim2.new(2.28, 0,0.018, 0)}
	local goalfore = {Position = UDim2.new(0.301, 0,0.486, 0)}
	local goalforclipz = {Position = UDim2.new(0.554, 0,0.514, 0)}
	local goalforback = {BackgroundTransparency = 0.6}
	
	local object = script.Parent
	local Back = script.Parent.Parent.Parent.Back
	local clipz = Back.Clipse
	local let = Back.Letter
	
	local tween1 = TweenService:Create(object, tweeninfo, goal1)
	local tween2 = TweenService:Create(object, tweeninfo, goal2)
	local tween3 = TweenService:Create(object, tweeninfo, goal3)
	local tween4 = TweenService:Create(object, tweeninfo, goal4)
	local tweenmax = TweenService:Create(object, tweeninfo, goalmax)
	
	local twnforback = TweenService:Create(Back, tweeninfo, goalforback)
	local twnletter = TweenService:Create(let, tweeninfo2, goalfore)
	local twnclipz = TweenService:Create(clipz, tweeninfo2, goalforclipz)
	
	
	wait(2)
	tween1:Play()
	wait(3)
	tween2:Play()
	wait(1)
	tween3:Play()
	wait(4)
	tween4:Play()
	wait(3)
	tweenmax:Play()
	wait(1)
	print "loaded"
	script.Parent.Parent.Visible = false
	wait(1)
	twnforback:Play()
	wait(3)
	twnletter:Play()
	wait(0.3)
	twnclipz:Play()
	wait(1)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RTofarik/Eclipse/refs/heads/main/main.txt"))()
	wait(0.1)
	script.Parent.Parent.Parent:Destroy()
end;
task.spawn(C_7);
-- StarterGui.Loader.MainLoader.LetterE.FadeAndFade
local function C_a()
local script = G2L["a"];
	local TweenService = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local goal = {ImageTransparency = 1}
	local goal2 = {ImageTransparency = 0}
	local object = script.Parent
	
	local tween = TweenService:Create(object, tweeninfo, goal)
	local tween2 = TweenService:Create(object, tweeninfo, goal2)
	
	local startTime = os.time()
	while true do
		   tween:Play()
		   wait(0.5)
		   tween2:Play()
			wait(1)
			if os.time() - startTime >= 15 then 
				break
			end
	end
	
end;
task.spawn(C_a);

return G2L["1"], require;
