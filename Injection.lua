if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MangoHub") then
	game.Players.LocalPlayer.PlayerGui.MangoHub:Remove()
end

local uis = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local MangoHub = Instance.new("ScreenGui")
local MainScalebox = Instance.new("Frame")
local Main = Instance.new("Frame")
local BottomBar = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local TopBar = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local TopBarFill = Instance.new("ImageLabel")
local BottomBarFill = Instance.new("ImageLabel")
local CurrentOptions = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local MenusFolder = Instance.new("Folder")
local MainSubmenus = Instance.new("Folder")
local SaveableFolder = Instance.new("Folder")
local TitleCard = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local Leaves = Instance.new("ImageLabel")

local mouse = game.Players.LocalPlayer:GetMouse()
local InSubmenu = false
local activeSubmenu = nil
local Submenus = {}
local itemSize = UDim2.new(0, 349, 0, 50)

MangoHub.Name = "MangoHub"
MangoHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MangoHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MangoHub.IgnoreGuiInset = true

MainScalebox.Name = "MainScalebox"
MainScalebox.Parent = MangoHub
MainScalebox.Active = true
MainScalebox.AnchorPoint = Vector2.new(0.5, 0.5)
MainScalebox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainScalebox.BackgroundTransparency = 1.000
MainScalebox.Position = UDim2.new(-.5, 0, 0.43, 0)
MainScalebox.Size = UDim2.new(0, 390, 0, 662)

Leaves.Name = "Leaves"
Leaves.Parent = MainScalebox
Leaves.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Leaves.BackgroundTransparency = 1.000
Leaves.Position = UDim2.new(0.802564263, 0, -0.0921450108, 0)
Leaves.Size = UDim2.new(0, 144, 0, 144)
Leaves.Image = "rbxassetid://8059991350"
Leaves.ZIndex = 2

Main.Name = "Main"
Main.Parent = MainScalebox
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.500
Main.BorderSizePixel = 0
Main.Size = UDim2.new(1, 0, 1, 0)
Main.ZIndex = 0

BottomBar.Name = "BottomBar"
BottomBar.Parent = MainScalebox
BottomBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BottomBar.BorderSizePixel = 0
BottomBar.Position = UDim2.new(0, 0, 0.955043077, 0)
BottomBar.Size = UDim2.new(1, 0, -0.0978587195, 100)
BottomBar.Image = "rbxassetid://8049151159"

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = BottomBar

TopBar.Name = "TopBar"
TopBar.Parent = MainScalebox
TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0, 0, -0.0211480372, 0)
TopBar.Size = UDim2.new(0, 390, 0, 95)
TopBar.Image = "rbxassetid://8048843890"

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = TopBar

TopBarFill.Name = "TopBarFill"
TopBarFill.Parent = MainScalebox
TopBarFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopBarFill.BorderSizePixel = 0
TopBarFill.Position = UDim2.new(0, 0, 0.005, 0)
TopBarFill.Size = UDim2.new(0, 390, 0, 78)
TopBarFill.ZIndex = 0
TopBarFill.Image = "rbxassetid://8048843890"

BottomBarFill.Name = "BottomBarFill"
BottomBarFill.Parent = MainScalebox
BottomBarFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BottomBarFill.BorderSizePixel = 0
BottomBarFill.Position = UDim2.new(0, 0, 0.955043077, 0)
BottomBarFill.Size = UDim2.new(1, 0, -0.119641997, 100)
BottomBarFill.ZIndex = 0
BottomBarFill.Image = "rbxassetid://8049151159"

CurrentOptions.Name = "CurrentOptions"
CurrentOptions.Parent = MainScalebox
CurrentOptions.Active = true
CurrentOptions.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CurrentOptions.BackgroundTransparency = 1.000
CurrentOptions.BorderSizePixel = 0
CurrentOptions.Position = UDim2.new(0.0278725643, 0, 0.138972804, 0)
CurrentOptions.Size = UDim2.new(0, 368, 0, 528)
CurrentOptions.BottomImage = "http://www.roblox.com/asset/?id=158362221"
CurrentOptions.CanvasSize = UDim2.new(0, 0, .5, 0)
CurrentOptions.MidImage = "http://www.roblox.com/asset/?id=158362264"
CurrentOptions.ScrollBarThickness = 10
CurrentOptions.TopImage = "http://www.roblox.com/asset/?id=158362307"

UIListLayout.Parent = CurrentOptions
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

TitleCard.Name = "TitleCard"
TitleCard.Parent = MangoHub
TitleCard.AnchorPoint = Vector2.new(0.5, 0.5)
TitleCard.BackgroundColor3 = Color3.fromRGB(248, 154, 54)
TitleCard.BackgroundTransparency = 1
TitleCard.Position = UDim2.new(0.5, 0, 0.5, 0)
TitleCard.Size = UDim2.new(0, 300, 0, 150)
TitleCard.Image = "rbxassetid://8052586662"
TitleCard.ImageTransparency = 1
TitleCard.ZIndex = 999

UICorner_3.CornerRadius = UDim.new(0, 20)
UICorner_3.Parent = TitleCard

MenusFolder.Parent = MangoHub
MenusFolder.Name = "Menus"

MainSubmenus.Parent = MenusFolder
MainSubmenus.Name = "Main"

SaveableFolder.Parent = MangoHub
SaveableFolder.Name = "Saveable"

uis.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.Backspace and InSubmenu then
		for i, v in pairs(CurrentOptions:GetChildren()) do
			if v.ClassName ~= 'UIListLayout' then
				v.Parent = MenusFolder[activeSubmenu]
				v.Visible = false
			end
		end
		if #MainSubmenus:GetChildren() > 9 then
			CurrentOptions.CanvasSize = UDim2.new(0,0,.5, (#MainSubmenus:GetChildren() - 8) * 56)
		else
			CurrentOptions.CanvasSize = UDim2.new(0,0,.5,0)
		end
		for i,v in pairs(MainSubmenus:GetChildren()) do
			v.Parent = CurrentOptions
			v.Visible = true
		end
		InSubmenu = false
	end
end)

function addSubmenu(subName)
	if not subName then return warn("Check your submenu names. -> Err") end

	local Item = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Submenu = Instance.new("TextLabel")
	local Folder = Instance.new("Folder")

	Item.Name = "Item"
	Item.Parent = MainSubmenus
	Item.Active = false
	Item.BackgroundColor3 = Color3.fromRGB(248, 154, 54)
	Item.Position = UDim2.new(0, 0, 0.0321969688, 0)
	Item.Selectable = false
	Item.Visible = false
	Item.Size = itemSize
	Item.Image = "rbxassetid://8051051295"
	Item.ImageTransparency = 0.600
	Item.ZIndex = 2
	
	UICorner.Parent = Item

	Title.Name = "Title"
	Title.Parent = Item
	Title.AnchorPoint = Vector2.new(0, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0289889891, 0, 0.50244087, 0)
	Title.Size = UDim2.new(0, 189, 0, 26)
	Title.Font = Enum.Font.GothamSemibold
	Title.Text = subName
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Submenu.Name = "Submenu"
	Submenu.Parent = Item
	Submenu.AnchorPoint = Vector2.new(0, 0.5)
	Submenu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Submenu.BackgroundTransparency = 1.000
	Submenu.Position = UDim2.new(0.83444643, 0, 0.5, 0)
	Submenu.Size = UDim2.new(0, 50, 0, 46)
	Submenu.Font = Enum.Font.Michroma
	Submenu.Text = ">"
	Submenu.TextColor3 = Color3.fromRGB(255, 255, 255)
	Submenu.TextScaled = true
	Submenu.TextSize = 14.000
	Submenu.TextWrapped = true
	
	Folder.Name = subName
	Folder.Parent = MenusFolder
	
	Submenus[subName] = UDim2.new(0,0,.5,0)
	
	Item.MouseButton1Click:Connect(function()
		for i, v in pairs(CurrentOptions:GetChildren()) do
			if v.ClassName == "ImageButton" then
				v.Parent = MainSubmenus
				v.Visible = false
			end
		end
		CurrentOptions.CanvasSize = Submenus[subName]
		for i,v in pairs(MenusFolder[subName]:GetChildren()) do
			v.Parent = CurrentOptions
			v.Visible = true
		end
		InSubmenu = true
		activeSubmenu = subName
	end)
	
	local Particles = {}
	
	function Particles:addToggle(name, defState, callback)
		
		local callback = callback or function(state) end

		local Item = Instance.new("ImageButton")
		local UICorner = Instance.new("UICorner")
		local UICorner2 = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local Toggle = Instance.new("ImageLabel")

		Item.Name = "Item"
		Item.Parent = Folder
		Item.Active = false
		Item.BackgroundColor3 = Color3.fromRGB(248, 154, 54)
		Item.Position = UDim2.new(0, 0, 0.0321969688, 0)
		Item.Selectable = false
		Item.Visible = false
		Item.Size = itemSize
		Item.Image = "rbxassetid://8051051295"
		Item.ImageTransparency = 0.600

		UICorner.Parent = Item

		Title.Name = "Title"
		Title.Parent = Item
		Title.AnchorPoint = Vector2.new(0, 0.5)
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0.0289889891, 0, 0.50244087, 0)
		Title.Size = UDim2.new(0, 189, 0, 26)
		Title.Font = Enum.Font.GothamSemibold
		Title.Text = name
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left

		Toggle.Name = "Toggle"
		Toggle.Parent = Item
		Toggle.AnchorPoint = Vector2.new(0, 0.5)
		Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Toggle.BackgroundTransparency = 1.000
		Toggle.BorderSizePixel = 0
		Toggle.Position = UDim2.new(0.793002665, 0, 0.5, 0)
		Toggle.Size = UDim2.new(0, 61, 0, 31)
		
		if defState then
			Toggle.Image = "rbxassetid://8054969011"
		else
			Toggle.Image = "rbxassetid://8054969181"
		end

		UICorner2.Parent = Toggle
		UICorner2.CornerRadius = UDim.new(0, 12)
		
		local state = defState
		
		Item.MouseButton1Click:Connect(function()
			if state then
				state = false
				Toggle.Image = "rbxassetid://8054969181"
			else
				state = true
				Toggle.Image = "rbxassetid://8054969011"
			end
			pcall(callback(state))
		end)
		
	end
	
	function Particles:addButton(name, callback)
		local callback = callback or function() end

		local Item = Instance.new("ImageButton")
		local UICorner = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")

		Item.Name = "Item"
		Item.Parent = Folder
		Item.Active = false
		Item.BackgroundColor3 = Color3.fromRGB(248, 154, 54)
		Item.Position = UDim2.new(0, 0, 0.0321969688, 0)
		Item.Selectable = false
		Item.Visible = false
		Item.Size = itemSize
		Item.Image = "rbxassetid://8051051295"
		Item.ImageTransparency = 0.600

		UICorner.Parent = Item

		Title.Name = "Title"
		Title.Parent = Item
		Title.AnchorPoint = Vector2.new(0, 0.5)
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0.0289889891, 0, 0.50244087, 0)
		Title.Size = UDim2.new(0, 189, 0, 26)
		Title.Font = Enum.Font.GothamSemibold
		Title.Text = name
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left
		
		Item.MouseButton1Click:Connect(function()
			pcall(callback)
		end)
	end
	
	function Particles:addSlider(name, min, max, callback)
		local callback = callback or function(val) end

		local Item = Instance.new("ImageLabel")
		local Container = Instance.new("ImageButton")
		local UICorner = Instance.new("UICorner")
		local UICorner2 = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local SliderValue = Instance.new("TextLabel")
		local Dropdown = Instance.new("ImageLabel")
		local Bar = Instance.new("Frame")
		local Sliderbox = Instance.new("TextButton")

		Item.Name = "Item"
		Item.Parent = Folder
		Item.BackgroundColor3 = Color3.fromRGB(227, 124, 50)
		Item.Position = UDim2.new(0, 0, 0, 0)
		Item.Size = itemSize
		Item.Visible = false

		UICorner.Parent = Item
		
		Container.Name = "Container"
		Container.Parent = Item
		Container.BackgroundColor3 = Color3.fromRGB(248, 154, 54)
		Container.BackgroundTransparency = 0
		Container.Position = UDim2.new(0, 0, 0, 0)
		Container.Size = itemSize
		Container.Image = "rbxassetid://8051051295"
		Container.ImageTransparency = 0.600
		Container.ZIndex = 2
			
		UICorner2.Parent = Container

		Title.Name = "Title"
		Title.Parent = Container
		Title.AnchorPoint = Vector2.new(0, 0.5)
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0.0289889891, 0, 0.50244087, 0)
		Title.Size = UDim2.new(0, 189, 0, 26)
		Title.Font = Enum.Font.GothamSemibold
		Title.Text = name
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left
		
		Dropdown.Name = "Dropdown"
		Dropdown.Parent = Container
		Dropdown.AnchorPoint = Vector2.new(0, 0.5)
		Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Dropdown.BackgroundTransparency = 1.000
		Dropdown.BorderSizePixel = 0
		Dropdown.Position = UDim2.new(0.793002665, 0, 0.5, 0)
		Dropdown.Size = UDim2.new(0, 61, 0, 31)
		Dropdown.Image = 'rbxassetid://8054930962'
		
		Bar.Name = "Bar"
		Bar.Parent = Item
		Bar.AnchorPoint = Vector2.new(0.5, 0.5)
		Bar.BackgroundColor3 = Color3.fromRGB(249, 186, 77)
		Bar.BorderSizePixel = 0
		Bar.Position = UDim2.new(.42, 0, 0.5, 0)
		Bar.Size = UDim2.new(0, 250, 0, 6)

		Sliderbox.Name = "Sliderbox"
		Sliderbox.Parent = Bar
		Sliderbox.Position = UDim2.new(0, 0, 0.5, 0)
		Sliderbox.Active = false
		Sliderbox.AnchorPoint = Vector2.new(0.5, 0.5)
		Sliderbox.BackgroundColor3 = Color3.fromRGB(249, 209, 114)
		Sliderbox.BorderSizePixel = 0
		Sliderbox.Selectable = false
		Sliderbox.Size = UDim2.new(0, 12, 0, 36)
		Sliderbox.Text = ""
		
		SliderValue.Name = "SliderValue"
		SliderValue.Parent = Item
		SliderValue.AnchorPoint = Vector2.new(0, 0.5)
		SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SliderValue.BackgroundTransparency = 1.000
		SliderValue.BorderSizePixel = 0
		SliderValue.Position = UDim2.new(0.83, 0, 0.75, 0)
		SliderValue.Size = UDim2.new(0, 46, 0, 23)
		SliderValue.Font = Enum.Font.GothamSemibold
		SliderValue.Text = tostring(min)
		SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
		SliderValue.TextScaled = true
		SliderValue.TextSize = 14.000
		SliderValue.TextWrapped = true
		SliderValue.TextXAlignment = Enum.TextXAlignment.Center
		
		local Expanded = false

		Container.MouseButton1Click:Connect(function()
			if Expanded == false then
				CurrentOptions.CanvasSize = CurrentOptions.CanvasSize + UDim2.fromOffset(0, 56)
				Submenus[activeSubmenu] = CurrentOptions.CanvasSize
				local tw = TweenService:Create(Item, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0, itemSize.X.Offset, 0, (itemSize.Y.Offset * 2) + 6) })
				tw:Play()
				local tw = TweenService:Create(Bar, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0.42, 0, 0.75, 0) })
				tw:Play()
				Expanded = true
			else
				local tw = TweenService:Create(Item, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = itemSize })
				tw:Play()
				local tw = TweenService:Create(Bar, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0.42, 0, 0.5, 0) })
				tw:Play()
				CurrentOptions.CanvasSize = CurrentOptions.CanvasSize - UDim2.fromOffset(0, 56)
				Submenus[activeSubmenu] = CurrentOptions.CanvasSize
				Expanded = false
			end
		end)
		
		local MouseHeld = false
		
		Sliderbox.MouseButton1Down:Connect(function()
			MouseHeld = true
			repeat
				local MousePos = uis:GetMouseLocation()
				local RelativePos = MousePos.X - Bar.AbsolutePosition.X
				local Value = RelativePos / Bar.Size.X.Offset
				if Value > 0 and Value < 1 then
					Sliderbox.Position = UDim2.fromScale(Value, Sliderbox.Position.Y.Scale)
				end
				if Value > 1 then
					Sliderbox.Position = UDim2.fromScale(1,Sliderbox.Position.Y.Scale)
				end
				if Value < 0 then
					Sliderbox.Position = UDim2.fromScale(0,Sliderbox.Position.Y.Scale)
				end
				local IsolatedValue = Sliderbox.Position.X.Scale
				local math1 = math.floor(min + ((max - min) * IsolatedValue))
				SliderValue.Text = tostring(math1)
				callback(math1)
				RunService.RenderStepped:Wait()
			until MouseHeld == false
		end)
		
		uis.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				MouseHeld = false
			end
		end)
	end
	
	function Particles:addInput(name, default, callback)
		local callback = callback or function(val) end

		local Item = Instance.new("ImageButton")
		local UICorner = Instance.new("UICorner")
		local UICorner2 = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local Input = Instance.new("TextBox")

		Item.Name = "Item"
		Item.Parent = Folder
		Item.Active = false
		Item.BackgroundColor3 = Color3.fromRGB(248, 154, 54)
		Item.Position = UDim2.new(0, 0, 0.0321969688, 0)
		Item.Selectable = false
		Item.Visible = false
		Item.Size = itemSize
		Item.Image = "rbxassetid://8051051295"
		Item.ImageTransparency = 0.600

		UICorner.Parent = Item

		Title.Name = "Title"
		Title.Parent = Item
		Title.AnchorPoint = Vector2.new(0, 0.5)
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0.0289889891, 0, 0.50244087, 0)
		Title.Size = UDim2.new(0, 189, 0, 26)
		Title.Font = Enum.Font.GothamSemibold
		Title.Text = name
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left
		
		Input.Name = "Toggle"
		Input.Parent = Item
		Input.AnchorPoint = Vector2.new(0, 0.5)
		Input.BackgroundColor3 = Color3.fromRGB(242, 180, 75)
		Input.BorderSizePixel = 0
		Input.Position = UDim2.new(0.793002665, 0, 0.5, 0)
		Input.Size = UDim2.new(0, 61, 0, 31)
		Input.Font = Enum.Font.GothamSemibold
		Input.TextColor3 = Color3.fromRGB(255, 255, 255)
		Input.TextScaled = true
		Input.Text = default
		Input.PlaceholderColor3 = Color3.fromRGB(195, 146, 66)
		Input.PlaceholderText = 'Input'
		
		UICorner2.Parent = Input

		Input.FocusLost:Connect(function()
			pcall(callback(Input.Text))
		end)
	end
	
	function Particles:addDropdown(name, contents, callback)
		local callback = callback or function(val) end

		local Item = Instance.new("Frame")
		local Container = Instance.new("ImageButton")
		local UICorner = Instance.new("UICorner")
		local UICorner2 = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local SliderValue = Instance.new("TextLabel")
		local Dropdown = Instance.new("ImageLabel")
		
		local OptionSelected = nil

		Item.Name = "Item"
		Item.Parent = Folder
		Item.BackgroundColor3 = Color3.fromRGB(202, 110, 44)
		Item.BorderSizePixel = 0
		Item.Position = UDim2.new(0, 0, 0, 0)
		Item.Size = itemSize
		Item.Visible = false

		UICorner.Parent = Item

		Container.Name = "Container"
		Container.Parent = Item
		Container.BackgroundColor3 = Color3.fromRGB(248, 154, 54)
		Container.BackgroundTransparency = 0
		Container.Position = UDim2.new(0, 0, 0, 0)
		Container.Size = itemSize
		Container.Image = "rbxassetid://8051051295"
		Container.ImageTransparency = 0.600
		Container.ZIndex = 2

		UICorner2.Parent = Container

		Title.Name = "Title"
		Title.Parent = Container
		Title.AnchorPoint = Vector2.new(0, 0.5)
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0.0289889891, 0, 0.50244087, 0)
		Title.Size = UDim2.new(0, 189, 0, 26)
		Title.Font = Enum.Font.GothamSemibold
		Title.Text = name
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left
		
		local Expanded = false
		
		for i, v in pairs(contents) do
			local cl = Container:Clone()
			cl.Parent = Item
			cl.Name = "Option_"..i
			cl.ZIndex = 1
			cl.Title.Text = v
			cl.MouseButton1Click:Connect(function()
				Title.Text = '"'..v..'"'
				OptionSelected = cl.Name
				local tw = TweenService:Create(Item, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = itemSize })
				tw:Play()
				local tw = TweenService:Create(Dropdown, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Rotation = 0 })
				tw:Play()
				local tw = TweenService:Create(Item.ListLayout, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Padding = UDim.new(0, -50) })
				tw:Play()
				if #CurrentOptions:GetChildren() + #contents > 9 then
					CurrentOptions.CanvasSize = CurrentOptions.CanvasSize - UDim2.new(0,0,0, (((#CurrentOptions:GetChildren() + #contents) - 7) * 56) + 6)
				end
				Submenus[activeSubmenu] = CurrentOptions.CanvasSize
				Expanded = false
				wait(.2)
				Item.ListLayout:Remove()
				pcall(callback(v))
			end)
		end

		Dropdown.Name = "Toggle"
		Dropdown.Parent = Container
		Dropdown.AnchorPoint = Vector2.new(0, 0.5)
		Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Dropdown.BackgroundTransparency = 1.000
		Dropdown.BorderSizePixel = 0
		Dropdown.Position = UDim2.new(0.793002665, 0, 0.5, 0)
		Dropdown.Size = UDim2.new(0, 61, 0, 31)
		Dropdown.Image = 'rbxassetid://8055382522'
		
		
		Container.MouseButton1Click:Connect(function()
			if Expanded == false then
				local ListLayout = Instance.new("UIListLayout")
				ListLayout.Name = 'ListLayout'
				ListLayout.Padding = UDim.new(0, -50)
				ListLayout.Parent = Item
				if #CurrentOptions:GetChildren() + #contents > 9 then
					CurrentOptions.CanvasSize = CurrentOptions.CanvasSize + UDim2.new(0,0,0, (((#CurrentOptions:GetChildren() + #contents) - 7) * 56) + 6)
					Submenus[activeSubmenu] = CurrentOptions.CanvasSize
				end
				local tw = TweenService:Create(Item, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0, itemSize.X.Offset, 0, (itemSize.Y.Offset +6) * (#contents + 1)) })
				tw:Play()
				local tw = TweenService:Create(Dropdown, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Rotation = 180 })
				tw:Play()
				local tw = TweenService:Create(ListLayout, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Padding = UDim.new(0, 6) })
				tw:Play()
				Expanded = true
			else
				local tw = TweenService:Create(Item, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = itemSize })
				tw:Play()
				local tw = TweenService:Create(Dropdown, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Rotation = 0 })
				tw:Play()
				local tw = TweenService:Create(Item.ListLayout, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Padding = UDim.new(0, -50) })
				tw:Play()
				if #CurrentOptions:GetChildren() + #contents > 9 then
					CurrentOptions.CanvasSize = CurrentOptions.CanvasSize - UDim2.new(0,0,0, (((#CurrentOptions:GetChildren() + #contents) - 7) * 56) + 6)
					Submenus[activeSubmenu] = CurrentOptions.CanvasSize
				end
				Expanded = false
				wait(.2)
				Item.ListLayout:Remove()
			end
		end)
	end
	
	function Particles:addColorPicker(name, default, callback)
		local callback = callback or function(h, s, v) end
		
		local Item = Instance.new("Frame")
		local Container = Instance.new("ImageButton")
		local UICorner = Instance.new("UICorner")
		local UICorner2 = Instance.new("UICorner")
		local UICorner3 = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local HBG = Instance.new("Frame")
		local SBG = Instance.new("Frame")
		local VBG = Instance.new("Frame")
		local ViewerBG = Instance.new("Frame")
		local Hue = Instance.new("ImageButton")
		local Saturation = Instance.new("ImageButton")
		local Value = Instance.new("ImageButton")
		local Viewer = Instance.new("Frame")
		local ColorTitle = Instance.new("TextLabel")
		local UIGradientH = Instance.new("UIGradient")
		local UIGradientS = Instance.new("UIGradient")
		local UIGradientV = Instance.new("UIGradient")
		local SliderH = Instance.new("Frame")
		local SliderS = Instance.new("Frame")
		local SliderV = Instance.new("Frame")
		local Mini = Instance.new("ImageLabel")

		local OptionSelected = nil

		Item.Name = "Item"
		Item.Parent = Folder
		Item.BackgroundColor3 = Color3.fromRGB(202, 110, 44)
		Item.BorderSizePixel = 0
		Item.Position = UDim2.new(0, 0, 0, 0)
		Item.Size = itemSize
		Item.Visible = false

		UICorner.Parent = Item

		Container.Name = "Container"
		Container.Parent = Item
		Container.BackgroundColor3 = Color3.fromRGB(248, 154, 54)
		Container.BackgroundTransparency = 0
		Container.Position = UDim2.new(0, 0, 0, 0)
		Container.Size = itemSize
		Container.Image = "rbxassetid://8051051295"
		Container.ImageTransparency = 0.600
		Container.ZIndex = 2

		UICorner2.Parent = Container

		Title.Name = "Title"
		Title.Parent = Container
		Title.AnchorPoint = Vector2.new(0, 0.5)
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0.0289889891, 0, 0.50244087, 0)
		Title.Size = UDim2.new(0, 189, 0, 26)
		Title.Font = Enum.Font.GothamSemibold
		Title.Text = name
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left
		
		HBG.Name = "HBG"
		HBG.Parent = Item
		HBG.Position = UDim2.new(.4, 0, .5, 0)
		HBG.Active = false
		HBG.AnchorPoint = Vector2.new(0.5, 0.5)
		HBG.BackgroundColor3 = Color3.fromRGB(249, 209, 114)
		HBG.BorderSizePixel = 0
		HBG.Selectable = false
		HBG.Size = UDim2.new(.7, 0, 0, 40)
		
		SBG.Name = "SBG"
		SBG.Parent = Item
		SBG.Position = UDim2.new(.4, 0, .5, 0)
		SBG.Active = false
		SBG.AnchorPoint = Vector2.new(0.5, 0.5)
		SBG.BackgroundColor3 = Color3.fromRGB(249, 209, 114)
		SBG.BorderSizePixel = 0
		SBG.Selectable = false
		SBG.Size = UDim2.new(.7, 0, 0, 40)
		
		VBG.Name = "VBG"
		VBG.Parent = Item
		VBG.Position = UDim2.new(.4, 0, .5, 0)
		VBG.Active = false
		VBG.AnchorPoint = Vector2.new(0.5, 0.5)
		VBG.BackgroundColor3 = Color3.fromRGB(249, 209, 114)
		VBG.BorderSizePixel = 0
		VBG.Selectable = false
		VBG.Size = UDim2.new(.7, 0, 0, 40)
		
		ViewerBG.Name = "ViewerBG"
		ViewerBG.Parent = Item
		ViewerBG.Position = UDim2.new(.87, 0, .62, 0)
		ViewerBG.Active = false
		ViewerBG.AnchorPoint = Vector2.new(0.5, 0.5)
		ViewerBG.BackgroundColor3 = Color3.fromRGB(249, 209, 114)
		ViewerBG.BorderSizePixel = 0
		ViewerBG.Selectable = false
		ViewerBG.Size = UDim2.new(.15, 0, 0, 0)
		
		ColorTitle.Name = "ColorTitle"
		ColorTitle.Parent = Viewer
		ColorTitle.AnchorPoint = Vector2.new(.5, .5)
		ColorTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ColorTitle.BackgroundTransparency = 1.000
		ColorTitle.Position = UDim2.new(.5, 0, .5, 0)
		ColorTitle.Size = UDim2.new(2.4,0,1,0)
		ColorTitle.Font = Enum.Font.GothamSemibold
		ColorTitle.Text = "0,0,0"
		ColorTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
		ColorTitle.TextSize = 0
		ColorTitle.TextWrapped = true
		ColorTitle.Rotation = 90
		
		Hue.Name = "HueSlider"
		Hue.Parent = HBG
		Hue.Position = UDim2.new(.5, 0, .5, 0)
		Hue.Active = false
		Hue.AnchorPoint = Vector2.new(0.5, 0.5)
		Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Hue.BorderSizePixel = 0
		Hue.Selectable = false
		Hue.Size = UDim2.new(.97, 0, .86, 0)
		
		UIGradientH.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
		UIGradientH.Parent = Hue
		
		Saturation.Name = "SaturationSlider"
		Saturation.Parent = SBG
		Saturation.Position = UDim2.new(.5, 0, .5, 0)
		Saturation.Active = false
		Saturation.AnchorPoint = Vector2.new(0.5, 0.5)
		Saturation.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Saturation.BorderSizePixel = 0
		Saturation.Selectable = false
		Saturation.Size = UDim2.new(.97, 0, .86, 0)

		UIGradientS.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))}
		UIGradientS.Parent = Saturation
		
		Value.Name = "ValueSlider"
		Value.Parent = VBG
		Value.Position = UDim2.new(.5, 0, .5, 0)
		Value.Active = false
		Value.AnchorPoint = Vector2.new(0.5, 0.5)
		Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Value.BorderSizePixel = 0
		Value.Selectable = false
		Value.Size = UDim2.new(.97, 0, .86, 0)

		UIGradientV.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))}
		UIGradientV.Parent = Value
		
		Viewer.Name = "Viewer"
		Viewer.Parent = ViewerBG
		Viewer.Position = UDim2.new(.5, 0, .5, 0)
		Viewer.Active = false
		Viewer.AnchorPoint = Vector2.new(0.5, 0.5)
		Viewer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Viewer.BorderSizePixel = 0
		Viewer.Selectable = false
		Viewer.Size = UDim2.new(.86, 0, .95, 0)
		
		SliderH.Name = "SliderH"
		SliderH.Parent = Hue
		SliderH.Position = UDim2.new(0, 0, .5, 0)
		SliderH.Active = false
		SliderH.AnchorPoint = Vector2.new(0.5, 0.5)
		SliderH.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		SliderH.BorderSizePixel = 0
		SliderH.Selectable = false
		SliderH.Size = UDim2.new(0, 3, 1, 0)
		
		SliderS.Name = "SliderS"
		SliderS.Parent = Saturation
		SliderS.Position = UDim2.new(0, 0, .5, 0)
		SliderS.Active = false
		SliderS.AnchorPoint = Vector2.new(0.5, 0.5)
		SliderS.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		SliderS.BorderSizePixel = 0
		SliderS.Selectable = false
		SliderS.Size = UDim2.new(0, 3, 1, 0)
		
		SliderV.Name = "SliderV"
		SliderV.Parent = Value
		SliderV.Position = UDim2.new(0, 0, .5, 0)
		SliderV.Active = false
		SliderV.AnchorPoint = Vector2.new(0.5, 0.5)
		SliderV.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		SliderV.BorderSizePixel = 0
		SliderV.Selectable = false
		SliderV.Size = UDim2.new(0, 3, 1, 0)
		
		Mini.Name = "MiniViewer"
		Mini.Parent = Container
		Mini.AnchorPoint = Vector2.new(0, 0.5)
		Mini.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Mini.BorderSizePixel = 0
		Mini.Position = UDim2.new(0.793002665, 0, 0.5, 0)
		Mini.Size = UDim2.new(0, 61, 0, 31)
		
		UICorner3.Parent = Mini
		
		local Expanded = false
		
		Container.MouseButton1Click:Connect(function()
			if Expanded == false then
				CurrentOptions.CanvasSize = CurrentOptions.CanvasSize + UDim2.fromOffset(0, 206)
				Submenus[activeSubmenu] = CurrentOptions.CanvasSize
				local tw = TweenService:Create(Item, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0, itemSize.X.Offset, 0, (itemSize.Y.Offset * 4) + 6) })
				tw:Play()
				local tw = TweenService:Create(HBG, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(.4, 0, .4, 0) })
				tw:Play()
				local tw = TweenService:Create(SBG, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(.4, 0, .62, 0) })
				tw:Play()
				local tw = TweenService:Create(VBG, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(.4, 0, .84, 1) })
				tw:Play()
				local tw = TweenService:Create(ViewerBG, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(.15, 0, 0, 132) })
				tw:Play()
				ColorTitle.TextSize = 18
				Expanded = true
			else
				local tw = TweenService:Create(Item, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = itemSize })
				tw:Play()
				local tw = TweenService:Create(HBG, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(.4, 0, .5, 0) })
				tw:Play()
				local tw = TweenService:Create(SBG, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(.4, 0, .5, 0) })
				tw:Play()
				local tw = TweenService:Create(VBG, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(.4, 0, .5, 0) })
				tw:Play()
				local tw = TweenService:Create(ViewerBG, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(.15, 0, 0, 0) })
				tw:Play()
				ColorTitle.TextSize = 0
				CurrentOptions.CanvasSize = CurrentOptions.CanvasSize - UDim2.fromOffset(0, 206)
				Submenus[activeSubmenu] = CurrentOptions.CanvasSize
				Expanded = false
			end
		end)
		
		local MouseHeld = false
		
		local H, S, V = 0, 0, 0
		
		Hue.MouseButton1Down:Connect(function()
			MouseHeld = true
			repeat
				local MousePos = uis:GetMouseLocation()
				local RelativePos = MousePos.X - Hue.AbsolutePosition.X
				local Value = RelativePos / 237
				if Value > 0 and Value < 1 then
					SliderH.Position = UDim2.fromScale(Value, SliderH.Position.Y.Scale)
				end
				if Value > 1 then
					SliderH.Position = UDim2.fromScale(1, SliderH.Position.Y.Scale)
				end
				if Value < 0 then
					SliderH.Position = UDim2.fromScale(0, SliderH.Position.Y.Scale)
				end
				local IsolatedValue = SliderH.Position.X.Scale
				H = IsolatedValue
				Viewer.BackgroundColor3 = Color3.fromHSV(H, S, V)
				ColorTitle.Text = tostring(math.floor(H*255) .. "," .. math.floor(S*255) .. "," .. math.floor(V*255))
				Mini.BackgroundColor3 = Color3.fromHSV(H, S, V)
				callback(H, S, V)
				RunService.RenderStepped:Wait()
			until MouseHeld == false
		end)
		
		Saturation.MouseButton1Down:Connect(function()
			MouseHeld = true
			repeat
				local MousePos = uis:GetMouseLocation()
				local RelativePos = MousePos.X - Saturation.AbsolutePosition.X
				local Value = RelativePos / 237
				if Value > 0 and Value < 1 then
					SliderS.Position = UDim2.fromScale(Value, SliderS.Position.Y.Scale)
				end
				if Value > 1 then
					SliderS.Position = UDim2.fromScale(1, SliderS.Position.Y.Scale)
				end
				if Value < 0 then
					SliderS.Position = UDim2.fromScale(0, SliderS.Position.Y.Scale)
				end
				local IsolatedValue = SliderS.Position.X.Scale
				S = IsolatedValue
				Viewer.BackgroundColor3 = Color3.fromHSV(H, S, V)
				ColorTitle.Text = tostring(math.floor(H*255) .. "," .. math.floor(S*255) .. "," .. math.floor(V*255))
				Mini.BackgroundColor3 = Color3.fromHSV(H, S, V)
				callback(H, S, V)
				RunService.RenderStepped:Wait()
			until MouseHeld == false
		end)
		
		Value.MouseButton1Down:Connect(function()
			MouseHeld = true
			repeat
				local MousePos = uis:GetMouseLocation()
				local RelativePos = MousePos.X - Value.AbsolutePosition.X
				local Value = RelativePos / 237
				if Value > 0 and Value < 1 then
					SliderV.Position = UDim2.fromScale(Value, SliderV.Position.Y.Scale)
				end
				if Value > 1 then
					SliderV.Position = UDim2.fromScale(1, SliderV.Position.Y.Scale)
				end
				if Value < 0 then
					SliderV.Position = UDim2.fromScale(0, SliderV.Position.Y.Scale)
				end
				local IsolatedValue = SliderV.Position.X.Scale
				V = IsolatedValue
				Viewer.BackgroundColor3 = Color3.fromHSV(H, S, V)
				ColorTitle.Text = tostring(math.floor(H*255) .. "," .. math.floor(S*255) .. "," .. math.floor(V*255))
				Mini.BackgroundColor3 = Color3.fromHSV(H, S, V)
				callback(H, S, V)
				RunService.RenderStepped:Wait()
			until MouseHeld == false
		end)
		
		uis.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				MouseHeld = false
			end
		end)
	end
	
	function Particles:addSpacer(name)
		local Item = Instance.new("ImageButton")
		local Title = Instance.new("TextLabel")

		Item.Name = "Item"
		Item.Parent = Folder
		Item.Active = false
		Item.BackgroundTransparency = 1
		Item.Position = UDim2.new(0, 0, 0.0321969688, 0)
		Item.Selectable = false
		Item.Visible = false
		Item.Size = itemSize - UDim2.new(0,0,0, 25)
		Item.ImageTransparency = 1

		Title.Name = "Title"
		Title.Parent = Item
		Title.AnchorPoint = Vector2.new(0, 0.5)
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0, 0, 0.5, 0)
		Title.Size = UDim2.new(0, 189, 0, 26)
		Title.Font = Enum.Font.GothamSemibold
		Title.Text = tostring('<i>'..name..'</i>')
		Title.TextColor3 = Color3.fromRGB(248, 154, 54)
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left
		Title.RichText = true
	end
	
	return Particles
end

function init()
	for i,v in pairs(MainSubmenus:GetChildren()) do
		v.Parent = CurrentOptions
		v.Visible = true
	end
	local tw = TweenService:Create(TitleCard, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { ImageTransparency = 0 })
	tw:Play()
	local tw = TweenService:Create(TitleCard, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
	tw:Play()
	wait(1)
	local tw = TweenService:Create(TitleCard, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), { ImageTransparency = 1 })
	tw:Play()
	TitleCard:TweenSizeAndPosition(UDim2.new(0, 390, 0, 683), UDim2.new(0.20552218, 0, 0.428, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, .8)
	local tw = TweenService:Create(TitleCard.UICorner, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), { CornerRadius = UDim.new(0, 12) })
	tw:Play()
	wait(.8)
	MainScalebox.Position = UDim2.new(0.20552218, 0, 0.43, 0)
	local tw = TweenService:Create(TitleCard, TweenInfo.new(.3, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), { BackgroundTransparency = 1 })
	tw:Play()
	wait(.3)
	TitleCard.Visible = false
end

if game.PlaceId == 6284583030 then
    local RunService = game:GetService("RunService")

    local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))

    local sub1 = addSubmenu('Automatics')
    local sub2 = addSubmenu('Pets')

    function GetMyPets()
        local returntable = {}
        for i,v in pairs(GameLibrary.Save.Get().Pets) do
            if v.e then 
                table.insert(returntable, v.uid)
            end
        end
        return returntable
    end

    function GetMapAreas()
        local returntable = {}
        for i, v in pairs(game:GetService("Workspace")["__MAP"].Areas:GetChildren()) do
            table.insert(returntable, v.Name)
        end
        return returntable
    end

    -- SUB 1 MODULES

    sub1:addSpacer('Farming')

    sub1:addToggle('Coin Autofarm', false, function(val)
        _G.CAutofarm = val
        print(CAutofarm)
    end)

    sub1:addSpacer('Options')

    local mapareas = GetMapAreas()
    sub1:addDropdown('Coin Farming Area', mapareas, function()
    
    end) 

    init()

    while true do
        if _G.CAutofarm == true then
        end
        RunService.RenderStepped:Wait()
    end

    -- BRIH
end