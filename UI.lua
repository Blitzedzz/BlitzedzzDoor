-- GUI to Lua 
-- Version: 0.0.3

-- Instances:

local Frame = Instance.new("ImageLabel")
local TextLabel_1 = Instance.new("TextLabel")

-- Properties:
Frame.Name = "Frame"
Frame.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
Frame.BackgroundTransparency = 1
Frame.BorderColor3 = Color3.fromRGB(27,42,53)
Frame.Position = UDim2.new(0.137305677, 0,0.396486729, 0)
Frame.Size = UDim2.new(0, 163,0, 84)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(30,30,30)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.11999999731779099

TextLabel_1.Parent = Frame
TextLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
TextLabel_1.BackgroundTransparency = 1
TextLabel_1.BorderColor3 = Color3.fromRGB(27,42,53)
TextLabel_1.Position = UDim2.new(-0.000507757068, 0,0.297359645, 0)
TextLabel_1.Size = UDim2.new(0, 172,0, 34)
TextLabel_1.Font = Enum.Font.Unknown
TextLabel_1.RichText = true
TextLabel_1.Text = "Scanning For Backdoors"
TextLabel_1.TextScaled = true
TextLabel_1.TextSize = 51
TextLabel_1.TextWrapped = true

local function zYnVhwcbOSDiqRJM()
local script = Instance.new("LocalScript",Frame)
local UIS = game:GetService("UserInputService")
function dragify(Frame)
	dragToggle = nil
	dragSpeed = 0.15
	dragInput = nil
	dragStart = nil
	dragPos = nil
	function updateInput(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
	end
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end
dragify(script.Parent)

end
coroutine.wrap(zYnVhwcbOSDiqRJM)()


local function grnyExyfujiKvdse()
local script = Instance.new("LocalScript",Frame)
wait(10)
script.Parent = false
end
coroutine.wrap(grnyExyfujiKvdse)()
