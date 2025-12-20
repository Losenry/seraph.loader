for _, v in pairs(game:GetService('CoreGui'):GetChildren()) do
	if v.Name:match('SERENITY') then
		v:Destroy()
	end
end;

Initalize = function()
	local GetConnections = getconnections;
	local VirtualUser = game:GetService("VirtualUser")
	local Players = game:GetService('Players')
	task.spawn(function()
		Players.LocalPlayer.Idled:Connect(function()
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end)
	task.spawn(function()
		if GetConnections then
			for i, v in pairs(GetConnections(Players.LocalPlayer.Idled)) do
				if v["Disable"] then
					v["Disable"](v)
				elseif v["Disconnect"] then
					v["Disconnect"](v)
				end
			end
		end
	end)
end;

Initalize()
local cloneref = cloneref or function(a)
	return a
end;

local b, c = {
	Version = "1.0.1",
	Themes = {
		AccentColor = Color3.fromRGB(0, 0, 0),
		BackgroundColor = Color3.fromRGB(255, 68, 177),
		TextColor = Color3.fromRGB(255, 255, 255),
		DisabledTextColor = Color3.fromRGB(255, 255, 255)
	},
	ThemeList = {},
	Presets = {
		["Default"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(255, 68, 177),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Navy"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(130, 174, 255),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Magenta"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(200, 75, 150),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Olive"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(100, 220, 100),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Lime"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(225, 255, 125),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Amethyst"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(200, 130, 115),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Onyx"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(255, 255, 255),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Lemon"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(255, 200, 100),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Rouge"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(230, 130, 180),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Cobalt"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(100, 155, 200),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Crimson"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(225, 100, 100),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Snow"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(75, 75, 75),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Violet"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(125, 85, 225),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		}
	},
	Settings = {
		Keybind = Enum.KeyCode.Home,
		Transparency = 0.85,
		FontFace = nil
	},
	Services = setmetatable({}, {
		__index = function(d, e)
			local f = cloneref(game:GetService(e))
			return f
		end
	}),
	Flags = {},
	Animation = true,
	AnimationSpeed = 0.1,
	Elements = {
		Windows = {},
		Dropdowns = {},
		Colorpickers = {},
		Sliders = {},
		Toggles = {},
		Keybinds = {},
		Textboxes = {},
		Labels = {},
		Buttons = {},
		Separators = {}
	},
	EasingStyle = {
		Linear = Enum.EasingStyle.Linear,
		Sine = Enum.EasingStyle.Sine,
		Back = Enum.EasingStyle.Back,
		Quad = Enum.EasingStyle.Quad,
		Quart = Enum.EasingStyle.Quart,
		Quint = Enum.EasingStyle.Quint,
		Bounce = Enum.EasingStyle.Bounce,
		Elastic = Enum.EasingStyle.Elastic,
		Exponential = Enum.EasingStyle.Exponential,
		Circular = Enum.EasingStyle.Circular
	},
	EasingDirection = {
		In = Enum.EasingDirection.In,
		Out = Enum.EasingDirection.Out,
		InOut = Enum.EasingDirection.InOut
	},
	IsMobile = false,
	Fonts = {
		Inter = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	},
	Storage = {
		Background = {},
		BackgroundGradient = {},
		Notification = {},
		SelectedFrame = {},
		Toggles = {},
		ToggleImages = {},
		DropdownGradient = {},
		Selected = {},
		SliderValue = {},
		SliderImage = {}
	},
	Connections = {}
}, {
	Icons = loadstring(game:HttpGetAsync('https://api.s3ren1ty.xyz/Api/Script/serenity.library.icon.lua'))()
}

local g = setmetatable({}, {
	__index = function(d, e)
		return cloneref(game:GetService(e))
	end
})

local h = g.Players;
local i = g.UserInputService;
local j = g.TweenService;
local k = g.RunService;
local l = g.HttpService;
local m = g.TextService;
local n = g.Debris;
local o = h.LocalPlayer;
local p = o:GetMouse()

if k:IsStudio() then
	b.IsMobile = i.TouchEnabled and i.MouseEnabled == false
else
	b.IsMobile = table.find({
		Enum.Platform.IOS,
		Enum.Platform.Android
	}, i:GetPlatform())
end;

for q, r in pairs(b.Presets) do
	table.insert(b.ThemeList, q)
end;

table.sort(b.ThemeList)
b.gameInfo = {
	PlaceId = game.PlaceId,
	JobId = game.JobId,
	CreatorId = game.CreatorId
}

do
	function b:Create(s, t, u)
		local v, w = pcall(function()
			if typeof(s) ~= "string" then
				return "ObjectType must be a string, got " .. typeof(s)
			end;
			local x = Instance.new(s)
			for y, z in pairs(t) do
				x[y] = z
			end;
			if u then
				for e, A in pairs(u) do
					A.Parent = x
				end
			end;
			return x
		end)
		if v then
			return w
		else
			warn("Failed to render object: " .. tostring(s), tostring(w))
			return nil
		end
	end;
	function b:Connect(B, C)
		local D;
		local v, w = pcall(function()
			D = B:Connect(C)
		end)
		if v then
			table.insert(b.Connections, D)
			return D
		else
			warn(B, w)
			return nil
		end
	end
end;
do
	function c:Connect(E, C)
		local D;
		local v, w = pcall(function()
			D = E:Connect(C)
		end)
		if v then
			table.insert(b.Connections, D)
			return D
		else
			warn(E, w)
			return nil
		end
	end;
	function c:Thread(C, ...)
		local F = {
			...
		}
		local G;
		local v, w = pcall(function()
			coroutine.wrap(C)(unpack(F))
		end)
		if v then
			return w
		else
			warn(w)
		end
	end;
	function c:Decimal(z, H)
		if H ~= 0 then
			local I = 1 / H;
			return math.round(z * I) / I
		else
			return z
		end
	end;
	function c:GetIcon(J)
		local K = self.Icons["lucide-" .. J]
		if K then
			return K
		else
			warn("Icon not found: " .. J)
			return "rbxassetid://" .. J
		end
	end;
	function c:Animation(x, t, L, ...)
		local F = {
			...
		}
		local M;
		local v, w = pcall(function()
			if b.Animation then
				M = j:Create(x, TweenInfo.new(L, unpack(F)), t)
				M:Play()
			else
				for y, z in pairs(t) do
					x[y] = z
				end
			end
		end)
		if v then
			return M
		else
			warn(w)
		end
	end;
	function c:LightenColor(N, O)
		local P, Q, R = Color3.toHSV(N)
		return Color3.fromHSV(P, Q, R + (1 - R) * O)
	end;
	function c:DarkenColor(N, O)
		local P, Q, R = Color3.toHSV(N)
		return Color3.fromHSV(P, Q, R - (1 - R) * O)
	end;
	function c:IsMouseOver(x)
		local v, w = pcall(function()
			local S = x.AbsolutePosition;
			local T = x.AbsoluteSize;
			local U = Vector2.new(p.X, p.Y)
			return U.X >= S.X and U.X <= S.X + T.X and (U.Y >= S.Y and U.Y <= S.Y + T.Y)
		end)
		if v then
			return w
		else
			warn("Error occurred while checking mouse position:", w)
			return false
		end
	end;
	function c:MakeDraggable(x, V)
		local W, X, Y;
		local function Z(_)
			local a0;
			a0 = _.Position - X;
			if a0 then
				local a1 = UDim2.new(Y.X.Scale, Y.X.Offset + a0.X, Y.Y.Scale, Y.Y.Offset + a0.Y)
				self:Animation(x, {
					Position = a1
				}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
			end
		end;
		b:Connect(V.InputBegan, function(_)
			if not b.Maximized and (_.UserInputType == Enum.UserInputType.MouseButton1 or _.UserInputType == Enum.UserInputType.Touch) then
				W = true;
				X = _.Position;
				Y = x.Position
			end
		end)
		b:Connect(V.InputEnded, function(_, a2)
			if _.UserInputType == Enum.UserInputType.MouseButton1 and not a2 then
				W = false
			end
		end)
		b:Connect(i.TouchEnded, function(_, a2)
			if W and _.UserInputType == Enum.UserInputType.Touch then
				W = false
			end
		end)
		b:Connect(i.InputChanged, function(_)
			if _.UserInputType == Enum.UserInputType.MouseMovement or _.UserInputType == Enum.UserInputType.Touch then
				if W then
					Z(_)
				end
			end
		end)
	end;
	function c:MakeResizeable(x, V)
		local W, X, a3;
		local a4 = 0.5;
		local function a5(_)
			local a6 = _.Position.X - X.X;
			local a7 = _.Position.Y - X.Y;
			if a6 or a7 then
				local a8 = UDim2.fromOffset(a3.X.Offset + a6, a3.Y.Offset + a7)
				local a9 = UDim2.fromOffset(math.max(470, a8.X.Offset), math.max(380, a8.Y.Offset))
				x.Size = a9
			end
		end;
		b:Connect(V.InputBegan, function(_)
			if not b.Maximized and (_.UserInputType == Enum.UserInputType.MouseButton1 or _.UserInputType == Enum.UserInputType.Touch) then
				W = true;
				X = _.Position;
				a3 = x.Size
			end
		end)
		b:Connect(V.InputEnded, function(_)
			if _.UserInputType == Enum.UserInputType.MouseButton1 or _.UserInputType == Enum.UserInputType.Touch then
				W = false
			end
		end)
		b:Connect(i.TouchEnded, function(_, a2)
			if W and _.UserInputType == Enum.UserInputType.Touch then
				W = false
			end
		end)
		b:Connect(i.InputChanged, function(_)
			if _.UserInputType == Enum.UserInputType.MouseMovement or _.UserInputType == Enum.UserInputType.Touch then
				if W then
					a5(_)
				end
			end
		end)
	end;
	function c:SetThemeProperty(aa, ab, z)
		for ac, ad in pairs(aa) do
			ad[ab] = z
		end
	end;
	function c:SetTheme(ae)
		local af = b.Presets[ae]
		b.Themes = af;
		if not af then
			warn("Theme not found:", ae)
			return
		end;
		c:SetThemeProperty(b.Storage.Background, "BackgroundColor3", af.BackgroundColor)
		c:SetThemeProperty(b.Storage.SelectedFrame, "BackgroundColor3", af.BackgroundColor)
		c:SetThemeProperty(b.Storage.Toggles, "BackgroundColor3", af.BackgroundColor)
		c:SetThemeProperty(b.Storage.ToggleImages, "ImageColor3", af.BackgroundColor)
		c:SetThemeProperty(b.Storage.Selected, "BackgroundColor3", af.BackgroundColor)
		c:SetThemeProperty(b.Storage.SliderValue, "BackgroundColor3", af.BackgroundColor)
		local ak = c:LightenColor(af.BackgroundColor, 0.05)
		local al = c:DarkenColor(af.BackgroundColor, 0.05)
		c:SetThemeProperty(b.Storage.BackgroundGradient, "Color", ColorSequence.new({
			ColorSequenceKeypoint.new(0, af.BackgroundColor),
			ColorSequenceKeypoint.new(1, ak)
		}))
		c:SetThemeProperty(b.Storage.Notification, "Color", ColorSequence.new({
			ColorSequenceKeypoint.new(0, af.BackgroundColor),
			ColorSequenceKeypoint.new(1, al)
		}))
		c:SetThemeProperty(b.Storage.DropdownGradient, "Color", ColorSequence.new({
			ColorSequenceKeypoint.new(0, af.BackgroundColor),
			ColorSequenceKeypoint.new(1, ak)
		}))
		c:SetThemeProperty(b.Storage.SliderImage, "ImageColor3", af.BackgroundColor)
	end
end;
function b:Window(t)
	local am = {
		Active = nil,
		Maximized = false,
		Visible = true
	}
	local t = t or {}
	local an = {
		Title = t.title or t.Title or "SERPEXITY DEVELOPMENT UI",
		SubTitle = t.subtitle or t.Subtitle or t.SubTitle or "",
		TabWidth = t.tabwidth or t.TabWidth or 160,
		Size = self.IsMobile and UDim2.fromOffset(464, 368) or getgenv().Mobile and UDim2.fromOffset(464, 368) or UDim2.fromOffset(580, 460),
		MinimizeKey = t.minimizekey or t.MinimizeKey or Enum.KeyCode.Home,
		Theme = t.theme or t.Theme or "Default",
		ExitCallback = t.exitcallback or t.ExitCallback or function()
		end,
		Transparency = t.transparency or t.Transparency or 0.85,
		FontFace = t.font or t.Font or nil
	}
	b.Settings.FontFace = an.FontFace;
	self.Settings.Keybind = Enum.KeyCode.LeftControl;
	if getgenv().KeyBind ~= nil then
		self.Settings.Keybind = getgenv().KeyBind
	end;
	self.Settings.Transparency = an.Transparency;
	self.Theme = an.Theme;
	local ao = o:WaitForChild("CoreGui", 1)
	local ap;
	local aq = 0;
	local ar = self:Create("ScreenGui", {
		Name = "SERENITY",
		Parent = ao,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		ResetOnSpawn = false,
		DisplayOrder = 1,
		IgnoreGuiInset = true
	})
	loadstring(game:HttpGetAsync('https://api.s3ren1ty.xyz/Api/Script/serenity.library.toggle.lua'))(ao:FindFirstChild('SERENITY'))
	function b:Destroy()
		for e, D in pairs(self.Connections) do
			D:Disconnect()
		end;
		ar:Destroy()
	end;
	local as = self:Create("Frame", {
		Name = "MainFrame",
		Parent = ar,
		Visible = true,
		Size = an.Size,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	})
	function b:Toggle()
		as.Visible = not as.Visible;
		am.Visible = not am.Visible
	end;
	local at = Instance.new("Frame")
	at.Name = "NotificationHolder"
	at.AnchorPoint = Vector2.new(1, 1)
	at.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	at.BackgroundTransparency = 1;
	at.BorderColor3 = Color3.fromRGB(0, 0, 0)
	at.BorderSizePixel = 0;
	at.Position = UDim2.new(1, -30, 1, -30)
	at.Size = UDim2.new(0, 310, 1, -30)
	at.Parent = ar;
	local au = Instance.new("UIListLayout")
	au.Name = "UIListLayout"
	au.Padding = UDim.new(0, 20)
	au.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	au.SortOrder = Enum.SortOrder.LayoutOrder;
	au.VerticalAlignment = Enum.VerticalAlignment.Bottom;
	au.Parent = at;
	function b:Notify(t)
		local av = {
			Closed = false
		}
		local t = t or {}
		local an = {
			Title = t.title or t.Title or "SERENITY",
			Content = t.content or t.Content or "This is a notification!",
			SubContent = t.subcontent or t.Subcontent or t.SubContent or false,
			Duration = t.duration or t.Duration or 3
		}
		local aw = Instance.new("Frame")
		aw.Name = "NotificationObject"
		aw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aw.BackgroundTransparency = 1;
		aw.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aw.BorderSizePixel = 0;
		aw.Size = an.SubContent and UDim2.new(1, 0, 0, 89) or UDim2.new(1, 0, 0, 72)
		aw.Position = UDim2.new(0, 0, 1, 0)
		local ax = Instance.new("Frame")
		ax.Name = "NotificationObjectFrame"
		ax.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ax.BackgroundTransparency = 1;
		ax.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ax.BorderSizePixel = 0;
		ax.Size = UDim2.fromScale(1, 1)
		local ay = Instance.new("Frame")
		ay.Name = "Notification"
		ay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ay.BackgroundTransparency = 0.9;
		ay.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ay.BorderSizePixel = 0;
		ay.Size = UDim2.fromScale(1, 1)
		local az = Instance.new("ImageLabel")
		az.Name = "NotifyShadow"
		az.Image = "rbxassetid://8992230677"
		az.ImageColor3 = Color3.fromRGB(0, 0, 0)
		az.ImageTransparency = 0.7;
		az.ScaleType = Enum.ScaleType.Slice;
		az.SliceCenter = Rect.new(99, 99, 99, 99)
		az.AnchorPoint = Vector2.new(0.5, 0.5)
		az.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		az.BackgroundTransparency = 1;
		az.BorderColor3 = Color3.fromRGB(0, 0, 0)
		az.BorderSizePixel = 0;
		az.Position = UDim2.fromScale(0.5, 0.5)
		az.Size = UDim2.new(1, 120, 1, 116)
		az.Parent = ay;
		local aA = Instance.new("UICorner")
		aA.Name = "UICorner"
		aA.Parent = ay;
		local aB = Instance.new("Frame")
		aB.Name = "Background"
		aB.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		aB.BackgroundTransparency = 0.45;
		aB.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aB.BorderSizePixel = 0;
		aB.Size = UDim2.fromScale(1, 1)
		local aC = Instance.new("UICorner")
		aC.Name = "UICorner"
		aC.Parent = aB;
		aB.Parent = ay;
		local aD = Instance.new("Frame")
		aD.Name = "Gradient"
		aD.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		aD.BackgroundTransparency = 0.4;
		aD.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aD.BorderSizePixel = 0;
		aD.Size = UDim2.fromScale(1, 1)
		local aE = Instance.new("UICorner")
		aE.Name = "UICorner"
		aE.Parent = aD;
		local aF = Instance.new("UIGradient")
		aF.Name = "UIGradient"
		aF.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, b.Themes.BackgroundColor),
			ColorSequenceKeypoint.new(1, b.Themes.BackgroundColor)
		})
		aF.Rotation = 90;
		aF.Parent = aD;
		table.insert(b.Storage.Notification, aF)
		aD.Parent = ay;
		ay.Parent = ax;
		local aG = Instance.new("TextLabel")
		aG.Name = "NotifyTitle"
		aG.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json")
		aG.RichText = true;
		aG.Text = "SERENITY"
		aG.TextColor3 = Color3.fromRGB(240, 240, 240)
		aG.TextSize = 13;
		aG.TextWrapped = true;
		aG.TextXAlignment = Enum.TextXAlignment.Left;
		aG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aG.BackgroundTransparency = 1;
		aG.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aG.Position = UDim2.fromOffset(14, 17)
		aG.Size = UDim2.new(1, -12, 0, 12)
		aG.Parent = ax;
		local aH = Instance.new("TextButton")
		aH.Name = "CloseObjectButton"
		aH.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json")
		aH.Text = ""
		aH.TextColor3 = Color3.fromRGB(0, 0, 0)
		aH.TextSize = 14;
		aH.AutoButtonColor = false;
		aH.AnchorPoint = Vector2.new(1, 0)
		aH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aH.BackgroundTransparency = 1;
		aH.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aH.Position = UDim2.new(1, -14, 0, 13)
		aH.Size = UDim2.fromOffset(20, 20)
		local aI = Instance.new("ImageLabel")
		aI.Name = "CloseObjectImage"
		aI.Image = "rbxassetid://9886659671"
		aI.ImageColor3 = Color3.fromRGB(240, 240, 240)
		aI.AnchorPoint = Vector2.new(0.5, 0.5)
		aI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aI.BackgroundTransparency = 1;
		aI.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aI.BorderSizePixel = 0;
		aI.Position = UDim2.fromScale(0.5, 0.5)
		aI.Size = UDim2.fromOffset(16, 16)
		aI.Parent = aH;
		aH.Parent = ax;
		local aJ = Instance.new("Frame")
		aJ.Name = "NotificationFrame"
		aJ.AutomaticSize = Enum.AutomaticSize.Y;
		aJ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aJ.BackgroundTransparency = 1;
		aJ.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aJ.BorderSizePixel = 0;
		aJ.Position = UDim2.fromOffset(14, 40)
		aJ.Size = UDim2.new(1, -28, 0, 0)
		local aK = Instance.new("UIListLayout")
		aK.Name = "UIListLayout"
		aK.Padding = UDim.new(0, 3)
		aK.SortOrder = Enum.SortOrder.LayoutOrder;
		aK.VerticalAlignment = Enum.VerticalAlignment.Center;
		aK.Parent = aJ;
		local aL = Instance.new("TextLabel")
		aL.Name = "ContentText"
		aL.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json")
		aL.Text = an.Content;
		aL.TextColor3 = Color3.fromRGB(240, 240, 240)
		aL.TextSize = 14;
		aL.TextWrapped = true;
		aL.TextXAlignment = Enum.TextXAlignment.Left;
		aL.AutomaticSize = Enum.AutomaticSize.Y;
		aL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aL.BackgroundTransparency = 1;
		aL.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aL.Size = UDim2.new(1, 0, 0, 14)
		aL.Parent = aJ;
		local aM = Instance.new("TextLabel")
		aM.Name = "SubContent"
		aM.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json")
		aM.Text = an.SubContent and an.SubContent or ""
		aM.TextColor3 = Color3.fromRGB(170, 170, 170)
		aM.TextSize = 14;
		aM.TextWrapped = true;
		aM.TextXAlignment = Enum.TextXAlignment.Left;
		aM.AutomaticSize = Enum.AutomaticSize.Y;
		aM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aM.BackgroundTransparency = 1;
		aM.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aM.Size = UDim2.new(1, 0, 0, 14)
		aM.Visible = an.SubContent and true or false;
		aM.Parent = aJ;
		local aN = Instance.new("UIPadding")
		aN.Name = "UIPadding"
		aN.PaddingBottom = UDim.new(0, 3)
		aN.PaddingLeft = UDim.new(0, 0)
		aN.PaddingRight = UDim.new(0, 0)
		aN.PaddingTop = UDim.new(0, 0)
		aN.Parent = aJ;
		aJ.Parent = ax;
		ax.Parent = aw;
		aw.Parent = at;
		local function Z()
			local function aO(aP)
				local aQ = aP:gsub("[^%w]", "")
				return #aQ
			end;
			local aR = math.ceil(aO(an.Content) / 31)
			local aS = an.SubContent and math.ceil(aO(an.SubContent) / 31) or 0;
			local aT = aR + aS;
			local aU = aT * 17 + 55;
			aw.Size = UDim2.new(1, 0, 0, aU)
		end;
		Z()
		b:Connect(aH.Activated, function()
			av.Closed = true;
			n:AddItem(aw, 0.1)
		end)
		c:Animation(aw, {
			Position = UDim2.new(0, 0, 1, 0)
		}, self.AnimationSpeed * 2, self.EasingStyle.Quad, self.EasingDirection.Out)
		task.delay(an.Duration, function()
			if av.Closed then
				return
			end;
			c:Animation(aw, {
				Visible = false
			}, self.AnimationSpeed * 2, self.EasingStyle.Quad, self.EasingDirection.Out)
			n:AddItem(aw, 0.1)
		end)
		return av
	end;
	local aV = self:Create("Frame", {
		Name = "TransparentFrame",
		Parent = as,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = b.Settings.Transparency,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		})
	})
	function c:SetBackgroundTransparency(aW)
		b.Settings.Transparency = aW;
		aV.BackgroundTransparency = aW
	end;
	local aB = self:Create("Frame", {
		Name = "Background",
		Parent = aV,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 0.3,
		BackgroundColor3 = self.Themes.BackgroundColor
	})
	self:Create("UICorner", {
		CornerRadius = UDim.new(0, 8),
		Parent = aB
	})
	table.insert(b.Storage.Background, aB)
	local aX = self:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, self.Themes.BackgroundColor),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
		}),
		Rotation = 90,
		Parent = aB
	})
	table.insert(b.Storage.BackgroundGradient, aX)
	local aY = self:Create("Frame", {
		Name = "AccentFrame",
		Parent = aV,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 0.3,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		})
	})
	local aZ = self:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, self.Themes.AccentColor),
			ColorSequenceKeypoint.new(1, self.Themes.AccentColor)
		}),
		Rotation = 90,
		Parent = aY
	})
	local a_ = self:Create("ImageLabel", {
		Image = "rbxassetid://9968344227",
		ImageTransparency = 0.8999999761581421,
		ScaleType = Enum.ScaleType.Tile,
		TileSize = UDim2.new(0, 128, 0, 128),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Visible = true,
		Name = "MainFrameShadow",
		Parent = aV
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		})
	})
	local b0 = self:Create("ImageLabel", {
		Name = "MainFrameShadow2",
		Parent = aV,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Image = "rbxassetid://9968344105",
		ImageTransparency = 0.98,
		ScaleType = Enum.ScaleType.Tile,
		TileSize = UDim2.new(0, 128, 0, 128)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		})
	})
	local b1 = self:Create("Frame", {
		Name = "BorderFrame",
		Parent = aV,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		}),
		self:Create("UIStroke", {
			Transparency = 0.5,
			Color = Color3.fromRGB(0, 0, 0),
			LineJoinMode = Enum.LineJoinMode.Round
		})
	})
	b:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Visible = true,
		Parent = aV
	})
	local b2 = self:Create("ImageLabel", {
		Image = "rbxassetid://8992230677",
		ImageColor3 = Color3.fromRGB(0, 0, 0),
		ImageTransparency = 0.699999988079071,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(99, 99, 99, 99),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(1, 120, 1, 116),
		Visible = true,
		Name = "Shadow",
		Parent = aV
	})
	local b3 = self:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(1, -20, 1, -20),
		Size = UDim2.new(0, 20, 0, 20),
		Visible = true,
		Name = "ResizeTouch",
		Parent = as
	})
	c:MakeResizeable(as, b3)
	local b4 = self:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 42),
		Visible = true,
		Name = "NavbarFrame",
		Parent = as
	})
	c:MakeDraggable(as, b4)
	local b5 = self:Create("TextButton", {
		FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold),
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AnchorPoint = Vector2.new(1, 0),
		BackgroundColor3 = Color3.fromRGB(240, 240, 240),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Position = UDim2.new(1, -4, 0, 4),
		Size = UDim2.new(0, 34, 1, -8),
		Visible = true,
		Name = "ExitButton",
		Parent = b4
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 7)
		}),
		self:Create("ImageLabel", {
			Image = "rbxassetid://9886659671",
			ImageColor3 = Color3.fromRGB(240, 240, 240),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 16, 0, 16),
			Visible = true,
			Name = "Icon"
		})
	})
	local b6 = self:Create("TextButton", {
		FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AnchorPoint = Vector2.new(1, 0),
		BackgroundColor3 = Color3.fromRGB(240, 240, 240),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Position = UDim2.new(1, -40, 0, 4),
		Size = UDim2.new(0, 34, 1, -8),
		Visible = true,
		Name = "MaximizeButton",
		Parent = b4
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 7)
		})
	})
	local b7 = self:Create("ImageLabel", {
		Image = "rbxassetid://9886659406",
		ImageColor3 = Color3.fromRGB(240, 240, 240),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(0, 16, 0, 16),
		Visible = true,
		Name = "Icon",
		Parent = b6
	})
	local b8 = self:Create("TextButton", {
		FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AnchorPoint = Vector2.new(1, 0),
		BackgroundColor3 = Color3.fromRGB(240, 240, 240),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Position = UDim2.new(1, -80, 0, 4),
		Size = UDim2.new(0, 34, 1, -8),
		Visible = true,
		Name = "MinimizeButton",
		Parent = b4
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 7)
		}),
		self:Create("ImageLabel", {
			Image = "rbxassetid://9886659276",
			ImageColor3 = Color3.fromRGB(240, 240, 240),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 16, 0, 16),
			Visible = true,
			Name = "Icon"
		})
	})
	local b9 = b:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 16, 0, 0),
		Size = UDim2.new(1, -16, 1, 0),
		Visible = true,
		Name = "NavbarTitle",
		Parent = b4
	}, {
		b:Create("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 5)
		})
	})
	local ba = b:Create("TextLabel", {
		FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
		RichText = true,
		Text = an.Title,
		TextColor3 = Color3.fromRGB(240, 240, 240),
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Size = UDim2.new(0, 0, 1, 0),
		Visible = true,
		Parent = b9
	})
	local bb = b:Create("TextLabel", {
		FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
		RichText = true,
		Text = an.SubTitle,
		TextColor3 = Color3.fromRGB(240, 240, 240),
		TextSize = 12,
		TextTransparency = 0.4000000059604645,
		TextXAlignment = Enum.TextXAlignment.Left,
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Size = UDim2.new(0, 0, 1, 0),
		Visible = true,
		Parent = b9
	})
	local bc = b:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(75, 75, 75),
		BackgroundTransparency = 0.5,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 1, 0),
		Size = UDim2.new(1, 0, 0, 1),
		Visible = true,
		Name = "UnderlineFrame",
		Parent = b4
	})
	local bd = b:Create("TextLabel", {
		RichText = true,
		Visible = false,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		FontFace = b.Settings.FontFace or Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
		TextSize = 28,
		Size = UDim2.new(1, -16, 0, 28),
		TextColor3 = Color3.fromRGB(240, 240, 240),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Text = "Main",
		Position = UDim2.new(0, 186, 0, 56),
		BackgroundTransparency = 1,
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = as
	})
	local be = b:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		ClipsDescendants = true,
		Position = UDim2.new(0, 12, 0, 54),
		Size = UDim2.new(0, an.TabWidth, 1, -54),
		Visible = true,
		Name = "SidebarHolder",
		Parent = as
	})
	local bf = b:Create("ScrollingFrame", {
		CanvasSize = UDim2.new(0, 0, 0, 0),
		AutomaticCanvasSize = Enum.AutomaticSize.XY,
		ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0),
		ScrollBarImageTransparency = 1,
		ScrollBarThickness = 0,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Visible = true,
		Name = "SidebarFrame",
		Parent = be
	}, {
		b:Create("UIListLayout", {
			Padding = UDim.new(0, 4)
		})
	})
	local bg = b:Create("Frame", {
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundColor3 = b.Themes.BackgroundColor,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0, 17),
		Size = UDim2.new(0, 4, 0, 16),
		Visible = false,
		Name = "SelectedFrame",
		Parent = be
	})
	b:Create("UICorner", {
		CornerRadius = UDim.new(0, 2),
		Parent = bg
	})
	table.insert(b.Storage.SelectedFrame, bg)
	local bh = b:Create("CanvasGroup", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 186, 0, 94),
		Size = UDim2.new(1, -192, 1, -102),
		Visible = true,
		Name = "ObjectElements",
		Parent = as
	})
	b.Maximized = false;
	c:Thread(function()
		b:Connect(b6.Activated, function()
			b.Maximized = not b.Maximized;
			b7.Image = b.Maximized and 'rbxassetid://9886659001' or 'rbxassetid://9886659406'
			c:Animation(as, {
				Size = b.Maximized and UDim2.new(1, 0, 1, 0) or an.Size
			}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
			c:Animation(as, {
				Position = b.Maximized and UDim2.new(0.5, 0, 0.5, 0) or UDim2.new(0.5, 0, 0.5, 0)
			}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
		end)
		b:Connect(b5.Activated, function()
			b:Destroy()
			pcall(an.ExitCallback)
		end)
		b:Connect(b8.Activated, function()
			b:Toggle()
			b:Notify({
				Title = "Notification",
				Content = "Window minimized.\nPress the button " .. self.Settings.Keybind.Name .. " again to open it.",
				Duration = 15
			})
		end)
	end)
	function am:AddTab(t)
		local bi = {}
		local t = t or {}
		local an = {
			Title = t.title or t.Title or "Tab",
			Description = t.description or t.Description or t.Desc or t.Desc or t.title or t.Title or "Tab",
			Icon = t.icon or t.Icon or ""
		}
		local bj = b:Create("TextButton", {
			FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
			Text = "",
			TextColor3 = Color3.fromRGB(0, 0, 0),
			TextSize = 14,
			BackgroundColor3 = Color3.fromRGB(120, 120, 120),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Size = UDim2.new(1, 0, 0, 34),
			Visible = true,
			Name = "SidebarOptionButton",
			Parent = bf
		}, {
			b:Create("UICorner", {
				CornerRadius = UDim.new(0, 6)
			})
		})
		local bk = b:Create("ScrollingFrame", {
			Name = "ObjectScrollingFrame",
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			BottomImage = "rbxassetid://6889812791",
			CanvasSize = UDim2.fromOffset(0, 527),
			MidImage = "rbxassetid://6889812721",
			ScrollBarImageTransparency = 0.95,
			ScrollBarThickness = 3,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			TopImage = "rbxassetid://6276641225",
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			Visible = false,
			Parent = bh
		}, {
			b:Create("UIListLayout", {
				Padding = UDim.new(0, 5),
				SortOrder = Enum.SortOrder.LayoutOrder
			}),
			b:Create("UIPadding", {
				PaddingBottom = UDim.new(0, 1),
				PaddingLeft = UDim.new(0, 1),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 1)
			})
		})
		if an.Icon ~= "" then
			local bl = c:GetIcon(an.Icon)
			local bm = b:Create("ImageLabel", {
				Image = bl,
				ImageColor3 = Color3.fromRGB(240, 240, 240),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 8, 0.5, 0),
				Size = UDim2.new(0, 16, 0, 16),
				Visible = true,
				Parent = bj
			})
		end;
		local bn = b:Create("TextLabel", {
			FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
			RichText = true,
			Text = an.Title,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Position = UDim2.new(0, an.Icon ~= "" and 30 or 12, 0.5, 0),
			Size = UDim2.new(1, -12, 1, 0),
			Visible = true,
			Parent = bj
		})
		function bi:Select()
			if am.Active ~= bi then
				am.Active = bi;
				local bo = UDim2.new(0, 0, 0, bj.AbsolutePosition.Y - bf.AbsolutePosition.Y + 17)
				c:Thread(function()
					for q, r in next, bf:GetChildren() do
						if r:IsA("TextButton") then
							r.BackgroundTransparency = 1
						end
					end;
					for q, r in pairs(bh:GetChildren()) do
						if r:IsA("ScrollingFrame") then
							r.Visible = false
						end
					end;
					c:Animation(bg, {
						Position = bo,
						Visible = true
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(bj, {
						BackgroundTransparency = 0.8
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(bk, {
						Visible = true
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					bd.Visible = true;
					bd.Text = an.Description
				end)
			end
		end;
		c:Thread(function()
			b:Connect(bj.Activated, function()
				bi:Select()
			end)
		end)
		function am:Dialog(t)
			local bp = {}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Dialog",
				Content = t.content or t.Content or "This is a dialog.",
				Buttons = t.buttons or t.Buttons or {
					Title = "Confirm",
					Callback = function()
					end
				},
				{
					Title = "Cancel",
					Callback = function()
					end
				}
			}
			local bq = Instance.new("TextButton")
			bq.Name = "DialogHolder"
			bq.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json")
			bq.Text = ""
			bq.TextColor3 = Color3.fromRGB(0, 0, 0)
			bq.TextSize = 14;
			bq.AutoButtonColor = false;
			bq.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			bq.BackgroundTransparency = 0.75;
			bq.BorderColor3 = Color3.fromRGB(0, 0, 0)
			bq.Size = UDim2.fromScale(1, 1)
			bq.Parent = as;
			local aA = Instance.new("UICorner")
			aA.Name = "UICorner"
			aA.Parent = bq;
			local br = Instance.new("Frame")
			br.Name = "DialogHolderFrame"
			br.AnchorPoint = Vector2.new(0.5, 0.5)
			br.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			br.BorderColor3 = Color3.fromRGB(0, 0, 0)
			br.BorderSizePixel = 0;
			br.Position = UDim2.fromScale(0.5, 0.5)
			br.Size = UDim2.fromOffset(141, 165)
			local aC = Instance.new("UICorner")
			aC.Name = "UICorner"
			aC.Parent = br;
			local bs = Instance.new("UIScale")
			bs.Name = "UIScale"
			bs.Parent = br;
			local bt = Instance.new("UIStroke")
			bt.Name = "UIStroke"
			bt.Color = Color3.fromRGB(70, 70, 70)
			bt.Thickness = 0;
			bt.Transparency = 0.5;
			bt.Parent = br;
			local bu = Instance.new("Frame")
			bu.Name = "DialogHolder"
			bu.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			bu.BorderColor3 = Color3.fromRGB(0, 0, 0)
			bu.BorderSizePixel = 0;
			bu.Position = UDim2.new(0, 0, 1, -70)
			bu.Size = UDim2.new(1, 0, 0, 70)
			local bp = Instance.new("Frame")
			bp.Name = "Dialog"
			bp.AnchorPoint = Vector2.new(0.5, 0.5)
			bp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			bp.BackgroundTransparency = 1;
			bp.BorderColor3 = Color3.fromRGB(0, 0, 0)
			bp.BorderSizePixel = 0;
			bp.Position = UDim2.fromScale(0.5, 0.5)
			bp.Size = UDim2.new(1, -40, 1, -40)
			local au = Instance.new("UIListLayout")
			au.Name = "UIListLayout"
			au.Padding = UDim.new(0, 10)
			au.FillDirection = Enum.FillDirection.Horizontal;
			au.HorizontalAlignment = Enum.HorizontalAlignment.Center;
			au.SortOrder = Enum.SortOrder.LayoutOrder;
			au.Parent = bp;
			local bv = Instance.new("Frame")
			bv.Name = "DialogUnderline"
			bv.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			bv.BorderColor3 = Color3.fromRGB(0, 0, 0)
			bv.BorderSizePixel = 0;
			bv.Size = UDim2.new(1, 0, 0, 1)
			bv.Parent = bu;
			local bw = Instance.new("UICorner")
			bw.Name = "UICorner"
			bw.Parent = bu;
			local bx = Instance.new("UIGradient")
			bx.Name = "UIGradient"
			bx.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, b.Themes.BackgroundColor),
				ColorSequenceKeypoint.new(1, b.Themes.BackgroundColor)
			})
			table.insert(b.Storage.Notification, bx)
			bx.Parent = bu;
			bu.Parent = br;
			local by = Instance.new("TextLabel")
			by.Name = "DialogContent"
			by.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json")
			by.Text = an.Content;
			by.TextColor3 = Color3.fromRGB(240, 240, 240)
			by.TextSize = 14;
			by.TextXAlignment = Enum.TextXAlignment.Left;
			by.TextYAlignment = Enum.TextYAlignment.Top;
			by.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			by.BackgroundTransparency = 1;
			by.BorderColor3 = Color3.fromRGB(0, 0, 0)
			by.Position = UDim2.fromOffset(20, 60)
			by.Size = UDim2.new(1, -40, 1, 0)
			by.Parent = br;
			local bz = Instance.new("TextLabel")
			bz.Name = "DialogTite"
			bz.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
			bz.Text = tostring(an.Title)
			bz.TextColor3 = Color3.fromRGB(240, 240, 240)
			bz.TextSize = 22;
			bz.TextXAlignment = Enum.TextXAlignment.Left;
			bz.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			bz.BackgroundTransparency = 1;
			bz.BorderColor3 = Color3.fromRGB(0, 0, 0)
			bz.Position = UDim2.fromOffset(20, 25)
			bz.Size = UDim2.new(1, 0, 0, 22)
			bz.Parent = br;
			local bA = Instance.new("UIGradient")
			bA.Name = "UIGradient"
			bA.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, b.Themes.BackgroundColor),
				ColorSequenceKeypoint.new(1, b.Themes.BackgroundColor)
			})
			bA.Parent = br;
			table.insert(b.Storage.Notification, bA)
			local bB = Instance.new("UISizeConstraint")
			bB.Name = "UISizeConstraint"
			bB.MaxSize = Vector2.new(620, math.huge)
			bB.MinSize = Vector2.new(300, 165)
			bB.Parent = br;
			br.Parent = bq;
			for q, r in pairs(an.Buttons) do
				local bC = Instance.new("TextButton")
				bC.Name = "DialogOption"
				bC.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json")
				bC.Text = ""
				bC.TextColor3 = Color3.fromRGB(0, 0, 0)
				bC.TextSize = 14;
				bC.AutoButtonColor = false;
				bC.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				bC.BorderColor3 = Color3.fromRGB(0, 0, 0)
				bC.Size = UDim2.new(0.5, -5, 0, 32)
				local aE = Instance.new("UICorner")
				aE.Name = "UICorner"
				aE.CornerRadius = UDim.new(0, 4)
				aE.Parent = bC;
				local bD = Instance.new("UIStroke")
				bD.Name = "UIStroke"
				bD.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				bD.Color = Color3.fromRGB(30, 30, 30)
				bD.Transparency = 0.65;
				bD.Parent = bC;
				local bE = Instance.new("TextLabel")
				bE.Name = "DialogTitle"
				bE.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json")
				bE.Text = r.Title;
				bE.TextColor3 = Color3.fromRGB(240, 240, 240)
				bE.TextSize = 14;
				bE.TextWrapped = true;
				bE.AutomaticSize = Enum.AutomaticSize.Y;
				bE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				bE.BackgroundTransparency = 1;
				bE.BorderColor3 = Color3.fromRGB(0, 0, 0)
				bE.Size = UDim2.fromScale(1, 1)
				bE.Parent = bC;
				local aF = Instance.new("UIGradient")
				aF.Name = "UIGradient"
				aF.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, b.Themes.BackgroundColor),
					ColorSequenceKeypoint.new(1, b.Themes.BackgroundColor)
				})
				table.insert(b.Storage.BackgroundGradient, aF)
				aF.Parent = bC;
				bC.Parent = bp;
				bp.Parent = bu;
				b:Connect(bC.Activated, function()
					bq:Destroy()
					if r.Callback then
						r.Callback()
					end
				end)
			end;
			return bp
		end;
		function bi:AddParagraph(t)
			local bF = {}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Paragraph",
				Content = t.content or t.Content or t.desc or t.Desc or "This is a paragraph.",
				Sections = t.sections or t.Sections or false
			}
			local bG = an.Sections and an.Sections or bk;
			local bH = b:Create("TextButton", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				Text = "",
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.8700000047683716,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "ParagraphHolder",
				Parent = bG
			}, {
				b:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local bI = b:Create("TextButton", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Text = "",
				Name = "ParagraphFrame",
				Parent = bH
			}, {
				b:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				b:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local bJ = b:Create("TextLabel", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ParagraphTitle",
				Parent = bI
			})
			local bK = b:Create("TextLabel", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				Text = an.Content,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ParagraphDesc",
				Parent = bI
			})
			local bL = bK.TextBounds.Y;
			local bM = bJ.TextBounds.Y;
			bJ.Size = UDim2.new(1, 0, 0, bM)
			bK.Size = UDim2.new(1, 0, 0, bL)
			function bF:Update()
				local bL = bK.TextBounds.Y;
				local bM = bJ.TextBounds.Y;
				bJ.Size = UDim2.new(1, 0, 0, bM)
				bK.Size = UDim2.new(1, 0, 0, bL)
			end;
			function bF:Set(t)
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Paragraph",
					Content = t.content or t.Content or t.desc or t.Desc or "This is a paragraph."
				}
				bJ.Text = an.Title;
				bK.Text = an.Content;
				bF:Update()
			end;
			function bF:SetTitle(bN)
				bJ.Text = bN;
				bF:Update()
			end;
			function bF:SetDesc(bN)
				bK.Text = bN;
				bF:Update()
			end;
			return bF
		end;
		function bi:AddLabel(t)
			local bF = {}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Paragraph",
				Sections = t.sections or t.Sections or false
			}
			local bG = an.Sections and an.Sections or bk;
			local bH = b:Create("TextButton", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				Text = "",
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.8700000047683716,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "ParagraphHolder",
				Parent = bG
			}, {
				b:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local bI = b:Create("TextButton", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Text = "",
				Name = "ParagraphFrame",
				Parent = bH
			}, {
				b:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				b:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local LabelTitle = b:Create("TextLabel", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "LabelTitle",
				Parent = bI
			})
			local bM = LabelTitle.TextBounds.Y;
			LabelTitle.Size = UDim2.new(1, 0, 0, bM)
			function bF:Update()
				local bM = LabelTitle.TextBounds.Y;
				LabelTitle.Size = UDim2.new(1, 0, 0, bM)
			end;
			function bF:Set(t)
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Label",
					Content = t.content or t.Content or t.desc or t.Desc or "This is a Label."
				}
				LabelTitle.Text = an.Title;
				bF:Update()
			end;
			function bF:Refresh(bN)
				LabelTitle.Text = bN;
				bF:Update()
			end;
			function bF:UpdateColor(bN)
				LabelTitle.TextColor3 = bN;
				bF:Update()
			end;
			function bF:Options()
				return LabelTitle
			end;
			return bF
		end;
		function bi:AddButton(t)
			local bO = {}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Button",
				Description = t.description or t.Description or t.desc or t.Desc,
				Callback = t.callback or t.Callback or function()
				end,
				Sections = t.sections or t.Sections or false
			}
			local bP = b:Create("TextButton", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.8700000047683716,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "ButtonHolder",
				Parent = an.Sections and an.Sections or bk
			}, {
				b:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local bQ = b:Create("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Name = "ButtonFrame",
				Parent = bP
			}, {
				b:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				b:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local bR = b:Create("TextLabel", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ButtonTitle",
				Parent = bQ
			})
			if an.Description then
				if an.Description ~= '' then
					local bS = b:Create("TextLabel", {
						FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
						Text = an.Description,
						TextColor3 = Color3.fromRGB(170, 170, 170),
						TextSize = 12,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderColor3 = Color3.fromRGB(0, 0, 0),
						Size = UDim2.new(1, 0, 0, 14),
						Visible = true,
						Name = "ButtonDesc",
						Parent = bQ
					})
				end
			end;
			local bT = b:Create("ImageLabel", {
				Image = "rbxassetid://10709791437",
				ImageColor3 = Color3.fromRGB(240, 240, 240),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(0, 16, 0, 16),
				Visible = true,
				Name = "ButtonImage",
				Parent = bP
			})
			function bO:Set(t)
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Button",
					Description = t.description or t.Description or t.desc or t.Desc or "",
					Callback = t.callback or t.Callback or function()
					end
				}
				bR.Text = an.Title;
				bO.Callback = an.Callback
			end;
			b:Connect(bP.Activated, function()
				an.Callback()
			end)
			return bO
		end;
		function bi:AddToggle(t)
			local bU = {
				Callback = function()
				end
			}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Toggle",
				Description = t.description or t.Description or t.desc or t.Desc,
				Default = t.default or t.Default or false,
				Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
				Sections = t.sections or t.Sections or false,
				Callback = t.Callback or t.callback or t.CallBack
			}
			local bV = b:Create("TextButton", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.8700000047683716,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "ToggleHolder",
				Parent = an.Sections and an.Sections or bk
			}, {
				b:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local bW = b:Create("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Name = "ToggleFrame",
				Parent = bV
			}, {
				b:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				b:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			b:Create("TextLabel", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ToggleTitle",
				Parent = bW
			})
			if an.Description then
				if an.Description ~= '' then
					local bY = b:Create("TextLabel", {
						FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
						Text = an.Description,
						TextColor3 = Color3.fromRGB(170, 170, 170),
						TextSize = 12,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderColor3 = Color3.fromRGB(0, 0, 0),
						Size = UDim2.new(1, -54, 0, 14),
						Visible = true,
						Name = "ToggleDesc",
						Parent = bW
					})
					local bL = bY.TextBounds.Y;
					bY.Size = UDim2.new(1, -54, 0, bL)
				end
			end;
			local bZ = c:LightenColor(b.Themes.BackgroundColor, 0.5)
			local b_ = c:LightenColor(b.Themes.BackgroundColor, 0.25)
			local c0 = b:Create("Frame", {
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = bZ,
				BackgroundTransparency = an.Default and 0.5 or 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(0, 36, 0, 18),
				Visible = true,
				Name = "Toggle",
				Parent = bV
			})
			b:Create("UICorner", {
				CornerRadius = UDim.new(0, 9),
				Parent = c0
			})
			table.insert(b.Storage.Toggles, c0)
			local c1 = b:Create("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = Color3.fromRGB(125, 125, 125),
				Parent = c0
			})
			local c2 = b:Create("ImageLabel", {
				Image = "http://www.roblox.com/asset/?id=12266946128",
				ImageColor3 = an.Default and b_ or Color3.fromRGB(255, 255, 255),
				ImageTransparency = 0.5,
				AnchorPoint = an.Default and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = an.Default and UDim2.new(1, -2, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
				Size = UDim2.new(0, 14, 0, 14),
				Visible = true,
				Name = "ToggleImage",
				Parent = c0
			})
			table.insert(b.Storage.ToggleImages, c2)
			local OldToggleColor = b_;
			function bU:Set(c5)
				an.Default = c5;
				if an.Flags then
					b.Flags[tostring(an.Flags)] = an.Default
				end;
				bZ = c:LightenColor(b.Themes.BackgroundColor, 0.5)
				b_ = c:LightenColor(b.Themes.BackgroundColor, 0.25)
				c:Thread(function()
					c:Animation(c0, {
						BackgroundTransparency = an.Default and 0.5 or 1
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						AnchorPoint = an.Default and Vector2.new(1, 0.5) or Vector2.new(0, 0.5)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						Position = an.Default and UDim2.new(1, -2, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						ImageTransparency = an.Default and 0 or 0.5
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						ImageColor3 = an.Default and b_ or Color3.fromRGB(125, 125, 125)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c1, {
						Color = an.Default and b.Themes.AccentColor or Color3.fromRGB(125, 125, 125)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c1, {
						Thickness = an.Default and 0 or 1
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				end)
				if bU.Callback then
					an.Callback(an.Default)
				end;
				return bU
			end;
			if an.Flags then
				b.Flags[tostring(an.Flags)] = an.Default
			end;
			bV.Activated:Connect(function()
				an.Default = not an.Default;
				if an.Flags then
					b.Flags[tostring(an.Flags)] = an.Default
				end;
				bU:Set(an.Default)
			end)
			if an.Default then
				bU:Set(an.Default)
			end;
			return bU
		end;
		function bi:AddDropdown(t)
			local c7 = {
				Expanded = false,
				Options = {},
				Callback = function()
				end
			}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Dropdown",
				Description = t.description or t.Description or t.desc or t.Desc or "",
				Values = t.values or t.Values or t.options or t.Options or t.list or t.List or {},
				Multi = t.multi or t.Multi or false,
				Default = t.default or t.Default or {},
				Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
				Sections = t.sections or t.Sections or false,
				Callback = t.Callback or t.callback or t.CallBack
			}
			local c8 = an.Sections and an.Sections or bk;
			local c9 = b:Create("TextButton", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.8700000047683716,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "DropdownHolder",
				Parent = c8
			}, {
				b:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local ca = b:Create("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Name = "DropdownFrame",
				Parent = c9
			}, {
				b:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				b:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local cb = b:Create("TextLabel", {
				Name = "DropdownTitle",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Parent = ca
			})
			local cc = b:Create("TextButton", {
				Name = "DropdownOptions",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutoButtonColor = false,
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(160, 160, 160),
				BackgroundTransparency = 0.9,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.fromOffset(160, 30),
				Parent = c9,
				AutomaticSize = Enum.AutomaticSize.Y,
				SizeConstraint = Enum.SizeConstraint.RelativeYY
			}, {
				b:Create("UICorner", {
					CornerRadius = UDim.new(0, 5)
				}),
				b:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(90, 90, 90),
					Transparency = 0.5
				})
			})
			local cd = typeof(an.Default) == "table" and table.concat(an.Default, ", ") or an.Default;
			local ce = b:Create("TextLabel", {
				Name = "TextLabel",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text = cd,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.new(0, 8, 0.5, 0),
				Size = UDim2.new(1, -30, 0, 14),
				Parent = cc
			})
			local cf = b:Create("ImageLabel", {
				Name = "ImageLabel",
				Image = "rbxassetid://10709790948",
				ImageColor3 = Color3.fromRGB(170, 170, 170),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Rotation = 270,
				BorderSizePixel = 0,
				Position = UDim2.new(1, -8, 0.5, 0),
				Size = UDim2.fromOffset(16, 16),
				Parent = cc
			})
			local cg = b:Create("Frame", {
				Name = "OptionPopupHolder",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(478, 219),
				Size = UDim2.fromOffset(82, 392),
				Visible = false,
				ZIndex = 2,
				Parent = ar
			})
			local bB = b:Create("UISizeConstraint", {
				Name = "UISizeConstraint",
				MinSize = Vector2.new(170, 0),
				Parent = cg
			})
			local ch = b:Create("Frame", {
				Name = "OptionFrame",
				BackgroundColor3 = Color3.fromRGB(45, 45, 45),
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Size = UDim2.fromScale(1, 0.6),
				Parent = cg
			}, {
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 6)
				}),
				b:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				}),
				b:Create("ImageLabel", {
					Name = "ImageLabel",
					Image = "http://www.roblox.com/asset/?id=5554236805",
					ImageColor3 = Color3.fromRGB(0, 0, 0),
					ImageTransparency = 0.1,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(23, 23, 277, 277),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					BorderSizePixel = 0,
					Position = UDim2.fromOffset(-15, -15),
					Size = UDim2.new(1, 30, 1, 30)
				})
			})
			local ci = b:Create("ScrollingFrame", {
				Name = "OptionScrollingFrame",
				BottomImage = "rbxassetid://6889812791",
				CanvasSize = UDim2.fromOffset(0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				MidImage = "rbxassetid://6889812721",
				ScrollBarImageTransparency = 0.95,
				ScrollBarThickness = 4,
				TopImage = "rbxassetid://6276641225",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(5, 5),
				Size = UDim2.new(1, -5, 1, -10),
				Parent = ch
			}, {
				b:Create("UIListLayout", {
					Name = "UIListLayout",
					Padding = UDim.new(0, 3)
				})
			})
			local cj = b:Create("UIGradient", {
				Name = "DropdownGradient",
				Rotation = 90,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, b.Themes.BackgroundColor),
					ColorSequenceKeypoint.new(1, c:LightenColor(b.Themes.BackgroundColor, 0.5))
				}),
				Parent = ch
			})
			table.insert(b.Storage.DropdownGradient, cj)
			function c7:AddItems(ck, cl)
				local ck = ck or "OptionValue"
				local cl = cl or false;
				local cm = b:Create("TextButton", {
					Name = "Option",
					FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextSize = 14,
					AutoButtonColor = false,
					BackgroundColor3 = Color3.fromRGB(120, 120, 120),
					BackgroundTransparency = cl and 0.9 or 1,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					Size = UDim2.new(1, -5, 0, 32),
					ZIndex = 23,
					Parent = ci
				}, {
					b:Create("UICorner", {
						Name = "UICorner",
						CornerRadius = UDim.new(0, 6)
					})
				})
				local cn = b:Create("Frame", {
					Name = "Selected",
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = b.Themes.BackgroundColor,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					BorderSizePixel = 0,
					Position = UDim2.fromOffset(-1, 16),
					Size = UDim2.fromOffset(4, 14),
					Visible = cl,
					Parent = cm
				})
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 2),
					Parent = cn
				})
				table.insert(b.Storage.Selected, cn)
				table.insert(c7.Options, {
					Selected = cn,
					Option = cm
				})
				local co = b:Create("TextLabel", {
					Name = "OptionLabel",
					FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
					Text = ck,
					TextColor3 = Color3.fromRGB(240, 240, 240),
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					Position = UDim2.fromOffset(10, 0),
					Size = UDim2.fromScale(1, 1),
					Parent = cm
				})
				function c7:Update(cp)
					ce.Text = typeof(an.Default) == "table" and table.concat(an.Default, ", ") or an.Default;
					if not cp then
						c7.Expanded = false;
						cg.Visible = false
					end
				end;
				b:Connect(cm.Activated, function()
					if an.Multi then
						if table.find(an.Default, ck) then
							table.remove(an.Default, table.find(an.Default, ck))
						else
							table.insert(an.Default, ck)
						end;
						c:Thread(function()
							cn.Visible = type(an.Default) == "table" and table.find(an.Default, ck) or an.Default == ck;
							c:Animation(cm, {
								BackgroundTransparency = table.find(an.Default, ck) and 0.9 or 1
							}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
						end)
					else
						an.Default = ck;
						c:Thread(function()
							for q, r in pairs(c7.Options) do
								r.Selected.Visible = false;
								c:Animation(r.Option, {
									BackgroundTransparency = 1
								}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
							end;
							cn.Visible = type(an.Default) == "table" and table.find(an.Default, ck) or an.Default == ck;
							c:Animation(cm, {
								BackgroundTransparency = 0.9
							}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
						end)
					end;
					if an.Flags then
						b.Flags[tostring(an.Flags)] = an.Default
					end;
					ce.Text = typeof(an.Default) == "table" and table.concat(an.Default, ", ") or an.Default;
					if an.Callback then
						if typeof(an.Default) == 'table' and not an.Multi then
							for i, v in pairs(an.Default) do
								an.Callback(v)
							end
						else
							an.Callback(an.Default)
						end
					end
				end)
			end;
			function c7:Clear()
				c7.Options = {}
				for _, child in pairs(ci:GetChildren()) do
					if child:IsA("TextButton") then
						child:Destroy()
					end
				end;
				an.Values = {}
				an.Default = {}
				ce.Text = ""
				if an.Flags then
					b.Flags[tostring(an.Flags)] = an.Default
				end
			end;
			function c7:Add(value)
				if typeof(value) == "table" then
					for _, v in pairs(value) do
						if not table.find(an.Values, v) then
							table.insert(an.Values, v)
							c7:AddItems(v, typeof(an.Default) == "table" and table.find(an.Default, v) or an.Default == v)
						end
					end
				else
					if not table.find(an.Values, value) then
						table.insert(an.Values, value)
						c7:AddItems(value, typeof(an.Default) == "table" and table.find(an.Default, value) or an.Default == value)
					end
				end
			end;
			function c7:SetValues(var)
				local newValues = {}
				if typeof(var) ~= 'table' then
					table.insert(newValues, var)
				else
					newValues = var
				end;
				c7.Options = {}
				for _, child in pairs(ci:GetChildren()) do
					if child:IsA("TextButton") then
						child:Destroy()
					end
				end;
				an.Values = {}
				if type(newValues) == "table" then
					for _, v in pairs(newValues) do
						if not table.find(an.Values, v) then
							table.insert(an.Values, v)
							c7:AddItems(v, false)
						end
					end
				else
					if not table.find(an.Values, newValues) then
						table.insert(an.Values, newValues)
						c7:AddItems(newValues, false)
					end
				end;
				ce.Text = typeof(an.Default) == "table" and table.concat(an.Default, ", ") or an.Default;
				if an.Callback then
					if typeof(an.Default) == 'table' and not an.Multi then
						for i, v in pairs(an.Default) do
							an.Callback(v)
						end
					else
						an.Callback(an.Default)
					end
				end
			end;
			for q, r in pairs(an.Values) do
				c7:AddItems(r, typeof(an.Default) == "table" and table.find(an.Default, r) or an.Default == r)
			end;
			if an.Flags then
				b.Flags[tostring(an.Flags)] = an.Default
			end;
			b:Connect(i.InputBegan, function(_, a2)
				if (_.UserInputType == Enum.UserInputType.MouseButton1 or _.UserInputType == Enum.UserInputType.Touch) and not a2 then
					if c7.Expanded or cg.Visible then
						c7.Expanded = false;
						cg.Visible = false;
						bk.ScrollingEnabled = true
					end
				end
			end)
			b:Connect(bk:GetPropertyChangedSignal("Visible"), function()
				if c7.Expanded or cg.Visible then
					c7.Expanded = false;
					cg.Visible = false;
					bk.ScrollingEnabled = true
				end
			end)
			b:Connect(as:GetPropertyChangedSignal("Visible"), function()
				if c7.Expanded or cg.Visible then
					c7.Expanded = false;
					cg.Visible = false;
					bk.ScrollingEnabled = true
				end
			end)
			function c7:Hide()
				c7.Expanded = false;
				cg.Visible = false;
				bk.ScrollingEnabled = true
			end;
			function c7:OnChanged(c6)
				an.Callback = c6;
				return c7
			end;
			table.insert(b.Elements.Dropdowns, c7)
			b:Connect(cc.Activated, function()
				c7.Expanded = not c7.Expanded;
				if c7.Expanded then
					for q, r in pairs(b.Elements.Dropdowns) do
						if r ~= c7 then
							r:Hide()
						end
					end;
					bk.ScrollingEnabled = false;
					local cr = cc.AbsolutePosition;
					cg.Position = not b.Maximized and UDim2.fromOffset(cr.X + 0, cr.Y) or UDim2.fromOffset(cr.X, cr.Y)
					c:Animation(cg, {
						Visible = true
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				else
					bk.ScrollingEnabled = true;
					c:Animation(cg, {
						Visible = false
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				end
			end)
			if an.Callback then
				if typeof(an.Default) == 'table' and not an.Multi then
					for i, v in pairs(an.Default) do
						an.Callback(v)
					end
				else
					an.Callback(an.Default)
				end
			end;
			return c7
		end;
		function bi:AddSlider(t)
			local cs = {
				Holding = false,
				Callback = function()
				end
			}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Slider",
				Description = t.description or t.Description or t.desc or t.Desc,
				Default = t.default or t.Default or t.value or t.Value or 0,
				Min = t.min or t.Min or 0,
				Max = t.max or t.Max or 100,
				Decimal = t.decimal or t.Decimal or 1,
				Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
				Sections = t.sections or t.Sections or false,
				Callback = t.Callback or t.callback or t.CallBack
			}
			local ct = b:Create("TextButton", {
				Name = "SliderHolder",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutoButtonColor = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.9,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.fromScale(1, 0),
				Visible = true,
				Parent = an.Sections and an.Sections or bk
			}, {
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local cu = b:Create("Frame", {
				Name = "SliderFrame",
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(10, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Parent = ct
			}, {
				b:Create("UIListLayout", {
					Name = "UIListLayout",
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				b:Create("UIPadding", {
					Name = "UIPadding",
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local cv = b:Create("TextLabel", {
				Name = "SliderTitle",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Parent = cu
			})
			if an.Description then
				if an.Description ~= '' then
					local cw = b:Create("TextLabel", {
						Name = "SliderDesc",
						FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
						Text = an.Description,
						TextColor3 = Color3.fromRGB(170, 170, 170),
						TextSize = 12,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderColor3 = Color3.fromRGB(0, 0, 0),
						Size = UDim2.new(1, -170, 0, 14),
						Parent = cu
					})
				end
			end;
			local cx = b:Create("Frame", {
				Name = "Slider",
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.4,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(1, 0, 0, 4),
				Parent = ct
			}, {
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(1, 0)
				}),
				b:Create("UISizeConstraint", {
					Name = "UISizeConstraint",
					MaxSize = Vector2.new(150, math.huge)
				})
			})
			local cy = b:Create("TextBox", {
				Name = "SliderText",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text = an.Default,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Right,
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.new(0, -4, 0.5, 0),
				Size = UDim2.fromOffset(100, 14),
				Parent = cx
			})
			local cz = math.clamp(an.Default / an.Max, 0, 1)
			cz = cz ~= cz and 0 or cz;
			cz = math.floor(cz / an.Decimal) * an.Decimal;
			local cA = b:Create("Frame", {
				Name = "SliderValue",
				BackgroundColor3 = b.Themes.BackgroundColor,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Size = UDim2.fromScale(cz, 1),
				Parent = cx
			})
			b:Create("UICorner", {
				Name = "UICorner",
				CornerRadius = UDim.new(1, 0),
				Parent = cA
			})
			table.insert(b.Storage.SliderValue, cA)
			local cB = b:Create("Frame", {
				Name = "SliderMaxValue",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(7, 0),
				Size = UDim2.new(1, -14, 1, 0),
				Parent = cx
			})
			local cC = b:Create("ImageLabel", {
				Name = "SliderImage",
				Image = "http://www.roblox.com/asset/?id=12266946128",
				ImageColor3 = b.Themes.BackgroundColor,
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(cz, -7, 0.5, 0),
				Size = UDim2.fromOffset(14, 14),
				Parent = cB
			})
			table.insert(b.Storage.SliderImage, cC)
			b:Connect(cC.InputBegan, function(_, a2)
				if _.UserInputType == Enum.UserInputType.MouseButton1 or _.UserInputType == Enum.UserInputType.Touch and not a2 then
					cs.Holding = true
				end
			end)
			b:Connect(cC.InputEnded, function(_, a2)
				if _.UserInputType == Enum.UserInputType.MouseButton1 and not a2 then
					cs.Holding = false
				end
			end)
			b:Connect(i.TouchEnded, function(_, a2)
				if cs.Holding and _.UserInputType == Enum.UserInputType.Touch then
					cs.Holding = false
				end
			end)
			if an.Flags then
				b.Flags[tostring(an.Flags)] = an.Default
			end;
			function cs:OnChanged(c6)
				cs.Callback = c6;
				if cs.Callback then
					cs.Callback(an.Default)
				end;
				return cs
			end;
			function cs:SetValue(z)
				z = math.clamp(math.round(z / an.Decimal) * an.Decimal, an.Min, an.Max)
				z = math.floor(z / an.Decimal) * an.Decimal;
				z = c:Decimal(z, an.Decimal)
				local cD = UDim2.new((z - an.Min) / (an.Max - an.Min), -7, 0.5, 0)
				c:Animation(cC, {
					Position = cD
				}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				c:Animation(cA, {
					Size = UDim2.fromScale((z - an.Min) / (an.Max - an.Min), 1)
				}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				an.Default = z;
				cy.Text = tostring(z)
				if an.Flags then
					b.Flags[tostring(an.Flags)] = z
				end;
				if cs.Callback then
					cs.Callback(z)
				end;
				pcall(an.Callback, z)
			end;
			if an.Default then
				cs:SetValue(an.Default)
			end;
			b:Connect(cy.FocusLost, function()
				local z = tonumber(cy.Text) or an.Min;
				z = math.clamp(math.round(z / an.Decimal) * an.Decimal, an.Min, an.Max)
				z = math.floor(z / an.Decimal) * an.Decimal;
				z = c:Decimal(z, an.Decimal)
				local cD = UDim2.new((z - an.Min) / (an.Max - an.Min), -7, 0.5, 0)
				c:Animation(cC, {
					Position = cD
				}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				c:Animation(cA, {
					Size = UDim2.fromScale((z - an.Min) / (an.Max - an.Min), 1)
				}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				cy.Text = tostring(z)
				if an.Flags then
					b.Flags[tostring(an.Flags)] = z
				end;
				if cs.Callback then
					cs.Callback(z)
				end;
				pcall(an.Callback, z)
			end)
			b:Connect(i.InputChanged, function(_)
				if cs.Holding and (_.UserInputType == Enum.UserInputType.MouseMovement or _.UserInputType == Enum.UserInputType.Touch) then
					local cB = cC.Parent.AbsoluteSize.X;
					local cA;
					cA = _.Position.X - cC.Parent.AbsolutePosition.X;
					local cz = math.clamp((cA - 7) / cB, 0, 1)
					local cE = an.Min + (an.Max - an.Min) * cz;
					cs:SetValue(cE)
				end
			end)
			return cs
		end;
		function bi:AddTextBox(t)
			local cF = {
				Callback = function()
				end,
				Toggle = false
			}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Input",
				Default = t.default or t.Default or t.value or t.Value or "",
				Placeholder = t.placeholder or t.Placeholder or "",
				Numeric = t.numeric or t.Numeric or false,
				Finished = t.finished or t.Finished or false,
				Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
				Sections = t.sections or t.Sections or false,
				Callback = t.Callback or t.callback or t.CallBack
			}
			local cG = b:Create("TextButton", {
				Name = "InputHolder",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutoButtonColor = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.87,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.fromScale(1, 0),
				Visible = true,
				Parent = an.Sections and an.Sections or bk
			}, {
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local cH = b:Create("Frame", {
				Name = "InputFrame",
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(10, 0),
				Size = UDim2.new(1, -28, 0, 0)
			}, {
				b:Create("UIListLayout", {
					Name = "UIListLayout",
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder
				}),
				b:Create("UIPadding", {
					Name = "UIPadding",
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local cI = b:Create("TextLabel", {
				Name = "InputTitle",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Parent = cH
			})
			cH.Parent = cG;
			local _ = b:Create("Frame", {
				Name = "Input",
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(160, 160, 160),
				BackgroundTransparency = 0.9,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.fromOffset(160, 30),
				Parent = cG
			}, {
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(90, 90, 90),
					Transparency = 0.5
				})
			})
			local cJ = b:Create("Frame", {
				Name = "InputLine",
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = Color3.fromRGB(150, 150, 150),
				BackgroundTransparency = 0.5,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 2, 1, 0),
				Size = UDim2.new(1, -4, 0, 1),
				Parent = _
			})
			local cK = b:Create("Frame", {
				Name = "InputTextFrame",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Position = UDim2.fromOffset(6, 0),
				Size = UDim2.new(1, -12, 1, 0)
			})
			local cL = b:Create("TextBox", {
				Name = "InputText",
				ClearTextOnFocus = false,
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				PlaceholderColor3 = Color3.fromRGB(170, 170, 170),
				PlaceholderText = an.Placeholder,
				Text = an.Default,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.fromOffset(2, 0),
				Size = UDim2.fromScale(1, 1),
				Parent = cK
			})
			cK.Parent = _;
			_.Parent = cG;
			if an.Flags then
				b.Flags[tostring(an.Flags)] = an.Default
			end;
			local function Z()
				if an.Numeric then
					cL.Text = cL.Text:gsub("%D", "")
				end;
				an.Default = cL.Text;
				if an.Flags then
					b.Flags[tostring(an.Flags)] = an.Default
				end;
				if cF.Callback and not an.Finished then
					cF.Callback(an.Default)
				end;
				pcall(an.Callback, an.Default)
			end;
			b:Connect(cL:GetPropertyChangedSignal("Text"), Z)
			b:Connect(cL.FocusLost, function()
				if cF.Callback and an.Finished then
					an.Default = cL.Text;
					if an.Flags then
						b.Flags[tostring(an.Flags)] = an.Default
					end;
					cF.Callback(an.Default)
				end;
				pcall(an.Callback, an.Default)
			end)
			function cF:OnChanged(c6)
				cF.Callback = c6;
				if an.Default then
					c6(an.Default)
				end;
				return cF
			end;
			function cF:SetValue(z)
				an.Default = z;
				cL.Text = z;
				if an.Flags then
					b.Flags[tostring(an.Flags)] = an.Default
				end;
				Z()
			end;
			if an.Default then
				an.Callback(an.Default)
			end;
			return cF
		end;
		function bi:AddSection(t)
			local cM = {}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Section"
			}
			local cN = b:Create("Frame", {
				Name = "SectionHolder",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 65),
				Parent = bk
			})
			local cO = b:Create("UIListLayout", {
				Name = "UIListLayout",
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 5),
				Parent = cN
			})
			local cP = b:Create("TextLabel", {
				Name = "TextLabel",
				FontFace = b.Settings.FontFace or Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
				RichText = true,
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 18,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.fromOffset(0, 2),
				Size = UDim2.new(1, -16, 0, 18),
				Parent = cN
			})
			function cM:AddParagraph(t)
				local bF = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Paragraph",
					Content = t.content or t.Content or t.desc or t.Desc or "",
					Sections = cN
				}
				local bF = bi:AddParagraph(an)
				return bF
			end;
			function cM:AddLabel(t)
				local bF = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Label",
					Sections = cN
				}
				local bF = bi:AddLabel(an)
				return bF
			end;
			function cM:AddButton(t)
				local bO = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Button",
					Description = t.description or t.Description or t.desc or t.Desc,
					Callback = t.callback or t.Callback or function()
					end,
					Sections = cN
				}
				local bO = bi:AddButton(an)
				return bO
			end;
			function cM:AddToggle(t)
				local c0 = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Toggle",
					Description = t.description or t.Description or t.desc or t.Desc,
					Default = t.default or t.Default or t.value or t.Value or false,
					Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
					Callback = t.callback or t.Callback or function()
					end,
					Sections = cN
				}
				local c0 = bi:AddToggle(an)
				return c0
			end;
			function cM:AddDropdown(t)
				local c7 = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Dropdown",
					Description = t.description or t.Description or t.desc or t.Desc or "",
					Values = t.values or t.Values or t.options or t.Options or {},
					Default = t.default or t.Default or t.value or t.Value or {},
					Multi = t.multi or t.Multi or false,
					Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
					Callback = t.callback or t.Callback or function()
					end,
					Sections = cN
				}
				local c7 = bi:AddDropdown(an)
				return c7
			end;
			function cM:AddSlider(t)
				local cx = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Slider",
					Description = t.description or t.Description or t.desc or t.Desc or "",
					Default = t.default or t.Default or t.value or t.Value or 0,
					Min = t.min or t.Min or 0,
					Max = t.max or t.Max or 100,
					Decimal = t.decimal or t.Decimal or 0,
					Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
					Callback = t.callback or t.Callback or function()
					end,
					Sections = cN
				}
				local cx = bi:AddSlider(an)
				return cx
			end;
			function cM:AddTextBox(t)
				local _ = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Input",
					Default = t.default or t.Default or t.value or t.Value or "",
					Placeholder = t.placeholder or t.Placeholder or "",
					Numeric = t.numeric or t.Numeric or false,
					Finished = t.finished or t.Finished or false,
					Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
					Callback = t.callback or t.Callback or function()
					end,
					Sections = cN
				}
				local _ = bi:AddTextBox(an)
				return _
			end;
			b:Connect(cO:GetPropertyChangedSignal("AbsoluteContentSize"), function()
				cN.Size = UDim2.new(1, 0, 0, cO.AbsoluteContentSize.Y + 10)
			end)
			return cM
		end;
		return bi
	end;
	c:SetTheme(b.Theme)
	return am
end;



return b, c
