local library = {}

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

    -- Enhanced theme system with better colors
    if theme == "Normal" then
        theme1 = Color3.fromRGB(20, 20, 20)
        theme2 = Color3.fromRGB(15, 15, 15)
        theme3 = Color3.fromRGB(200, 50, 50)
    elseif theme == "Reverse" then
        theme1 = Color3.fromRGB(26,26,26)
        theme2 = Color3.fromRGB(32,32,32)
        theme3 = Color3.fromRGB(176, 148, 255)
    elseif theme == "Blood" then
        theme1 = Color3.fromRGB(25, 20, 20)
        theme2 = Color3.fromRGB(18, 15, 15)
        theme3 = Color3.fromRGB(138, 3, 3)
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
    
    -- Main frame
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = Screen
    MainFrame.BackgroundColor3 = theme1
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.5, -350, 0.5, -250)
    MainFrame.Size = UDim2.new(0, 700, 0, 500)
    MainFrame.ClipsDescendants = true
    MainFrame.Active = true
    
    UICorner.CornerRadius = UDim.new(0, 8)
    UICorner.Parent = MainFrame
    
    -- Topbar
    Topbar.Name = "Topbar"
    Topbar.Parent = MainFrame
    Topbar.BackgroundColor3 = theme2
    Topbar.BorderSizePixel = 0
    Topbar.Size = UDim2.new(1, 0, 0, 40)
    
    TopbarCorner.CornerRadius = UDim.new(0, 8)
    TopbarCorner.Parent = Topbar
    
    -- Title
    TitleLabel.Parent = Topbar
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Position = UDim2.new(0, 15, 0, 0)
    TitleLabel.Size = UDim2.new(0, 300, 1, 0)
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.Text = name
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.TextSize = 16
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Minimize button
    MinimizeBtn.Parent = Topbar
    MinimizeBtn.BackgroundTransparency = 1
    MinimizeBtn.Position = UDim2.new(1, -40, 0, 0)
    MinimizeBtn.Size = UDim2.new(0, 40, 0, 40)
    MinimizeBtn.Font = Enum.Font.GothamBold
    MinimizeBtn.Text = "−"
    MinimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    MinimizeBtn.TextSize = 20
    
    -- Content frame
    ContentFrame.Parent = MainFrame
    ContentFrame.BackgroundTransparency = 1
    ContentFrame.Position = UDim2.new(0, 0, 0, 40)
    ContentFrame.Size = UDim2.new(1, 0, 1, -40)
    
    -- Sidebar
    Sidebar.Name = "Sidebar"
    Sidebar.Parent = ContentFrame
    Sidebar.BackgroundColor3 = theme2
    Sidebar.BorderSizePixel = 0
    Sidebar.Position = UDim2.new(0, 10, 0, 10)
    Sidebar.Size = UDim2.new(0, 150, 1, -20)
    
    SidebarCorner.CornerRadius = UDim.new(0, 6)
    SidebarCorner.Parent = Sidebar
    
    -- Tab container
    TabContainer.Parent = Sidebar
    TabContainer.BackgroundTransparency = 1
    TabContainer.BorderSizePixel = 0
    TabContainer.Size = UDim2.new(1, 0, 1, 0)
    TabContainer.ScrollBarThickness = 4
    TabContainer.ScrollBarImageColor3 = theme3
    
    TabLayout.Parent = TabContainer
    TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabLayout.Padding = UDim.new(0, 5)
    
    -- Main content area
    MainContent.Name = "MainContent"
    MainContent.Parent = ContentFrame
    MainContent.BackgroundColor3 = theme2
    MainContent.BorderSizePixel = 0
    MainContent.Position = UDim2.new(0, 170, 0, 10)
    MainContent.Size = UDim2.new(1, -180, 1, -20)
    
    MainCorner.CornerRadius = UDim.new(0, 6)
    MainCorner.Parent = MainContent
    
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
    
    -- Minimize functionality
    local minimized = false
    MinimizeBtn.MouseButton1Click:Connect(function()
        minimized = not minimized
        if minimized then
            ContentFrame.Visible = false
            MainFrame:TweenSize(UDim2.new(0, 700, 0, 40), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
            MinimizeBtn.Text = "+"
        else
            ContentFrame.Visible = true
            MainFrame:TweenSize(UDim2.new(0, 700, 0, 500), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
            MinimizeBtn.Text = "−"
        end
        play("rbxassetid://6895079853")
    end)
    
    local InsideLibrary = {}
    
    function InsideLibrary:CreateTab(text)
        local TabButton = Instance.new("TextButton")
        local TabCorner = Instance.new("UICorner")
        local TabPage = Instance.new("ScrollingFrame")
        local PageLayout = Instance.new("UIListLayout")
        local PagePadding = Instance.new("UIPadding")
        
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
        
        TabCorner.CornerRadius = UDim.new(0, 5)
        TabCorner.Parent = TabButton
        
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
        
        -- Tab switching
        TabButton.MouseButton1Click:Connect(function()
            for _, page in pairs(MainContent:GetChildren()) do
                if page:IsA("ScrollingFrame") then
                    page.Visible = false
                end
            end
            
            for _, btn in pairs(TabContainer:GetChildren()) do
                if btn:IsA("TextButton") then
                    btn.BackgroundColor3 = theme1
                    btn.TextColor3 = Color3.fromRGB(200, 200, 200)
                end
            end
            
            TabPage.Visible = true
            TabButton.BackgroundColor3 = theme3
            TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
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
                    ToggleButton.BackgroundColor3 = theme3
                    ToggleIndicator:TweenPosition(UDim2.new(1, -18, 0.5, -8), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
                    ToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                else
                    ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                    ToggleIndicator:TweenPosition(UDim2.new(0, 2, 0.5, -8), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
                    ToggleIndicator.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                end
                
                play("rbxassetid://6895079853")
            end)
        end
        
        function InsideTab:CreateButton(text, callback)
            callback = callback or function() end
            
            local ButtonFrame = Instance.new("TextButton")
            local ButtonCorner = Instance.new("UICorner")
            
            ButtonFrame.Parent = TabPage
            ButtonFrame.BackgroundColor3 = theme3
            ButtonFrame.BorderSizePixel = 0
            ButtonFrame.Size = UDim2.new(1, -10, 0, 40)
            ButtonFrame.Font = Enum.Font.GothamBold
            ButtonFrame.Text = text
            ButtonFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
            ButtonFrame.TextSize = 14
            ButtonFrame.AutoButtonColor = false
            
            ButtonCorner.CornerRadius = UDim.new(0, 5)
            ButtonCorner.Parent = ButtonFrame
            
            ButtonFrame.MouseButton1Click:Connect(function()
                ButtonFrame.BackgroundColor3 = Color3.fromRGB(theme3.R * 255 * 0.8, theme3.G * 255 * 0.8, theme3.B * 255 * 0.8)
                wait(0.1)
                ButtonFrame.BackgroundColor3 = theme3
                pcall(callback)
                play("rbxassetid://6895079853")
            end)
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
            
            SliderFrame.Parent = TabPage
            SliderFrame.BackgroundColor3 = theme1
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Size = UDim2.new(1, -10, 0, 50)
            
            SliderCorner.CornerRadius = UDim.new(0, 5)
            SliderCorner.Parent = SliderFrame
            
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
            
            SliderButton.Parent = SliderBar
            SliderButton.BackgroundTransparency = 1
            SliderButton.Size = UDim2.new(1, 0, 1, 0)
            SliderButton.Text = ""
            
            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value = minvalue
            
            SliderButton.MouseButton1Down:Connect(function()
                local moveConnection
                local releaseConnection
                
                local function update()
                    local relativeX = math.clamp(mouse.X - SliderBar.AbsolutePosition.X, 0, SliderBar.AbsoluteSize.X)
                    local percentage = relativeX / SliderBar.AbsoluteSize.X
                    Value = math.floor(minvalue + (maxvalue - minvalue) * percentage)
                    
                    SliderFill:TweenSize(UDim2.new(percentage, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
                    SliderValue.Text = tostring(Value)
                    pcall(callback, Value)
                end
                
                update()
                
                moveConnection = mouse.Move:Connect(update)
                releaseConnection = uis.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        moveConnection:Disconnect()
                        releaseConnection:Disconnect()
                    end
                end)
            end)
        end
        
        function InsideTab:Show()
            for _, page in pairs(MainContent:GetChildren()) do
                if page:IsA("ScrollingFrame") then
                    page.Visible = false
                end
            end
            
            for _, btn in pairs(TabContainer:GetChildren()) do
                if btn:IsA("TextButton") then
                    btn.BackgroundColor3 = theme1
                    btn.TextColor3 = Color3.fromRGB(200, 200, 200)
                end
            end
            
            TabPage.Visible = true
            TabButton.BackgroundColor3 = theme3
            TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
        
        return InsideTab
    end
    
    return InsideLibrary
end

return library