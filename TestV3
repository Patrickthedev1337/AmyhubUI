local library = {}
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

function play(id)
    for _, v in next, workspace:GetChildren() do
        if v.Name == "GUISound" then
            v:Destroy()
        end
    end
    local Sound = Instance.new("Sound", workspace)
    Sound.Name = "GUISound"
    Sound.Volume = 6
    Sound.SoundId = id
    Sound:Play()
end

function library:CreateWindow(name, theme)
    local theme1, theme2, theme3
    local toolight = false
    
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "ModernUI" then
            v:Destroy()
        end
    end

    -- Enhanced theme system with many more color modes
    if theme == "Normal" or theme == "Red" then
        theme1 = Color3.fromRGB(20, 20, 20)
        theme2 = Color3.fromRGB(15, 15, 15)
        theme3 = Color3.fromRGB(200, 50, 50)
    elseif theme == "Purple" or theme == "Reverse" then
        theme1 = Color3.fromRGB(26, 26, 26)
        theme2 = Color3.fromRGB(32, 32, 32)
        theme3 = Color3.fromRGB(176, 148, 255)
    elseif theme == "Blood" then
        theme1 = Color3.fromRGB(25, 20, 20)
        theme2 = Color3.fromRGB(18, 15, 15)
        theme3 = Color3.fromRGB(180, 0, 0)
    elseif theme == "Ocean" or theme == "Blue" then
        theme1 = Color3.fromRGB(15, 20, 28)
        theme2 = Color3.fromRGB(10, 15, 22)
        theme3 = Color3.fromRGB(0, 162, 255)
    elseif theme == "Emerald" or theme == "Green" then
        theme1 = Color3.fromRGB(18, 25, 20)
        theme2 = Color3.fromRGB(12, 18, 15)
        theme3 = Color3.fromRGB(0, 230, 118)
    elseif theme == "Sunset" or theme == "Orange" then
        theme1 = Color3.fromRGB(28, 20, 18)
        theme2 = Color3.fromRGB(22, 15, 12)
        theme3 = Color3.fromRGB(255, 120, 60)
    elseif theme == "Pink" or theme == "Candy" then
        theme1 = Color3.fromRGB(25, 18, 25)
        theme2 = Color3.fromRGB(18, 12, 18)
        theme3 = Color3.fromRGB(255, 105, 180)
    elseif theme == "Cyan" or theme == "Ice" then
        theme1 = Color3.fromRGB(15, 22, 28)
        theme2 = Color3.fromRGB(10, 16, 22)
        theme3 = Color3.fromRGB(0, 255, 255)
    elseif theme == "Gold" or theme == "Yellow" then
        theme1 = Color3.fromRGB(25, 23, 15)
        theme2 = Color3.fromRGB(18, 16, 10)
        theme3 = Color3.fromRGB(255, 215, 0)
    elseif theme == "Mint" then
        theme1 = Color3.fromRGB(18, 25, 23)
        theme2 = Color3.fromRGB(12, 18, 16)
        theme3 = Color3.fromRGB(152, 255, 152)
    elseif theme == "Neon" then
        theme1 = Color3.fromRGB(12, 12, 12)
        theme2 = Color3.fromRGB(8, 8, 8)
        theme3 = Color3.fromRGB(0, 255, 170)
    elseif theme == "Lavender" then
        theme1 = Color3.fromRGB(25, 20, 30)
        theme2 = Color3.fromRGB(18, 15, 22)
        theme3 = Color3.fromRGB(200, 162, 255)
    elseif theme == "Rose" then
        theme1 = Color3.fromRGB(28, 18, 22)
        theme2 = Color3.fromRGB(20, 12, 16)
        theme3 = Color3.fromRGB(255, 102, 153)
    elseif theme == "Royal" then
        theme1 = Color3.fromRGB(20, 18, 35)
        theme2 = Color3.fromRGB(15, 12, 25)
        theme3 = Color3.fromRGB(123, 104, 238)
    elseif theme == "Dark" or theme == "Midnight" then
        theme1 = Color3.fromRGB(10, 10, 10)
        theme2 = Color3.fromRGB(5, 5, 5)
        theme3 = Color3.fromRGB(150, 150, 150)
        toolight = true
    else
        theme1 = Color3.fromRGB(20, 20, 20)
        theme2 = Color3.fromRGB(15, 15, 15)
        theme3 = Color3.fromRGB(200, 50, 50)
    end

    local Screen = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Topbar = Instance.new("Frame")
    local TopbarCorner = Instance.new("UICorner")
    local TitleLabel = Instance.new("TextLabel")
    local MinimizeBtn = Instance.new("TextButton")
    local ContentFrame = Instance.new("Frame")
    local Sidebar = Instance.new("Frame")
    local SidebarCorner = Instance.new("UICorner")
    local TabContainer = Instance.new("ScrollingFrame")
    local TabLayout = Instance.new("UIListLayout")
    local MainContent = Instance.new("Frame")
    local MainCorner = Instance.new("UICorner")
    
    -- Screen setup
    Screen.Name = "ModernUI"
    Screen.Parent = game:WaitForChild("CoreGui")
    Screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Main frame with entrance animation
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = Screen
    MainFrame.BackgroundColor3 = theme1
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.5, -350, 0.5, -250)
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    MainFrame.ClipsDescendants = true
    MainFrame.Active = true
    MainFrame.BackgroundTransparency = 1
    
    UICorner.CornerRadius = UDim.new(0, 8)
    UICorner.Parent = MainFrame
    
    -- Entrance animation
    local openTween = TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 700, 0, 500),
        BackgroundTransparency = 0
    })
    openTween:Play()
    
    -- Topbar
    Topbar.Name = "Topbar"
    Topbar.Parent = MainFrame
    Topbar.BackgroundColor3 = theme2
    Topbar.BorderSizePixel = 0
    Topbar.Size = UDim2.new(1, 0, 0, 40)
    
    TopbarCorner.CornerRadius = UDim.new(0, 8)
    TopbarCorner.Parent = Topbar
    
    -- Title with glow effect
    TitleLabel.Parent = Topbar
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Position = UDim2.new(0, 15, 0, 0)
    TitleLabel.Size = UDim2.new(0, 300, 1, 0)
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.Text = name
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.TextSize = 16
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Animated title color
    spawn(function()
        while wait(3) do
            TweenService:Create(TitleLabel, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                TextColor3 = theme3
            }):Play()
            wait(1.5)
            TweenService:Create(TitleLabel, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                TextColor3 = Color3.fromRGB(255, 255, 255)
            }):Play()
        end
    end)
    
    -- Minimize button with hover animation
    MinimizeBtn.Parent = Topbar
    MinimizeBtn.BackgroundTransparency = 1
    MinimizeBtn.Position = UDim2.new(1, -40, 0, 0)
    MinimizeBtn.Size = UDim2.new(0, 40, 0, 40)
    MinimizeBtn.Font = Enum.Font.GothamBold
    MinimizeBtn.Text = "−"
    MinimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    MinimizeBtn.TextSize = 20
    
    MinimizeBtn.MouseEnter:Connect(function()
        TweenService:Create(MinimizeBtn, TweenInfo.new(0.2), {TextColor3 = theme3, Rotation = 180}):Play()
    end)
    
    MinimizeBtn.MouseLeave:Connect(function()
        TweenService:Create(MinimizeBtn, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 255, 255), Rotation = 0}):Play()
    end)
    
    -- Content frame
    ContentFrame.Parent = MainFrame
    ContentFrame.BackgroundTransparency = 1
    ContentFrame.Position = UDim2.new(0, 0, 0, 40)
    ContentFrame.Size = UDim2.new(1, 0, 1, -40)
    
    -- Sidebar with slide-in animation
    Sidebar.Name = "Sidebar"
    Sidebar.Parent = ContentFrame
    Sidebar.BackgroundColor3 = theme2
    Sidebar.BorderSizePixel = 0
    Sidebar.Position = UDim2.new(0, -150, 0, 10)
    Sidebar.Size = UDim2.new(0, 150, 1, -20)
    
    SidebarCorner.CornerRadius = UDim.new(0, 6)
    SidebarCorner.Parent = Sidebar
    
    -- Slide in sidebar
    wait(0.3)
    TweenService:Create(Sidebar, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Position = UDim2.new(0, 10, 0, 10)
    }):Play()
    
    -- Tab container
    TabContainer.Parent = Sidebar
    TabContainer.BackgroundTransparency = 1
    TabContainer.BorderSizePixel = 0
    TabContainer.Size = UDim2.new(1, 0, 1, 0)
    TabContainer.ScrollBarThickness = 4
    TabContainer.ScrollBarImageColor3 = theme3
    TabContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
    
    TabLayout.Parent = TabContainer
    TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabLayout.Padding = UDim.new(0, 5)
    
    -- Update tab canvas size
    TabLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        TabContainer.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y + 10)
    end)
    
    -- Main content area with fade-in
    MainContent.Name = "MainContent"
    MainContent.Parent = ContentFrame
    MainContent.BackgroundColor3 = theme2
    MainContent.BorderSizePixel = 0
    MainContent.Position = UDim2.new(0, 170, 0, 10)
    MainContent.Size = UDim2.new(1, -180, 1, -20)
    MainContent.BackgroundTransparency = 1
    
    MainCorner.CornerRadius = UDim.new(0, 6)
    MainCorner.Parent = MainContent
    
    wait(0.5)
    TweenService:Create(MainContent, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
    
    -- Make draggable
    local dragging, dragInput, dragStart, startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    Topbar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = MainFrame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    Topbar.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
    
    -- Minimize functionality with animation
    local minimized = false
    MinimizeBtn.MouseButton1Click:Connect(function()
        minimized = not minimized
        if minimized then
            TweenService:Create(ContentFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Position = UDim2.new(0, 0, 0, 40),
                Size = UDim2.new(1, 0, 0, 0)
            }):Play()
            TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 700, 0, 40)
            }):Play()
            MinimizeBtn.Text = "+"
        else
            TweenService:Create(ContentFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Position = UDim2.new(0, 0, 0, 40),
                Size = UDim2.new(1, 0, 1, -40)
            }):Play()
            TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 700, 0, 500)
            }):Play()
            MinimizeBtn.Text = "−"
        end
        play("rbxassetid://6895079853")
    end)
    
    local InsideLibrary = {}
    
    -- NOTIFICATION SYSTEM
    function InsideLibrary:Notify(options)
        local title = options.Title or options.title or "Notification"
        local description = options.Description or options.description or ""
        local duration = options.Duration or options.duration or 3
        local type = options.Type or options.type or "info"
        
        -- Notification colors based on type
        local notifColor
        if type == "success" then
            notifColor = Color3.fromRGB(0, 230, 118)
        elseif type == "warning" then
            notifColor = Color3.fromRGB(255, 215, 0)
        elseif type == "error" then
            notifColor = Color3.fromRGB(255, 50, 50)
        else
            notifColor = theme3
        end
        
        local NotifContainer = Screen:FindFirstChild("NotificationContainer")
        if not NotifContainer then
            NotifContainer = Instance.new("Frame")
            NotifContainer.Name = "NotificationContainer"
            NotifContainer.Parent = Screen
            NotifContainer.BackgroundTransparency = 1
            NotifContainer.Position = UDim2.new(1, -320, 0, 20)
            NotifContainer.Size = UDim2.new(0, 300, 1, -40)
            
            local NotifLayout = Instance.new("UIListLayout")
            NotifLayout.Parent = NotifContainer
            NotifLayout.SortOrder = Enum.SortOrder.LayoutOrder
            NotifLayout.Padding = UDim.new(0, 10)
        end
        
        local NotifFrame = Instance.new("Frame")
        local NotifCorner = Instance.new("UICorner")
        local NotifBar = Instance.new("Frame")
        local BarCorner = Instance.new("UICorner")
        local NotifTitle = Instance.new("TextLabel")
        local NotifDesc = Instance.new("TextLabel")
        local CloseBtn = Instance.new("TextButton")
        local NotifIcon = Instance.new("TextLabel")
        
        NotifFrame.Parent = NotifContainer
        NotifFrame.BackgroundColor3 = theme1
        NotifFrame.BorderSizePixel = 0
        NotifFrame.Size = UDim2.new(1, 0, 0, 0)
        NotifFrame.ClipsDescendants = true
        NotifFrame.Position = UDim2.new(1, 50, 0, 0)
        NotifFrame.BackgroundTransparency = 1
        
        NotifCorner.CornerRadius = UDim.new(0, 6)
        NotifCorner.Parent = NotifFrame
        
        -- Accent bar
        NotifBar.Parent = NotifFrame
        NotifBar.BackgroundColor3 = notifColor
        NotifBar.BorderSizePixel = 0
        NotifBar.Size = UDim2.new(0, 4, 1, 0)
        
        BarCorner.CornerRadius = UDim.new(0, 6)
        BarCorner.Parent = NotifBar
        
        -- Icon
        local iconText = "ℹ️"
        if type == "success" then iconText = "✓"
        elseif type == "warning" then iconText = "⚠"
        elseif type == "error" then iconText = "✕"
        end
        
        NotifIcon.Parent = NotifFrame
        NotifIcon.BackgroundTransparency = 1
        NotifIcon.Position = UDim2.new(0, 12, 0, 8)
        NotifIcon.Size = UDim2.new(0, 30, 0, 30)
        NotifIcon.Font = Enum.Font.GothamBold
        NotifIcon.Text = iconText
        NotifIcon.TextColor3 = notifColor
        NotifIcon.TextSize = 20
        
        NotifTitle.Parent = NotifFrame
        NotifTitle.BackgroundTransparency = 1
        NotifTitle.Position = UDim2.new(0, 45, 0, 8)
        NotifTitle.Size = UDim2.new(1, -75, 0, 20)
        NotifTitle.Font = Enum.Font.GothamBold
        NotifTitle.Text = title
        NotifTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        NotifTitle.TextSize = 14
        NotifTitle.TextXAlignment = Enum.TextXAlignment.Left
        
        NotifDesc.Parent = NotifFrame
        NotifDesc.BackgroundTransparency = 1
        NotifDesc.Position = UDim2.new(0, 45, 0, 28)
        NotifDesc.Size = UDim2.new(1, -75, 1, -35)
        NotifDesc.Font = Enum.Font.Gotham
        NotifDesc.Text = description
        NotifDesc.TextColor3 = Color3.fromRGB(200, 200, 200)
        NotifDesc.TextSize = 12
        NotifDesc.TextXAlignment = Enum.TextXAlignment.Left
        NotifDesc.TextYAlignment = Enum.TextYAlignment.Top
        NotifDesc.TextWrapped = true
        
        CloseBtn.Parent = NotifFrame
        CloseBtn.BackgroundTransparency = 1
        CloseBtn.Position = UDim2.new(1, -30, 0, 5)
        CloseBtn.Size = UDim2.new(0, 25, 0, 25)
        CloseBtn.Font = Enum.Font.GothamBold
        CloseBtn.Text = "✕"
        CloseBtn.TextColor3 = Color3.fromRGB(150, 150, 150)
        CloseBtn.TextSize = 14
        
        CloseBtn.MouseEnter:Connect(function()
            TweenService:Create(CloseBtn, TweenInfo.new(0.2), {TextColor3 = notifColor, Rotation = 90}):Play()
        end)
        
        CloseBtn.MouseLeave:Connect(function()
            TweenService:Create(CloseBtn, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(150, 150, 150), Rotation = 0}):Play()
        end)
        
        -- Calculate height
        local height = 70
        
        -- Slide in animation
        TweenService:Create(NotifFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Position = UDim2.new(0, 0, 0, 0),
            Size = UDim2.new(1, 0, 0, height),
            BackgroundTransparency = 0
        }):Play()
        
        play("rbxassetid://6895079853")
        
        local function closeNotification()
            TweenService:Create(NotifFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                Position = UDim2.new(1, 50, 0, 0),
                BackgroundTransparency = 1
            }):Play()
            wait(0.4)
            NotifFrame:Destroy()
        end
        
        CloseBtn.MouseButton1Click:Connect(closeNotification)
        
        -- Auto close after duration
        spawn(function()
            wait(duration)
            if NotifFrame.Parent then
                closeNotification()
            end
        end)
    end

    function InsideLibrary:CreateWatermark(options)
    local text = options.Text or options.text or "Watermark"
    local position = options.Position or options.position or "TopRight"
    
    local WatermarkFrame = Instance.new("Frame")
    local WatermarkCorner = Instance.new("UICorner")
    local WatermarkLabel = Instance.new("TextLabel")
    local WatermarkAccent = Instance.new("Frame")
    local AccentCorner = Instance.new("UICorner")
    
    WatermarkFrame.Name = "Watermark"
    WatermarkFrame.Parent = Screen
    WatermarkFrame.BackgroundColor3 = theme1
    WatermarkFrame.BorderSizePixel = 0
    WatermarkFrame.Size = UDim2.new(0, 0, 0, 30)
    WatermarkFrame.BackgroundTransparency = 1
    WatermarkFrame.ZIndex = 10
    
    -- Position based on user preference
    if position == "TopRight" then
        WatermarkFrame.Position = UDim2.new(1, -20, 0, 20)
        WatermarkFrame.AnchorPoint = Vector2.new(1, 0)
    elseif position == "TopLeft" then
        WatermarkFrame.Position = UDim2.new(0, 20, 0, 20)
        WatermarkFrame.AnchorPoint = Vector2.new(0, 0)
    elseif position == "BottomRight" then
        WatermarkFrame.Position = UDim2.new(1, -20, 1, -20)
        WatermarkFrame.AnchorPoint = Vector2.new(1, 1)
    elseif position == "BottomLeft" then
        WatermarkFrame.Position = UDim2.new(0, 20, 1, -20)
        WatermarkFrame.AnchorPoint = Vector2.new(0, 1)
    end
    
    WatermarkCorner.CornerRadius = UDim.new(0, 6)
    WatermarkCorner.Parent = WatermarkFrame
    
    -- Accent bar
    WatermarkAccent.Parent = WatermarkFrame
    WatermarkAccent.BackgroundColor3 = theme3
    WatermarkAccent.BorderSizePixel = 0
    WatermarkAccent.Size = UDim2.new(1, 0, 0, 3)
    
    AccentCorner.CornerRadius = UDim.new(0, 6)
    AccentCorner.Parent = WatermarkAccent
    
    WatermarkLabel.Parent = WatermarkFrame
    WatermarkLabel.BackgroundTransparency = 1
    WatermarkLabel.Position = UDim2.new(0, 12, 0, 3)
    WatermarkLabel.Size = UDim2.new(1, -24, 1, -3)
    WatermarkLabel.Font = Enum.Font.GothamBold
    WatermarkLabel.Text = text
    WatermarkLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    WatermarkLabel.TextSize = 13
    WatermarkLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Auto-size the watermark based on text
    local textSize = game:GetService("TextService"):GetTextSize(
        text,
        13,
        Enum.Font.GothamBold,
        Vector2.new(math.huge, 27)
    )
    
    -- Entrance animation
    TweenService:Create(WatermarkFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, textSize.X + 24, 0, 30),
        BackgroundTransparency = 0
    }):Play()
    
    -- Pulsing accent animation
    spawn(function()
        while WatermarkFrame.Parent do
            TweenService:Create(WatermarkAccent, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            }):Play()
            wait(2)
            TweenService:Create(WatermarkAccent, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                BackgroundColor3 = theme3
            }):Play()
            wait(2)
        end
    end)
    
    -- Return methods to update watermark
    return {
        Update = function(self, newText)
            WatermarkLabel.Text = newText
            local newTextSize = game:GetService("TextService"):GetTextSize(
                newText,
                13,
                Enum.Font.GothamBold,
                Vector2.new(math.huge, 27)
            )
            TweenService:Create(WatermarkFrame, TweenInfo.new(0.3), {
                Size = UDim2.new(0, newTextSize.X + 24, 0, 30)
            }):Play()
        end,
        
        Remove = function(self)
            TweenService:Create(WatermarkFrame, TweenInfo.new(0.3), {
                BackgroundTransparency = 1,
                Size = UDim2.new(0, 0, 0, 30)
            }):Play()
            wait(0.3)
            WatermarkFrame:Destroy()
        end
    }
end
    
    function InsideLibrary:CreateTab(text)
        local TabButton = Instance.new("TextButton")
        local TabCorner = Instance.new("UICorner")
        local TabPage = Instance.new("ScrollingFrame")
        local PageLayout = Instance.new("UIListLayout")
        local PagePadding = Instance.new("UIPadding")
        local TabHighlight = Instance.new("Frame")
        local HighlightCorner = Instance.new("UICorner")
        
        -- Tab button
        TabButton.Name = text
        TabButton.Parent = TabContainer
        TabButton.BackgroundColor3 = theme1
        TabButton.BorderSizePixel = 0
        TabButton.Size = UDim2.new(1, -10, 0, 35)
        TabButton.Font = Enum.Font.Gotham
        TabButton.Text = text
        TabButton.TextColor3 = Color3.fromRGB(200, 200, 200)
        TabButton.TextSize = 14
        TabButton.AutoButtonColor = false
        TabButton.ClipsDescendants = true
        
        TabCorner.CornerRadius = UDim.new(0, 5)
        TabCorner.Parent = TabButton
        
        -- Highlight bar
        TabHighlight.Name = "Highlight"
        TabHighlight.Parent = TabButton
        TabHighlight.BackgroundColor3 = theme3
        TabHighlight.BorderSizePixel = 0
        TabHighlight.Position = UDim2.new(0, -5, 0, 0)
        TabHighlight.Size = UDim2.new(0, 3, 1, 0)
        
        HighlightCorner.CornerRadius = UDim.new(1, 0)
        HighlightCorner.Parent = TabHighlight
        
        -- Hover animation
        TabButton.MouseEnter:Connect(function()
            if TabButton.BackgroundColor3 ~= theme3 then
                TweenService:Create(TabButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(theme1.R * 255 * 1.2, theme1.G * 255 * 1.2, theme1.B * 255 * 1.2)}):Play()
            end
        end)
        
        TabButton.MouseLeave:Connect(function()
            if TabButton.BackgroundColor3 ~= theme3 then
                TweenService:Create(TabButton, TweenInfo.new(0.2), {BackgroundColor3 = theme1}):Play()
            end
        end)
        
        -- Tab page
        TabPage.Name = text.."Page"
        TabPage.Parent = MainContent
        TabPage.BackgroundTransparency = 1
        TabPage.BorderSizePixel = 0
        TabPage.Size = UDim2.new(1, 0, 1, 0)
        TabPage.ScrollBarThickness = 4
        TabPage.ScrollBarImageColor3 = theme3
        TabPage.Visible = false
        TabPage.CanvasSize = UDim2.new(0, 0, 0, 0)
        
        PageLayout.Parent = TabPage
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 8)
        
        PagePadding.Parent = TabPage
        PagePadding.PaddingTop = UDim.new(0, 10)
        PagePadding.PaddingLeft = UDim.new(0, 10)
        PagePadding.PaddingRight = UDim.new(0, 10)
        PagePadding.PaddingBottom = UDim.new(0, 10)
        
        -- Update canvas size
        PageLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            TabPage.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 20)
        end)
        
        -- Tab switching with animations
        TabButton.MouseButton1Click:Connect(function()
            for _, page in pairs(MainContent:GetChildren()) do
                if page:IsA("ScrollingFrame") and page.Visible then
                    TweenService:Create(page, TweenInfo.new(0.2), {ScrollingEnabled = false}):Play()
                    wait(0.1)
                    page.Visible = false
                end
            end
            
            for _, btn in pairs(TabContainer:GetChildren()) do
                if btn:IsA("TextButton") then
                    TweenService:Create(btn, TweenInfo.new(0.3), {
                        BackgroundColor3 = theme1,
                        TextColor3 = Color3.fromRGB(200, 200, 200)
                    }):Play()
                    if btn:FindFirstChild("Highlight") then
                        TweenService:Create(btn.Highlight, TweenInfo.new(0.3), {Position = UDim2.new(0, -5, 0, 0)}):Play()
                    end
                end
            end
            
            TabPage.Visible = true
            TabPage.ScrollingEnabled = true
            TweenService:Create(TabButton, TweenInfo.new(0.3), {
                BackgroundColor3 = theme3,
                TextColor3 = Color3.fromRGB(255, 255, 255)
            }):Play()
            TweenService:Create(TabHighlight, TweenInfo.new(0.3), {Position = UDim2.new(0, 0, 0, 0)}):Play()
            play("rbxassetid://6895079853")
        end)
        
        local InsideTab = {}
        

        


        function InsideTab:CreateToggle(text, callback)
            callback = callback or function() end
            
            local ToggleFrame = Instance.new("Frame")
            local ToggleCorner = Instance.new("UICorner")
            local ToggleLabel = Instance.new("TextLabel")
            local ToggleButton = Instance.new("TextButton")
            local ToggleBtnCorner = Instance.new("UICorner")
            local ToggleIndicator = Instance.new("Frame")
            local IndicatorCorner = Instance.new("UICorner")
            
            ToggleFrame.Parent = TabPage
            ToggleFrame.BackgroundColor3 = theme1
            ToggleFrame.BorderSizePixel = 0
            ToggleFrame.Size = UDim2.new(1, -10, 0, 40)
            
            ToggleCorner.CornerRadius = UDim.new(0, 5)
            ToggleCorner.Parent = ToggleFrame
            
            -- Hover effect
            ToggleFrame.MouseEnter:Connect(function()
                TweenService:Create(ToggleFrame, TweenInfo.new(0.2), {
                    BackgroundColor3 = Color3.fromRGB(theme1.R * 255 * 1.15, theme1.G * 255 * 1.15, theme1.B * 255 * 1.15)
                }):Play()
            end)
            
            ToggleFrame.MouseLeave:Connect(function()
                TweenService:Create(ToggleFrame, TweenInfo.new(0.2), {BackgroundColor3 = theme1}):Play()
            end)
            
            ToggleLabel.Parent = ToggleFrame
            ToggleLabel.BackgroundTransparency = 1
            ToggleLabel.Position = UDim2.new(0, 12, 0, 0)
            ToggleLabel.Size = UDim2.new(1, -60, 1, 0)
            ToggleLabel.Font = Enum.Font.Gotham
            ToggleLabel.Text = text
            ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleLabel.TextSize = 13
            ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
            
            ToggleButton.Parent = ToggleFrame
            ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            ToggleButton.BorderSizePixel = 0
            ToggleButton.Position = UDim2.new(1, -50, 0.5, -10)
            ToggleButton.Size = UDim2.new(0, 40, 0, 20)
            ToggleButton.Text = ""
            ToggleButton.AutoButtonColor = false
            
            ToggleBtnCorner.CornerRadius = UDim.new(1, 0)
            ToggleBtnCorner.Parent = ToggleButton
            
            ToggleIndicator.Parent = ToggleButton
            ToggleIndicator.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            ToggleIndicator.BorderSizePixel = 0
            ToggleIndicator.Position = UDim2.new(0, 2, 0.5, -8)
            ToggleIndicator.Size = UDim2.new(0, 16, 0, 16)
            
            IndicatorCorner.CornerRadius = UDim.new(1, 0)
            IndicatorCorner.Parent = ToggleIndicator
            
            local enabled = false
            
            ToggleButton.MouseButton1Click:Connect(function()
                enabled = not enabled
                pcall(callback, enabled)
                
                if enabled then
                    TweenService:Create(ToggleButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {BackgroundColor3 = theme3}):Play()
                    TweenService:Create(ToggleIndicator, TweenInfo.new(0.3, Enum.EasingStyle.Back), {
                        Position = UDim2.new(1, -18, 0.5, -8),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    }):Play()
                    
                    TweenService:Create(ToggleButton, TweenInfo.new(0.1), {Size = UDim2.new(0, 44, 0, 22)}):Play()
                    wait(0.1)
                    TweenService:Create(ToggleButton, TweenInfo.new(0.1), {Size = UDim2.new(0, 40, 0, 20)}):Play()
                else
                    TweenService:Create(ToggleButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
                    TweenService:Create(ToggleIndicator, TweenInfo.new(0.3, Enum.EasingStyle.Back), {
                        Position = UDim2.new(0, 2, 0.5, -8),
                        BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                    }):Play()
                    
                    TweenService:Create(ToggleButton, TweenInfo.new(0.1), {Size = UDim2.new(0, 36, 0, 18)}):Play()
                    wait(0.1)
                    TweenService:Create(ToggleButton, TweenInfo.new(0.1), {Size = UDim2.new(0, 40, 0, 20)}):Play()
                end
                
                play("rbxassetid://6895079853")
            end)
        end

        
        
        function InsideTab:CreateButton(text, callback)
            callback = callback or function() end
            
            local ButtonFrame = Instance.new("TextButton")
            local ButtonCorner = Instance.new("UICorner")
            local ButtonGlow = Instance.new("Frame")
            local GlowCorner = Instance.new("UICorner")
            
            ButtonFrame.Parent = TabPage
            ButtonFrame.BackgroundColor3 = theme3
            ButtonFrame.BorderSizePixel = 0
            ButtonFrame.Size = UDim2.new(1, -10, 0, 40)
            ButtonFrame.Font = Enum.Font.GothamBold
            ButtonFrame.Text = text
            ButtonFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
            ButtonFrame.TextSize = 14
            ButtonFrame.AutoButtonColor = false
            ButtonFrame.ClipsDescendants = true
            
            ButtonCorner.CornerRadius = UDim.new(0, 5)
            ButtonCorner.Parent = ButtonFrame
            
            ButtonGlow.Name = "Glow"
            ButtonGlow.Parent = ButtonFrame
            ButtonGlow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonGlow.BackgroundTransparency = 0.7
            ButtonGlow.BorderSizePixel = 0
            ButtonGlow.Position = UDim2.new(0, -50, 0, 0)
            ButtonGlow.Size = UDim2.new(0, 50, 1, 0)
            
            GlowCorner.CornerRadius = UDim.new(0, 5)
            GlowCorner.Parent = ButtonGlow
            
            spawn(function()
                while ButtonFrame.Parent do
                    TweenService:Create(ButtonGlow, TweenInfo.new(1.5, Enum.EasingStyle.Linear), {
                        Position = UDim2.new(1, 0, 0, 0)
                    }):Play()
                    wait(1.5)
                    ButtonGlow.Position = UDim2.new(0, -50, 0, 0)
                    wait(2)
                end
            end)
            
            ButtonFrame.MouseEnter:Connect(function()
                TweenService:Create(ButtonFrame, TweenInfo.new(0.2), {
                    BackgroundColor3 = Color3.fromRGB(theme3.R * 255 * 1.2, theme3.G * 255 * 1.2, theme3.B * 255 * 1.2),
                    Size = UDim2.new(1, -8, 0, 42)
                }):Play()
            end)
            
            ButtonFrame.MouseLeave:Connect(function()
                TweenService:Create(ButtonFrame, TweenInfo.new(0.2), {
                    BackgroundColor3 = theme3,
                    Size = UDim2.new(1, -10, 0, 40)
                }):Play()
            end)
            
            ButtonFrame.MouseButton1Click:Connect(function()
                TweenService:Create(ButtonFrame, TweenInfo.new(0.1), {
                    Size = UDim2.new(1, -12, 0, 38)
                }):Play()
                wait(0.1)
                TweenService:Create(ButtonFrame, TweenInfo.new(0.1), {
                    Size = UDim2.new(1, -10, 0, 40)
                }):Play()
                pcall(callback)
                play("rbxassetid://6895079853")
            end)
        end
        
        function InsideTab:CreateKeybind(text, defaultKey, callback)
            callback = callback or function() end
            defaultKey = defaultKey or Enum.KeyCode.E
            
            local KeybindFrame = Instance.new("Frame")
            local KeybindCorner = Instance.new("UICorner")
            local KeybindLabel = Instance.new("TextLabel")
            local KeybindButton = Instance.new("TextButton")
            local KeybindBtnCorner = Instance.new("UICorner")
            
            KeybindFrame.Parent = TabPage
            KeybindFrame.BackgroundColor3 = theme1
            KeybindFrame.BorderSizePixel = 0
            KeybindFrame.Size = UDim2.new(1, -10, 0, 40)
            
            KeybindCorner.CornerRadius = UDim.new(0, 5)
            KeybindCorner.Parent = KeybindFrame
            
            -- Hover effect
            KeybindFrame.MouseEnter:Connect(function()
                TweenService:Create(KeybindFrame, TweenInfo.new(0.2), {
                    BackgroundColor3 = Color3.fromRGB(theme1.R * 255 * 1.15, theme1.G * 255 * 1.15, theme1.B * 255 * 1.15)
                }):Play()
            end)
            
            KeybindFrame.MouseLeave:Connect(function()
                TweenService:Create(KeybindFrame, TweenInfo.new(0.2), {BackgroundColor3 = theme1}):Play()
            end)
            
            KeybindLabel.Parent = KeybindFrame
            KeybindLabel.BackgroundTransparency = 1
            KeybindLabel.Position = UDim2.new(0, 12, 0, 0)
            KeybindLabel.Size = UDim2.new(1, -100, 1, 0)
            KeybindLabel.Font = Enum.Font.Gotham
            KeybindLabel.Text = text
            KeybindLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            KeybindLabel.TextSize = 13
            KeybindLabel.TextXAlignment = Enum.TextXAlignment.Left
            
            KeybindButton.Parent = KeybindFrame
            KeybindButton.BackgroundColor3 = theme2
            KeybindButton.BorderSizePixel = 0
            KeybindButton.Position = UDim2.new(1, -80, 0.5, -12)
            KeybindButton.Size = UDim2.new(0, 70, 0, 24)
            KeybindButton.Font = Enum.Font.GothamBold
            KeybindButton.Text = defaultKey.Name
            KeybindButton.TextColor3 = theme3
            KeybindButton.TextSize = 12
            KeybindButton.AutoButtonColor = false
            
            KeybindBtnCorner.CornerRadius = UDim.new(0, 4)
            KeybindBtnCorner.Parent = KeybindButton
            
            local currentKey = defaultKey
            local listening = false
            
            -- Keybind button hover
            KeybindButton.MouseEnter:Connect(function()
                if not listening then
                    TweenService:Create(KeybindButton, TweenInfo.new(0.2), {
                        BackgroundColor3 = Color3.fromRGB(theme2.R * 255 * 1.2, theme2.G * 255 * 1.2, theme2.B * 255 * 1.2)
                    }):Play()
                end
            end)
            
            KeybindButton.MouseLeave:Connect(function()
                if not listening then
                    TweenService:Create(KeybindButton, TweenInfo.new(0.2), {BackgroundColor3 = theme2}):Play()
                end
            end)
            
            -- Click to change keybind
            KeybindButton.MouseButton1Click:Connect(function()
                if listening then return end
                
                listening = true
                KeybindButton.Text = "..."
                TweenService:Create(KeybindButton, TweenInfo.new(0.3), {
                    BackgroundColor3 = theme3,
                    TextColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
                
                play("rbxassetid://6895079853")
                
                local connection
                connection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
                    if input.UserInputType == Enum.UserInputType.Keyboard then
                        listening = false
                        currentKey = input.KeyCode
                        KeybindButton.Text = input.KeyCode.Name
                        
                        TweenService:Create(KeybindButton, TweenInfo.new(0.3), {
                            BackgroundColor3 = theme2,
                            TextColor3 = theme3
                        }):Play()
                        
                        play("rbxassetid://6895079853")
                        connection:Disconnect()
                    end
                end)
            end)
            
            -- Listen for the keybind to trigger callback
            UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if not gameProcessed and input.KeyCode == currentKey and not listening then
                    pcall(callback)
                    
                    -- Flash animation
                    TweenService:Create(KeybindButton, TweenInfo.new(0.1), {
                        BackgroundColor3 = theme3,
                        TextColor3 = Color3.fromRGB(255, 255, 255),
                        Size = UDim2.new(0, 75, 0, 26)
                    }):Play()
                    wait(0.1)
                    TweenService:Create(KeybindButton, TweenInfo.new(0.2), {
                        BackgroundColor3 = theme2,
                        TextColor3 = theme3,
                        Size = UDim2.new(0, 70, 0, 24)
                    }):Play()
                    
                    play("rbxassetid://6895079853")
                end
            end)
            
            return {
                SetKey = function(self, newKey)
                    currentKey = newKey
                    KeybindButton.Text = newKey.Name
                end,
                GetKey = function(self)
                    return currentKey
                end
            }
        end
        
        function InsideTab:CreateSlider(text, minvalue, maxvalue, callback)
            minvalue = minvalue or 0
            maxvalue = maxvalue or 100
            callback = callback or function() end
            
            local SliderFrame = Instance.new("Frame")
            local SliderCorner = Instance.new("UICorner")
            local SliderLabel = Instance.new("TextLabel")
            local SliderValue = Instance.new("TextLabel")
            local SliderBar = Instance.new("Frame")
            local BarCorner = Instance.new("UICorner")
            local SliderFill = Instance.new("Frame")
            local FillCorner = Instance.new("UICorner")
            local SliderButton = Instance.new("TextButton")
            local SliderDot = Instance.new("Frame")
            local DotCorner = Instance.new("UICorner")
            
            SliderFrame.Parent = TabPage
            SliderFrame.BackgroundColor3 = theme1
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Size = UDim2.new(1, -10, 0, 50)
            
            SliderCorner.CornerRadius = UDim.new(0, 5)
            SliderCorner.Parent = SliderFrame
            
            SliderFrame.MouseEnter:Connect(function()
                TweenService:Create(SliderFrame, TweenInfo.new(0.2), {
                    BackgroundColor3 = Color3.fromRGB(theme1.R * 255 * 1.15, theme1.G * 255 * 1.15, theme1.B * 255 * 1.15)
                }):Play()
            end)
            
            SliderFrame.MouseLeave:Connect(function()
                TweenService:Create(SliderFrame, TweenInfo.new(0.2), {BackgroundColor3 = theme1}):Play()
            end)
            
            SliderLabel.Parent = SliderFrame
            SliderLabel.BackgroundTransparency = 1
            SliderLabel.Position = UDim2.new(0, 12, 0, 5)
            SliderLabel.Size = UDim2.new(1, -24, 0, 20)
            SliderLabel.Font = Enum.Font.Gotham
            SliderLabel.Text = text
            SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderLabel.TextSize = 13
            SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
            
            SliderValue.Parent = SliderFrame
            SliderValue.BackgroundTransparency = 1
            SliderValue.Position = UDim2.new(1, -50, 0, 5)
            SliderValue.Size = UDim2.new(0, 40, 0, 20)
            SliderValue.Font = Enum.Font.GothamBold
            SliderValue.Text = tostring(minvalue)
            SliderValue.TextColor3 = theme3
            SliderValue.TextSize = 13
            SliderValue.TextXAlignment = Enum.TextXAlignment.Right
            
            SliderBar.Parent = SliderFrame
            SliderBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            SliderBar.BorderSizePixel = 0
            SliderBar.Position = UDim2.new(0, 12, 1, -15)
            SliderBar.Size = UDim2.new(1, -24, 0, 4)
            
            BarCorner.CornerRadius = UDim.new(1, 0)
            BarCorner.Parent = SliderBar
            
            SliderFill.Parent = SliderBar
            SliderFill.BackgroundColor3 = theme3
            SliderFill.BorderSizePixel = 0
            SliderFill.Size = UDim2.new(0, 0, 1, 0)
            
            FillCorner.CornerRadius = UDim.new(1, 0)
            FillCorner.Parent = SliderFill
            
            SliderDot.Parent = SliderBar
            SliderDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderDot.BorderSizePixel = 0
            SliderDot.Position = UDim2.new(0, -4, 0.5, -4)
            SliderDot.Size = UDim2.new(0, 8, 0, 8)
            SliderDot.ZIndex = 2
            
            DotCorner.CornerRadius = UDim.new(1, 0)
            DotCorner.Parent = SliderDot
            
            SliderButton.Parent = SliderBar
            SliderButton.BackgroundTransparency = 1
            SliderButton.Size = UDim2.new(1, 0, 1, 0)
            SliderButton.Text = ""
            SliderButton.ZIndex = 3
            
            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value = minvalue
            
            SliderButton.MouseButton1Down:Connect(function()
                local moveConnection
                local releaseConnection
                
                TweenService:Create(SliderDot, TweenInfo.new(0.2), {Size = UDim2.new(0, 12, 0, 12), Position = UDim2.new(0, -6, 0.5, -6)}):Play()
                
                local function update()
                    local relativeX = math.clamp(mouse.X - SliderBar.AbsolutePosition.X, 0, SliderBar.AbsoluteSize.X)
                    local percentage = relativeX / SliderBar.AbsoluteSize.X
                    Value = math.floor(minvalue + (maxvalue - minvalue) * percentage)
                    
                    TweenService:Create(SliderFill, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
                        Size = UDim2.new(percentage, 0, 1, 0)
                    }):Play()
                    TweenService:Create(SliderDot, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
                        Position = UDim2.new(percentage, -6, 0.5, -6)
                    }):Play()
                    
                    SliderValue.Text = tostring(Value)
                    pcall(callback, Value)
                end
                
                update()
                
                moveConnection = mouse.Move:Connect(update)
                releaseConnection = uis.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        TweenService:Create(SliderDot, TweenInfo.new(0.2), {Size = UDim2.new(0, 8, 0, 8), Position = UDim2.new(SliderFill.Size.X.Scale, -4, 0.5, -4)}):Play()
                        moveConnection:Disconnect()
                        releaseConnection:Disconnect()
                    end
                end)
            end)
        end
        
        function InsideTab:CreateLabel(text)
            local LabelFrame = Instance.new("Frame")
            local LabelCorner = Instance.new("UICorner")
            local Label = Instance.new("TextLabel")
            
            LabelFrame.Parent = TabPage
            LabelFrame.BackgroundColor3 = theme1
            LabelFrame.BorderSizePixel = 0
            LabelFrame.Size = UDim2.new(1, -10, 0, 30)
            
            LabelCorner.CornerRadius = UDim.new(0, 5)
            LabelCorner.Parent = LabelFrame
            
            Label.Parent = LabelFrame
            Label.BackgroundTransparency = 1
            Label.Size = UDim2.new(1, 0, 1, 0)
            Label.Font = Enum.Font.GothamBold
            Label.Text = text
            Label.TextColor3 = theme3
            Label.TextSize = 14
        end
        
        function InsideTab:Show()
            for _, page in pairs(MainContent:GetChildren()) do
                if page:IsA("ScrollingFrame") and page.Visible then
                    TweenService:Create(page, TweenInfo.new(0.2), {ScrollingEnabled = false}):Play()
                    wait(0.1)
                    page.Visible = false
                end
            end
            
            for _, btn in pairs(TabContainer:GetChildren()) do
                if btn:IsA("TextButton") then
                    TweenService:Create(btn, TweenInfo.new(0.3), {
                        BackgroundColor3 = theme1,
                        TextColor3 = Color3.fromRGB(200, 200, 200)
                    }):Play()
                    if btn:FindFirstChild("Highlight") then
                        TweenService:Create(btn.Highlight, TweenInfo.new(0.3), {Position = UDim2.new(0, -5, 0, 0)}):Play()
                    end
                end
            end
            
            TabPage.Visible = true
            TabPage.ScrollingEnabled = true
            TweenService:Create(TabButton, TweenInfo.new(0.3), {
                BackgroundColor3 = theme3,
                TextColor3 = Color3.fromRGB(255, 255, 255)
            }):Play()
            if TabButton:FindFirstChild("Highlight") then
                TweenService:Create(TabButton.Highlight, TweenInfo.new(0.3), {Position = UDim2.new(0, 0, 0, 0)}):Play()
            end
        end
        
        return InsideTab
    end
    
    return InsideLibrary
end

return library
