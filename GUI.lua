--[[
Cielle#1700
discord.gg/9c53xbzwx8
]]
InstaVoid = false
ProtectSpawn = true
AntiRocketOn = true
AntiCrash = true
AntiVoid = true
AntiLoadSteal = true
HitlistEnabled = true
AntiSK = false
local Hitlist = {
	[19131678] = true; --tannersnake
	[701899777] = true; --Zeithorn
	[1435037464] = true; --G4KC (Zeithorn's alt)
	[2025161053] = true; --NoelFazePlayz
	[1847997952] = true; --XUndefeatCheater666X
	[1030824613] = true; --TimeyXX
	[1938171386] = true; --imlostmyacclol
	[1535877844] = true; --dansker_progirl
	[1715057098] = true; --Spelling_Disorder
	[421976380] = true; --AliveKelly128
	[2294635353] = true; --sprayoptional
	[1994520162] = true; --ICanN0tSpeak
	[1795268098] = true; --Acceptmt
	[363908611] = true; --HandMeDown1
	[2323727965] = true; --AnkIeGeneral
	[2326617848] = true; --FallenVinIsHorrible
	[216392090] = true; --Iron_hop
	[98910172] = true; --jacktaylor32
	[1778617036] = true; --Donaldduckplazroblox
	[90357699] = true; --jamesonlangston8805
	--[1753951107] = true; --auvtp
	[932949286] = true; --Hackpro227
	[63618866] = true; --GMTRocker
	[103589038] = true; --nickexo200
	[10542735] = true; --firemomo45
	[70161287] = true; --Digital_Crush
}
--You can change the variables above but don't touch the ones below
AntiRocketBlacklist = {}
TargetList = {}
Lag = false
on = false
CBring = false
Voided = false
Anchored = false
Cleanup = false
MuteBoombox = false
GrimgoldSpam = false
ChartSpam = false
AntiNightmare = false
LoadSpam = false
if not game:IsLoaded() then
    game.Loaded:wait()
end
repeat game:GetService("RunService").RenderStepped:Wait() until game:GetService("Players").LocalPlayer
function LoopVoid()
	spawn(function()
		while Voided do
			game:GetService("RunService").RenderStepped:Wait()
			for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") or v.Name == "Humanoid" then
					v:Destroy()
				end
			end
		end
	end)
end
if InstaVoid then
	Voided = true
	LoopVoid()
end
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
	v:Disable()
end

Page = 1
page1 = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
page2 = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
page3 = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
page4 = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)

page2.Enabled = false
page3.Enabled = false
page4.Enabled = false

local base = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local tb = Instance.new("TextBox", base)
tb.Size = UDim2.new(0.15, 0, 0.08, 0)
tb.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
tb.TextScaled = true
tb.TextWrapped = true
tb.Text = "Target Name"
tb.Position = UDim2.new(0.025, 0, 0.925, 0)
tb:GetPropertyChangedSignal("Text"):Connect(function()
	local plr = getPlayer(tb.Text)
	Target = plr.Name
end)
spawn(function()
	while wait() do
		if tb.Text == "" then
			wait(5)
			if tb.Text == "" then
				tb.Text = "Target Name"
			end
		end
	end
end)

function getPlayer(shortcut)
	local player = nil
	local g = game.Players:GetPlayers()
	for i = 1, #g do
		if string.lower(string.sub(g[i].Name, 1, string.len(shortcut))) == string.lower(shortcut) then
			player = g[i]
			break
		end
	end
	return player
end

local LeftArrow = Instance.new("TextButton", base)
LeftArrow.Size = UDim2.new(0.015, 0, 0.125, 0)
LeftArrow.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
LeftArrow.TextScaled = true
LeftArrow.TextWrapped = true
LeftArrow.Text = "<"
LeftArrow.Position = UDim2.new(0, 0, 0.8, 0)
LeftArrow.MouseButton1Click:Connect(function()
    if Page == 1 then
        LeftArrow.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        wait(.05)
        LeftArrow.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
        wait(.05)
        LeftArrow.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        wait(.05)
        LeftArrow.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
    elseif Page == 2 then
        Page = 1
        page1.Enabled = true
        page2.Enabled = false
    elseif Page == 3 then
        Page = 2
        page2.Enabled = true
        page3.Enabled = false
    elseif Page == 4 then
        Page = 3
        page3.Enabled = true
        page4.Enabled = false
	end
end)

local RightArrow = Instance.new("TextButton", base)
RightArrow.Size = UDim2.new(0.015, 0, 0.125, 0)
RightArrow.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
RightArrow.TextScaled = true
RightArrow.TextWrapped = true
RightArrow.Text = ">"
RightArrow.Position = UDim2.new(0.185, 0, 0.8, 0)
RightArrow.MouseButton1Click:Connect(function()
    if Page == 1 then
        Page = 2
        page1.Enabled = false
        page2.Enabled = true
    elseif Page == 2 then
        Page = 3
        page2.Enabled = false
        page3.Enabled = true
    elseif Page == 3 then
        Page = 4
        page3.Enabled = false
        page4.Enabled = true
    elseif Page == 4 then
        RightArrow.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        wait(.05)
        RightArrow.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
        wait(.05)
        RightArrow.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        wait(.05)
        RightArrow.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
    end
end)

local TargetLock = Instance.new("TextButton", base)
TargetLock.Size = UDim2.new(0.025, 0, 0.08, 0)
TargetLock.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
TargetLock.TextScaled = true
TargetLock.TextWrapped = true
TargetLock.Text = "Lock Target"
TargetLock.Position = UDim2.new(0.175, 0, 0.925, 0)
TargetLock.MouseButton1Click:Connect(function()
	pcall(function()
		if tb.Text == "" or tb.Text == "Target Name" or tb.Text == "All" then
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = "[Catalog Hell]: Enter a target's name in the textbox first.",
			})
			TargetLock.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			wait(.05)
			TargetLock.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
			wait(.05)
			TargetLock.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			wait(.05)
			TargetLock.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
		else
        	for i, v in pairs(game.Players:GetChildren()) do
        	    if v.Name == Target and not table.find(TargetList, v) then
        	        table.insert(TargetList, v)
        	        game.StarterGui:SetCore("ChatMakeSystemMessage", {
        	            Text = "[Catalog Hell]: " .. v.Name .. " is now locked into the target list.",
					})
					tb.Text = "Target Name"
					TargetLock.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
					wait(.05)
					TargetLock.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
        	    end
			end
		end
    end)
end)

local ClearTargets = Instance.new("TextButton", base)
ClearTargets.Size = UDim2.new(0.025, 0, 0.08, 0)
ClearTargets.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ClearTargets.TextScaled = true
ClearTargets.TextWrapped = true
ClearTargets.Text = "Clear Targets"
ClearTargets.Position = UDim2.new(0, 0, 0.925, 0)
ClearTargets.MouseButton1Click:Connect(function()
    pcall(function()
		TargetList = {}
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "[Catalog Hell]: Target list cleared.",
		})
		ClearTargets.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		wait(.05)
		ClearTargets.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
	end)
end)

------------------------------ page 1 ------------------------------

local P1Button1CLR = Instance.new("TextButton", page1)
P1Button1CLR.Size = UDim2.new(0.040, 0, 0.025, 0)
P1Button1CLR.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
P1Button1CLR.TextScaled = true
P1Button1CLR.TextWrapped = true
P1Button1CLR.Text = "CLR"
P1Button1CLR.Position = UDim2.new(0.015, 0, 0.8, 0)
P1Button1CLR.MouseButton1Click:Connect(function()
	AntiRocketBlacklist = {}
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "[Catalog Hell]: AntiRocket blacklist cleared.",
	})
end)

local P1Button1 = Instance.new("TextButton", page1)
P1Button1.Size = UDim2.new(0.090, 0, 0.025, 0)
if AntiRocketOn then
	P1Button1.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
else
	P1Button1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end
P1Button1.TextScaled = true
P1Button1.TextWrapped = true
P1Button1.Text = "AntiRocket"
P1Button1.Position = UDim2.new(0.055, 0, 0.8, 0)
P1Button1.MouseButton1Click:Connect(function()
	AntiRocketOn = not AntiRocketOn
	if AntiRocketOn then
		P1Button1.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		AntiRockets()
	else
		if active then
			P1Button1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			active = false
		end
	end
end)

local P1Button1BL = Instance.new("TextButton", page1)
P1Button1BL.Size = UDim2.new(0.040, 0, 0.025, 0)
P1Button1BL.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
P1Button1BL.TextScaled = true
P1Button1BL.TextWrapped = true
P1Button1BL.Text = "BL"
P1Button1BL.Position = UDim2.new(0.145, 0, 0.8, 0)
P1Button1BL.MouseButton1Click:Connect(function()
	if tb.Text == "All" or tb.Text == "" or tb.Text == "Target Name" then
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "[Catalog Hell]: Enter username of player in the textbox first.",
		})
	else
		pcall(function()
			for i, v in pairs(game.Players:GetChildren()) do
				if not table.find(AntiRocketBlacklist, v) and v.Name == Target then
					game.StarterGui:SetCore("ChatMakeSystemMessage", {
						Text = "[Catalog Hell]: " .. v.Name .. " is now blacklisted from AntiRocket.",
					})
					table.insert(AntiRocketBlacklist, v)
				end
			end
		end)
	end
end)

local P1Button2 = Instance.new("TextButton", page1)
P1Button2.Size = UDim2.new(0.17, 0, 0.025, 0)
if InstaVoid == false then
	P1Button2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
else
	P1Button2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
end
P1Button2.TextScaled = true
P1Button2.TextWrapped = true
P1Button2.Text = "Void"
P1Button2.Position = UDim2.new(0.015, 0, 0.825, 0)
P1Button2.MouseButton1Click:Connect(function()
	if Voided then
		P1Button2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Voided = false
		game:GetService('ReplicatedStorage').Remotes.SetRigType:FireServer(Enum.HumanoidRigType.R6)
	else
		if on == true and CBring == true then
			spawn(function()
				on = false
				CBring = false
				P1Button2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
				wait(.2)
				on = true
				if tb.Text == "All" then
				else
					tb.Text = Target
				end
				if tb.Text == "All" then
					start2()
				else
					start1()
				end
			end)
		end
		P1Button2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		Voided = true
		LoopVoid()
	end
end)

local P1Button3 = Instance.new("TextButton", page1)
P1Button3.Size = UDim2.new(0.17, 0, 0.025, 0)
P1Button3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
P1Button3.TextScaled = true
P1Button3.TextWrapped = true
P1Button3.Text = "Anchor"
P1Button3.Position = UDim2.new(0.015, 0, 0.85, 0)
P1Button3.MouseButton1Click:Connect(function()
	Anchored = not Anchored
	if Anchored then
		P1Button3.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		spawn(function()
			while Anchored do
				pcall(function()
					game:GetService("RunService").RenderStepped:Wait()
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0 then
						game:GetService('ReplicatedStorage').Remotes.SetRigType:FireServer(Enum.HumanoidRigType.R6)
						game.Players.LocalPlayer.CharacterAdded:Wait()
					end
				end)
			end
		end)
		Pos = game.Players.LocalPlayer.Character.Head.Position
		RootPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		FindPad()
		platform1 = Instance.new("Part")
		platform1.Name = "Platform"
		platform1.Anchored = true
		platform1.Size = Vector3.new(5.5, 1, 5.5)
		platform1.Transparency = 1
		platform1.Position = Pos - Vector3.new(0, 5, 0)
		platform1.Parent = workspace
		repeat
			pcall(function()
				game:GetService("RunService").RenderStepped:Wait()
				if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true then
					game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit = false
				end
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Part") then
						v.Velocity = Vector3.new(0,0,0)
					end
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RootPos
			end)
		until Anchored == false
	else
		P1Button3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		platform1:Remove()
		PadFound = false
	end
end)

local P1Button4 = Instance.new("TextButton", page1)
P1Button4.Size = UDim2.new(0.17, 0, 0.025, 0)
P1Button4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
P1Button4.TextScaled = true
P1Button4.TextWrapped = true
P1Button4.Text = "MuteBoombox"
P1Button4.Position = UDim2.new(0.015, 0, 0.875, 0)
P1Button4.MouseButton1Click:Connect(function()
	MuteBoombox = not MuteBoombox
	if MuteBoombox then
		P1Button4.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		spawn(function()
			while MuteBoombox do
				wait(.5)
				for i, v in pairs(workspace:GetChildren()) do
					for i, q in pairs(v:GetDescendants()) do
						if q:IsA("Sound") and q:FindFirstAncestor("SuperFlyGoldBoombox") then
							q:Stop()
						end
						if q:IsA("Sound") and q:FindFirstAncestor("BoomboxGearThree") then
							q:Stop()
						end
					end
				end
			end
		end)
	else
		P1Button4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

local P1Button5 = Instance.new("TextButton", page1)
P1Button5.Size = UDim2.new(0.17, 0, 0.025, 0)
P1Button5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
P1Button5.TextScaled = true
P1Button5.TextWrapped = true
P1Button5.Text = "CBring"
P1Button5.Position = UDim2.new(0.015, 0, 0.9, 0)
P1Button5.MouseButton1Click:Connect(function()
	if not Voided then
		CBring = not CBring
		if CBring then
			P1Button5.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		else
			P1Button5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			spawn(function()
				if game.Players.LocalPlayer.Backpack:FindFirstChild("SkullMace") or game.Players.LocalPlayer.Character:FindFirstChild("SkullMace") then
					game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(63253718)
				end
			end)
			if on then
				if tb.Text == "All" then
					start2()
				else
					start1()
				end
			end
		end
	elseif Voided and CBring then
		CBring = false
		P1Button5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		spawn(function()
			if game.Players.LocalPlayer.Backpack:FindFirstChild("SkullMace") or game.Players.LocalPlayer.Character:FindFirstChild("SkullMace") then
				game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(63253718)
			end
		end)
	elseif Voided and not CBring then
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "[Catalog Hell]: Can't cbring while voided.",
		})
	end
end)

------------------------------ page 2 ------------------------------

local P2Button1LeftArrow = Instance.new("TextButton", page2)
P2Button1LeftArrow.Size = UDim2.new(0.040, 0, 0.025, 0)
P2Button1LeftArrow.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
P2Button1LeftArrow.TextScaled = true
P2Button1LeftArrow.TextWrapped = true
P2Button1LeftArrow.Text = "<"
P2Button1LeftArrow.Position = UDim2.new(0.015, 0, 0.8, 0)
P2Button1LeftArrow.MouseButton1Click:Connect(function()
	tb.Text = Target
	if game:GetService("Workspace")[Target.."'s Cloud"].OutfitGiver:FindFirstChild("Previous") then
		fireclickdetector(game:GetService("Workspace")[Target.."'s Cloud"].OutfitGiver:FindFirstChild("Previous").ClickDetector)
	end
end)

local P2Button1 = Instance.new("TextButton", page2)
P2Button1.Size = UDim2.new(0.090, 0, 0.025, 0)
P2Button1.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
P2Button1.TextScaled = true
P2Button1.TextWrapped = true
P2Button1.Text = "Steal Load"
P2Button1.Position = UDim2.new(0.055, 0, 0.8, 0)
P2Button1.MouseButton1Click:Connect(function()
	tb.Text = Target
	if game:GetService("Workspace")[Target.."'s Cloud"].OutfitGiver:FindFirstChild("Click here to unlock this feature") then
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "[Catalog Hell]: Player doesn't own OutfitGiver gamepass.",
		})
	elseif game:GetService("Workspace")[Target.."'s Cloud"].OutfitGiver:FindFirstChild("Load") then
		fireclickdetector(game:GetService("Workspace")[Target.."'s Cloud"].OutfitGiver.Load.Head.ClickDetector)
	else
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "[Catalog Hell]: Load tb not found.",
		})
	end
end)

local P2Button1RightArrow = Instance.new("TextButton", page2)
P2Button1RightArrow.Size = UDim2.new(0.040, 0, 0.025, 0)
P2Button1RightArrow.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
P2Button1RightArrow.TextScaled = true
P2Button1RightArrow.TextWrapped = true
P2Button1RightArrow.Text = ">"
P2Button1RightArrow.Position = UDim2.new(0.145, 0, 0.8, 0)
P2Button1RightArrow.MouseButton1Click:Connect(function()
	tb.Text = Target
	if game:GetService("Workspace")[Target.."'s Cloud"].OutfitGiver:FindFirstChild("Next") then
		fireclickdetector(game:GetService("Workspace")[Target.."'s Cloud"].OutfitGiver.Next.ClickDetector)
	end
end)

local P2Button2 = Instance.new("TextButton", page2)
P2Button2.Size = UDim2.new(0.17, 0, 0.025, 0)
if AntiCrash then
	P2Button2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
else
	P2Button2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end
P2Button2.TextScaled = true
P2Button2.TextWrapped = true
P2Button2.Text = "AntiCrash"
P2Button2.Position = UDim2.new(0.015, 0, 0.825, 0)
P2Button2.MouseButton1Click:Connect(function()
	AntiCrash = not AntiCrash
	if AntiCrash then
		P2Button2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		StartAntiCrash()
	else
		P2Button2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

local P2Button3 = Instance.new("TextButton", page2)
P2Button3.Size = UDim2.new(0.17, 0, 0.025, 0)
if AntiLoadSteal then
	P2Button3.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "[Catalog Hell]: AntiLoadSteal: Keep in mind that your first load in slot 1 is at risk, only the other loads are safe.",
    })
else
	P2Button3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end
P2Button3.TextScaled = true
P2Button3.TextWrapped = true
P2Button3.Text = "AntiLoadSteal"
P2Button3.Position = UDim2.new(0.015, 0, 0.85, 0)
P2Button3.MouseButton1Click:Connect(function()
	AntiLoadSteal = not AntiLoadSteal
	if AntiLoadSteal then
		P2Button3.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "[Catalog Hell]: AntiLoadSteal: Keep in mind that your first load in slot 1 is at risk, only the other loads are safe.",
		})
	else
		P2Button3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

local P2Button4 = Instance.new("TextButton", page2)
P2Button4.Size = UDim2.new(0.17, 0, 0.025, 0)
if AntiVoid then
	P2Button4.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	spawn(function()
		while AntiVoid do
			pcall(function()
				for i, v in pairs(game.Workspace:GetDescendants()) do
					if v.Name == "Part" or v.Name == "Baseplate" or v.Name == "Union" then
						if v.Velocity ~= Vector3.new(0, 0, 0) then
							v.Velocity = Vector3.new(0, 0, 0)
						end
					end
				end
			end)
			wait(1)
		end
	end)
else
	P2Button4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end
P2Button4.TextScaled = true
P2Button4.TextWrapped = true
P2Button4.Text = "AntiVoid"
P2Button4.Position = UDim2.new(0.015, 0, 0.875, 0)
P2Button4.MouseButton1Click:Connect(function()
	AntiVoid = not AntiVoid
	if AntiVoid then
		P2Button4.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		while AntiVoid do
			pcall(function()
				for i, v in pairs(game.Workspace:GetDescendants()) do
					if v.Name == "Part" or v.Name == "Baseplate" or v.Name == "Union" then
						if v.Velocity ~= Vector3.new(0, 0, 0) then
							v.Velocity = Vector3.new(0, 0, 0)
						end
					end
				end
			end)
			wait(1)
		end
	else
		P2Button4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

local P2Button5 = Instance.new("TextButton", page2)
P2Button5.Size = UDim2.new(0.17, 0, 0.025, 0)
if Cleanup then
	P2Button5.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
else
	P2Button5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end
P2Button5.TextScaled = true
P2Button5.TextWrapped = true
P2Button5.Text = "Cleanup"
P2Button5.Position = UDim2.new(0.015, 0, 0.9, 0)
P2Button5.MouseButton1Click:Connect(function()
	Cleanup = not Cleanup
	if Cleanup then
		P2Button5.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		while Cleanup do
			for i, v in pairs (workspace:GetChildren()) do
				if v:IsA("Part") then
					if v.Anchored == false then
						v:Destroy()
					end
				end
			end
			clean()
			wait(1)
		end
	else
		P2Button5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

------------------------------ page 3 ------------------------------

local P3Button1 = Instance.new("TextButton", page3)
P3Button1.Size = UDim2.new(0.17, 0, 0.025, 0)
if ProtectSpawn then
	P3Button1.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
else
	P3Button1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end
P3Button1.TextScaled = true
P3Button1.TextWrapped = true
P3Button1.Text = "ProtectSpawn"
P3Button1.Position = UDim2.new(0.015, 0, 0.8, 0)
P3Button1.MouseButton1Click:Connect(function()
	ProtectSpawn = not ProtectSpawn
	if ProtectSpawn then
		P3Button1.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	else
		P3Button1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

local P3Button2 = Instance.new("TextButton", page3)
P3Button2.Size = UDim2.new(0.17, 0, 0.025, 0)
P3Button2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
P3Button2.TextScaled = true
P3Button2.TextWrapped = true
P3Button2.Text = "Lag"
P3Button2.Position = UDim2.new(0.015, 0, 0.825, 0)
P3Button2.MouseButton1Click:Connect(function()
	Lag = not Lag
	if Lag then
		if not Voided then
			P3Button2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
			game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.CatalogScreenGui.Enabled = false
			if not game.Players.LocalPlayer.Backpack:FindFirstChild("SnowGlobe") then
				repeat
					game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(19111894)
					wait()
				until game.Players.LocalPlayer.Backpack:FindFirstChild("SnowGlobe")
			end
			while Lag do
				game:GetService("RunService").RenderStepped:Wait()
				if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health >= 1 then
					for count = 1,10 do
						game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("SnowGlobe"))
						game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
					end
				end
			end
		else
			Lag = false
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = "[Catalog Hell]: AntiLoadSteal: Can't lag while voided.",
			})
		end
	else
		if game.Players.LocalPlayer.Backpack:FindFirstChild("SnowGlobe") then
			repeat
				game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(19111894)
				wait()
			until not game.Players.LocalPlayer.Backpack:FindFirstChild("SnowGlobe")
		end
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
		game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.CatalogScreenGui.Enabled = true
		P3Button2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

local P3Button3 = Instance.new("TextButton", page3)
P3Button3.Size = UDim2.new(0.17, 0, 0.025, 0)
if AntiNightmare then
	P3Button3.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
else
	P3Button3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end
P3Button3.TextScaled = true
P3Button3.TextWrapped = true
P3Button3.Text = "AntiNightmare"
P3Button3.Position = UDim2.new(0.015, 0, 0.85, 0)
P3Button3.MouseButton1Click:Connect(function()
	AntiNightmare = not AntiNightmare
	if AntiNightmare then
		P3Button3.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		spawn(function()
			while AntiNightmare do
				game:GetService("RunService").RenderStepped:Wait()
				spawn(function()
					for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
						if v.Name == "Black Hole Gravitation" then
							v:Destroy()
							for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
								if v:IsA("Part") then
									v.Velocity = Vector3.new(0,0,0)
								end
							end
						end
					end
				end)
				spawn(function()
					if workspace:FindFirstChild("Black Hole") then
						workspace:FindFirstChild("Black Hole"):Destroy()
					end
				end)
			end
		end)
	else
		P3Button3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

local P3Button4 = Instance.new("TextButton", page3)
P3Button4.Size = UDim2.new(0.17, 0, 0.025, 0)
if ChartSpam then
	P3Button4.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
else
	P3Button4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end
P3Button4.TextScaled = true
P3Button4.TextWrapped = true
P3Button4.Text = "PermChart"
P3Button4.Position = UDim2.new(0.015, 0, 0.875, 0)
P3Button4.MouseButton1Click:Connect(function()
	ChartSpam = not ChartSpam
	if ChartSpam then
		P3Button4.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		spawn(function()
			Chart = "ChartreusePeriastron"
			while ChartSpam do
				if not game.Players.LocalPlayer.Backpack:FindFirstChild(Chart) and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health >= 1 then
					game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(80661504)
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health >= 1 then
					game.Players.LocalPlayer.Backpack:FindFirstChild(Chart).Parent = game.Players.LocalPlayer.Character
					game:GetService("Players").LocalPlayer.Character.ChartreusePeriastron.Remote:FireServer(Enum.KeyCode.Q)
					game.Players.LocalPlayer.Character:FindFirstChild(Chart).Parent = game.Players.LocalPlayer.Backpack
					game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(80661504)
					repeat
						game:GetService("RunService").RenderStepped:Wait()
					until not game.Players.LocalPlayer.Character:FindFirstChild("ShieldScript")
				else
					game:GetService("RunService").RenderStepped:Wait()
				end
			end
		end)
		while ChartSpam do
			game:GetService("RunService").RenderStepped:Wait()
			if Voided then
				ChartSpam = false
				P3Button4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			end
		end
	else
		P3Button4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

local P3Button5 = Instance.new("TextButton", page3)
P3Button5.Size = UDim2.new(0.17, 0, 0.025, 0)
if GrimgoldSpam then
	P3Button5.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
else
	P3Button5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end
P3Button5.TextScaled = true
P3Button5.TextWrapped = true
P3Button5.Text = "GrimgoldSpam"
P3Button5.Position = UDim2.new(0.015, 0, 0.9, 0)
P3Button5.MouseButton1Click:Connect(function()
	GrimgoldSpam = not GrimgoldSpam
	if GrimgoldSpam then
		P3Button5.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		while GrimgoldSpam do
			wait()
			if Voided then
				GrimgoldSpam = false
				P3Button5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			end
			Grimgold = "GrimgoldPeriastron"
			if not game.Players.LocalPlayer.Backpack:FindFirstChild(Grimgold) and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health >= 1 then
				repeat
					game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(73829193)
				until game.Players.LocalPlayer.Backpack:FindFirstChild(Grimgold)
			end
			if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health >= 1 then
				game.Players.LocalPlayer.Backpack:FindFirstChild(Grimgold).Parent = game.Players.LocalPlayer.Character
				game:GetService("Players").LocalPlayer.Character.GrimgoldPeriastron.Remote:FireServer(Enum.KeyCode.Q)
				game.Players.LocalPlayer.Character:FindFirstChild(Grimgold).Parent = game.Players.LocalPlayer.Backpack
				game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(73829193)
			end
		end
	else
		P3Button5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

------------------------------ page 4 ------------------------------

local P4Button1 = Instance.new("TextButton", page4)
P4Button1.Size = UDim2.new(0.17, 0, 0.025, 0)
P4Button1.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
P4Button1.TextScaled = true
P4Button1.TextWrapped = true
P4Button1.Text = "Regen"
P4Button1.Position = UDim2.new(0.015, 0, 0.8, 0)
P4Button1.MouseButton1Click:Connect(function()
	if not Voided and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health >= 1 then
		if not game.Players.LocalPlayer.Backpack:FindFirstChild("OverseerwrathSword") then
			repeat
				game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(483308034)
				wait()
			until game.Players.LocalPlayer.Backpack:FindFirstChild("OverseerwrathSword")
		end
		for count = 1, 10 do
			game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("OverseerwrathSword"))
			game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
		end
		wait()
		if not game.Players.LocalPlayer.Backpack:FindFirstChild("PowerFist") then
			repeat
				game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(65469882)
				wait()
			until game.Players.LocalPlayer.Backpack:FindFirstChild("PowerFist")
		end
		for count = 1, 10 do
			game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("PowerFist"))
			game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
		end
		wait()
		game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(483308034)
	end
end)

local P4Button2 = Instance.new("TextButton", page4)
P4Button2.Size = UDim2.new(0.17, 0, 0.025, 0)
P4Button2.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
P4Button2.TextScaled = true
P4Button2.TextWrapped = true
P4Button2.Text = "Reset"
P4Button2.Position = UDim2.new(0.015, 0, 0.825, 0)
P4Button2.MouseButton1Click:Connect(function()
	if Voided then
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "[Catalog Hell]: Can't reset while voided.",
		})
		P4Button2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        wait(.05)
        P4Button2.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
        wait(.05)
        P4Button2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        wait(.05)
        P4Button2.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
	else
		game:GetService('ReplicatedStorage').Remotes.SetRigType:FireServer(Enum.HumanoidRigType.R6)
	end
end)

local P4Button3 = Instance.new("TextButton", page4)
P4Button3.Size = UDim2.new(0.17, 0, 0.025, 0)
P4Button3.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
P4Button3.TextScaled = true
P4Button3.TextWrapped = true
P4Button3.Text = "Crash"
P4Button3.Position = UDim2.new(0.015, 0, 0.85, 0)
P4Button3.MouseButton1Click:Connect(function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v.Name == "Union" then
			v.Velocity = (Vector3.new(0, 0, 0))
		end
	end
	if Voided then
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "[Catalog Hell]: Can't crash while voided.",
		})
		P4Button3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        wait(.05)
        P4Button3.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
        wait(.05)
        P4Button3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        wait(.05)
        P4Button3.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
	else
		spawn(function()
			game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
			repeat
				pcall(function()
					game:GetService("RunService").RenderStepped:Wait()
					local unionPos = workspace:WaitForChild(game.Players.LocalPlayer.Name .. "'s Cloud", 10):FindFirstChildOfClass('SpawnLocation').Position + Vector3.new(8, 0, 16.5)
					game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(unionPos) + Vector3.new(0, 5.1, 0))
				end)
			until game.Players.LocalPlayer.Character:FindFirstChild("DragonCompanion")
		end)
		if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("SillyGuitar") then
			repeat
				game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(57229371)
				wait()
			until game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("SillyGuitar")
		end
		if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("DragonCompanion") then
			repeat
				game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(1320966824)
				wait()
			until game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("DragonCompanion")
		end
		if game.Workspace[game.Players.LocalPlayer.Name .. "'s Cloud"].ForceFieldLever.Knob.BrickColor ~= BrickColor.new("Bright green") then
			fireclickdetector(game.Workspace[game.Players.LocalPlayer.Name .. "'s Cloud"].ForceFieldLever.ClickDetector)
		end
		game.Players.LocalPlayer.Backpack:WaitForChild("SillyGuitar").Parent = game.Players.LocalPlayer.Character
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 then
			repeat
				game:GetService("RunService").RenderStepped:Wait()
			until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health >= 1
		end
		wait(.5)
		game.Players.LocalPlayer.Backpack:WaitForChild("DragonCompanion").Parent = game.Players.LocalPlayer.Character
	end
end)

local P4Button4 = Instance.new("TextButton", page4)
P4Button4.Size = UDim2.new(0.17, 0, 0.025, 0)
if LoadSpam then
	P4Button4.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
else
	P4Button4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end
P4Button4.TextScaled = true
P4Button4.TextWrapped = true
P4Button4.Text = "LoadSpam"
P4Button4.Position = UDim2.new(0.015, 0, 0.875, 0)
P4Button4.MouseButton1Click:Connect(function()
	LoadSpam = not LoadSpam
	if LoadSpam then
		P4Button4.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		for i, v in pairs(game.Players:GetChildren()) do
			spawn(function()
				while LoadSpam do
					wait()
					for count = 1, 9 do
						if not LoadSpam then
							break
						end
						wait(.3)
						fireclickdetector(game:GetService("Workspace")[v.Name .. "'s Cloud"].OutfitGiver.Next.ClickDetector)
					end
					for count = 1, 9 do
						if not LoadSpam then
							break
						end
						wait(.3)
						fireclickdetector(game:GetService("Workspace")[v.Name .. "'s Cloud"].OutfitGiver.Previous.ClickDetector)
					end
				end
			end)
		end
	else
		P4Button4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

local P4Button5 = Instance.new("TextButton", page4)
P4Button5.Size = UDim2.new(0.17, 0, 0.025, 0)
P4Button5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
P4Button5.TextScaled = true
P4Button5.TextWrapped = true
P4Button5.Text = "RocketRain"
P4Button5.Position = UDim2.new(0.015, 0, 0.9, 0)
P4Button5.MouseButton1Click:Connect(function()
	RocketRain = not RocketRain
	if RocketRain then
		P4Button5.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		while RocketRain do
			pcall(function()
				if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("RocketJumper") and not game.Players.LocalPlayer.Character:FindFirstChild("RocketJumper") then
					game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(169602103)
				end
				local Randomness = math.random(-250, 250)
				local Randomness2 = math.random(-250, 250)
				local args = {
					[1] = Vector3.new(Randomness, 0, Randomness2),
					[2] = Vector3.new(Randomness, 500, Randomness2)
				}
				game:GetService("Players")["LocalPlayer"].Backpack.RocketJumper.FireRocket:FireServer(unpack(args))
				wait()
			end)
		end
	else
		P4Button5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

------------------------------ page 5 ------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local function callback(text)
	if text == "Dismiss" then
	end
end
local bindableFunction = Instance.new("BindableFunction")
bindableFunction.OnInvoke = callback
game.StarterGui:SetCore("SendNotification", {
	Duration = 45;
	Title = "Catalog Hell";
	Text = 'Type "All" in the textbox to target everyone, press Z to toggle ON/OFF.';
	Callback = bindableFunction;
	Button1 = "Dismiss";
})
game.StarterGui:SetCore("ChatMakeSystemMessage", {
	Text = '[Catalog Hell]: Press Z to toggle killing ON/OFF',
	Color = Color3.new(255, 0, 255)
})

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key)
	if key == "z" then
		if CBring and Voided then
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = "[Catalog Hell]: Can't cbring while voided.",
			})
		else
			if tb.Text == "" or tb.Text == game.Players.LocalPlayer.Name then
				game.StarterGui:SetCore("ChatMakeSystemMessage", {
					Text = "[Catalog Hell]: Enter a target's name in the textbox first.",
				})
			else
				on = not on
				if on then
					if tb.Text == "All" then
					else
						tb.Text = Target
					end
					tb.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
					if CBring then
						if tb.Text == "All" then
							start4()
						else
							start3()
						end
					else
						if tb.Text == "All" then
							start2()
						else
							start1()
						end
					end
				else
					tb.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
					wait()
					game.Players.localPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
				end
			end
		end
	end
end)

function FindPad()
	spawn(function()
		while not PadFound and Anchored do
			pcall(function()
				wait(.1)
				for i, v in pairs(game.Players:GetChildren()) do
					if game:GetService("Workspace")[v.Character.Name .. "'s Cloud"]:FindFirstChild("HealingPad") then
						PadFound = true
						name = v.Name
						Pad = game:GetService("Workspace")[v.Name .. "'s Cloud"]:FindFirstChild("HealingPad")
						Pad.CanCollide = false
						Pad.Position = Pos - Vector3.new(0, 2, 0)
						Pad.Transparency = 1
					end
				end
			end)
		end
		if Anchored then
			PadFound = false
			FindPad()
		end
	end)
end

function clean()
	spawn(function()
		if workspace:FindFirstChild("Rocket") then
			workspace:FindFirstChild("Rocket"):Destroy()
		end
		for i, v in pairs (workspace:GetChildren()) do
			if v.Name == "Explosion" then
				v:Destroy()
			end
		end
	end)
end

function StartAntiCrash()
	spawn(function()
		Crasherlist = {}
		CrashGears = {
			"Ferdinand", "DragonCompanion", "BabyNessieMount", "Wasp"
		}
		while AntiCrash do
			pcall(function()
				wait()
				for i, v in pairs(game.Players:GetChildren()) do
					if v ~= game.Players.LocalPlayer then
						if game.Players:FindFirstChild(v.Name) then
							for i, geers in pairs(CrashGears) do
								if game.Players[v.Name]:WaitForChild("Backpack"):FindFirstChild(geers) or game.Players[v.Name].Character:FindFirstChild(geers) then
									if not table.find(Crasherlist, v) then
										game.StarterGui:SetCore("ChatMakeSystemMessage", {
											Text = "[Catalog Hell]: " .. v.Name .. " has a crash gear.",
										})
										table.insert(Crasherlist, v)
									end
									local tool = "RocketJumper"
									if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild(tool) then
										game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(169602103)
									end
									local targetCharacter = v.Character
									if targetCharacter and targetCharacter.Parent ~= nil then
										local targetCharacterTorso = targetCharacter:FindFirstChild("Torso") or targetCharacter:FindFirstChild("UpperTorso") or targetCharacter:FindFirstChild("Head")
										if targetCharacterTorso then
											local args = {
												targetCharacterTorso.Position + Vector3.new(0, -999999, 0),
												Vector3.new(targetCharacterTorso.Position.X + .1, targetCharacterTorso.Position.Y + .1, targetCharacterTorso.Position.Z + .1)
											}
											if v.Character:FindFirstChild("Humanoid").Health >= 1 then
												game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(unpack(args))
											end
										end
									end
									clean()
								end
							end
						end
					end
				end
			end)
		end
	end)
	spawn(function()
		while AntiCrash do
			pcall(function()
				wait(6)
				for i, v in pairs(game.Players:GetChildren()) do
					if v ~= game.Players.LocalPlayer then
						if game.Players[v.Name].Character:FindFirstChild("Sword of the Behemoth") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("RocketJumper") then
								repeat
									game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(169602103)
									wait()
								until game.Players.LocalPlayer.Backpack:FindFirstChild("RocketJumper")
							end
							if v.Character:FindFirstChild("Humanoid").Health >= 1 and v.Character:FindFirstChild("Head") then
								game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0, -999999, 0), v.Character.Head.Position)
							end
							game.StarterGui:SetCore("ChatMakeSystemMessage", {
								Text = "[Catalog Hell]: " .. v.Name .. " tried to use behemoth.",
							})
							clean()
						end
					end
				end
			end)
		end
	end)
end
if AntiCrash then
	StartAntiCrash()
end

function AntiRockets()
	active = true
	spawn(function()
		while game:GetService("RunService").RenderStepped:Wait() do
			pcall(function()
				for i, v in pairs(game.Players:GetChildren()) do
					if v ~= game.Players.LocalPlayer and not table.find(AntiRocketBlacklist, v) and game.Players:FindFirstChild(v.Name) then
						if game.Players[v.Name].Backpack:FindFirstChild("RocketJumper") or game.Players[v.Name].Character:FindFirstChild("RocketJumper") then
							if active == true then
								if on == true and CBring == true then
									spawn(function()
										if game.Players.LocalPlayer.Backpack:FindFirstChild(sword) or game.Players.LocalPlayer.Character:FindFirstChild(sword) then
											game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(83704165)
										end
										if game.Players.LocalPlayer.Backpack:FindFirstChild(sword1) or game.Players.LocalPlayer.Character:FindFirstChild(sword1) then
											game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(95951291)
										end
										if game.Players.LocalPlayer.Backpack:FindFirstChild(sword2) or game.Players.LocalPlayer.Character:FindFirstChild(sword2) then
											game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(63253718)
										end
									end)
									spawn(function()
										on = false
										CBring = false
										P1Button5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
										wait(.2)
										on = true
										if tb.Text == "All" then
										else
											tb.Text = Target
										end
										if tb.Text == "All" then
											start2()
										else
											start1()
										end
									end)
								end
								if not Voided then
									game.StarterGui:SetCore("ChatMakeSystemMessage", {
										Text = "[Catalog Hell]: " .. v.Name .. " has Rocket Jumper, AntiRocket voided you.",
									})
									Voided = true
									P1Button2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
									LoopVoid()
								end
							end
						end
					end
				end
			end)
		end
	end)
end
if AntiRocketOn then
	AntiRockets()
end

function start1()
	spawn(function()
		while on do
			game:GetService("RunService").RenderStepped:Wait()
			if on == true and CBring == true then
				spawn(function()
					on = false
					wait(.2)
					game.Players.localPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
					on = true
					if tb.Text == "All" then
					else
						tb.Text = Target
					end
					if tb.Text == "All" then
						start4()
					else
						start3()
					end
				end)
			end
		end
	end)
	while on do
		pcall(function()
			if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("RocketJumper") then
				game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(169602103)
			end
			game:GetService("RunService").RenderStepped:Wait()
			clean()
			for i, v in pairs(game.Players:GetChildren()) do
				if v ~= game.Players.LocalPlayer then
					if v.Name == Target or table.find(TargetList, v) then
						local targetCharacter = v.Character
						if targetCharacter and targetCharacter.Parent ~= nil then
							local TargetPos = v.Character:FindFirstChild("Torso") or v.Character:FindFirstChild("UpperTorso") or v.Character:FindFirstChild("Head") or v.Character:FindFirstChild("HumanoidRootPart")
							if TargetPos then
								local args = {
									TargetPos.Position + Vector3.new(0, -999999, 0),
									Vector3.new(TargetPos.Position.X, TargetPos.Position.Y, TargetPos.Position.Z)
								}
								if v.Character:FindFirstChild("Humanoid").Health >= 1 then
									game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(unpack(args))
								end
							end
						end
					end
				end
			end
		end)
	end
end

function start2()
	spawn(function()
		while on do
			game:GetService("RunService").RenderStepped:Wait()
			if on == true and CBring == true then
				spawn(function()
					on = false
					wait(.2)
					game.Players.localPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
					on = true
					if tb.Text == "All" then
					else
						tb.Text = Target
					end
					if tb.Text == "All" then
						start4()
					else
						start3()
					end
				end)
			end
		end
	end)
	spawn(function()
		while on do
			pcall(function()
				local tool = "RocketJumper"
				if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild(tool) then
					game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(169602103)
				end
				wait()
				clean()
				for i, v in pairs(game.Players:GetChildren()) do
					if v ~= game.Players.LocalPlayer then
						local targetCharacter = v.Character
						if targetCharacter and targetCharacter.Parent ~= nil then
							local targetCharacterTorso = targetCharacter:FindFirstChild("Torso") or targetCharacter:FindFirstChild("UpperTorso") or targetCharacter:FindFirstChild("Head") or v.Character:FindFirstChild("HumanoidRootPart")
							if targetCharacterTorso then
								local args = {
									targetCharacterTorso.Position + Vector3.new(0, -999999, 0),
									Vector3.new(targetCharacterTorso.Position.X + .1, targetCharacterTorso.Position.Y + .1, targetCharacterTorso.Position.Z + .1)
								}
								if v.Character:FindFirstChild("Humanoid").Health >= 1 then
									game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(unpack(args))
								end
							end
						end
					end
				end
			end)
		end
	end)
end

function start3()
	spawn(function()
		while on and CBring do
			pcall(function()
				wait()
				local arm = game.Players.LocalPlayer.Character:FindFirstChild("Right Arm")
				if game:GetService("Players").LocalPlayer.Character.Humanoid.Health >= 1 and not arm then
					game:GetService('ReplicatedStorage').Remotes.SetRigType:FireServer(Enum.HumanoidRigType.R6)
					repeat
						game:GetService("RunService").RenderStepped:Wait()
					until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health >= 1
				end
			end)
		end
	end)
	spawn(function()
		while on and CBring do
			pcall(function()
				game:GetService("RunService").RenderStepped:Wait()
				clean()
				if game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 then
					local tool = "RocketJumper"
					if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild(tool) then
						game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(169602103)
					end
					local SpawnPosX = game:GetService("Workspace")[Target .. "'s Cloud"].Union.Position.X
					local SpawnPosY = game:GetService("Workspace")[Target .. "'s Cloud"].Union.Position.Y
					local SpawnPosZ = game:GetService("Workspace")[Target .. "'s Cloud"].Union.Position.Z
					local args = {
						[1] = Vector3.new(0, -500000, 0),
						[2] = Vector3.new(SpawnPosX, SpawnPosY, SpawnPosZ),
					}
					game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(unpack(args))
					for i, v in pairs(game.Players:GetChildren()) do
						if v.Name == Target or table.find(TargetList, v) then
							local Torso = v.Character:FindFirstChild("Torso") or v.Character:FindFirstChild("UpperTorso")
							local args = {
								Torso.Position,
								Vector3.new(Torso.Position.X + .1, Torso.Position.Y + .1, Torso.Position.Z + .1)
							}
							if v.Character:FindFirstChild("Humanoid").Health >= 1 then
								game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(unpack(args))
							end
						end
					end
				end
			end)
		end
	end)
	while on and CBring do
		game:GetService("RunService").RenderStepped:Wait()
		pcall(function()
			local Tool = game.Players.LocalPlayer.Backpack:FindFirstChild("SkullMace") or game.Players.LocalPlayer.Character:FindFirstChild("SkullMace")
			if not Tool then
				game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(63253718)
			end
			if not game.Players.LocalPlayer.Character:FindFirstChild(Tool) then
				Tool.Parent = game.Players.LocalPlayer.Character
			end
			local Hit = Tool and Tool.FindFirstChild(Tool, "Handle")
			for i, v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer and v.Name == Target or table.find(TargetList, v) then
					spawn(function()
						local Human = v.Character.FindFirstChildWhichIsA(v.Character, "Humanoid")
						if Human or Human.Health >= 1 then
							for _, v1 in ipairs(v.Character.GetChildren(v.Character)) do
								v1 = ((v1.IsA(v1, "BasePart") and firetouchinterest(Hit, v1, 1, (game:GetService("RunService").RenderStepped.Wait(game:GetService("RunService").RenderStepped) and nil) or firetouchinterest(Hit, v1, 0)) and nil) or v1) or v1
							end
						end
					end)
				end
			end
		end)
	end
end

function start4()
	spawn(function()
		while on and CBring do
			pcall(function()
				wait()
				local arm = game.Players.LocalPlayer.Character:FindFirstChild("Right Arm")
				if game:GetService("Players").LocalPlayer.Character.Humanoid.Health >= 1 and not arm then
					game:GetService('ReplicatedStorage').Remotes.SetRigType:FireServer(Enum.HumanoidRigType.R6)
					repeat
						game:GetService("RunService").RenderStepped:Wait()
					until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health >= 1
				end
			end)
		end
	end)
	spawn(function()
		while on and CBring do
			pcall(function()
				game:GetService("RunService").RenderStepped:Wait()
				clean()
				if game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 then
					local tool = "RocketJumper"
					if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild(tool) then
						game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(169602103)
					end
					for i, v in pairs(game.Players:GetChildren()) do
						if v ~= game.Players.LocalPlayer then
							local Torso = v.Character:FindFirstChild("Torso") or v.Character:FindFirstChild("UpperTorso")
							local args = {
								Vector3.new(0, -999999, 0),
								Vector3.new(Torso.Position.X + .1, Torso.Position.Y + .1, Torso.Position.Z + .1)
							}
							if v.Character:FindFirstChild("Humanoid").Health >= 1 then
								game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(unpack(args))
							end
						end
					end
				end
			end)
		end
	end)
	spawn(function()
		while on and CBring do
			pcall(function()
				wait(.2)
				clean()
				if game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 then
					for i, v in pairs(game.Players:GetChildren()) do
						if v ~= game.Players.LocalPlayer then
							local SpawnPosX = game:GetService("Workspace")[v.Character.Name .. "'s Cloud"].Union.Position.X
							local SpawnPosY = game:GetService("Workspace")[v.Character.Name .. "'s Cloud"].Union.Position.Y
							local SpawnPosZ = game:GetService("Workspace")[v.Character.Name .. "'s Cloud"].Union.Position.Z
							local args = {
								[1] = Vector3.new(0, -999999, 0),
								[2] = Vector3.new(SpawnPosX, SpawnPosY, SpawnPosZ),
							}
							game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(unpack(args))
						end
					end
				end
			end)
		end
	end)
	while on and CBring do
		game:GetService("RunService").RenderStepped:Wait()
		pcall(function()
			if not game.Players.LocalPlayer.Backpack:FindFirstChild("SkullMace") and not game.Players.LocalPlayer.Character:FindFirstChild("SkullMace") then
				game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(63253718)
			end
			if not game.Players.LocalPlayer.Character:FindFirstChild("SkullMace") then
				game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("SkullMace"))
			end
			local Tool = game.Players.LocalPlayer.Character:FindFirstChild("SkullMace")
			local Handle = Tool and Tool.FindFirstChild(Tool, "Handle")
			for i, v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					spawn(function()
						local Human = v.Character.FindFirstChildWhichIsA(v.Character, "Humanoid")
						if Human or Human.Health >= 1 then
							for _, v1 in ipairs(v.Character.GetChildren(v.Character)) do
								v1 = ((v1.IsA(v1, "BasePart") and firetouchinterest(Handle, v1, 1, (game:GetService("RunService").RenderStepped.Wait(game:GetService("RunService").RenderStepped) and nil) or firetouchinterest(Handle, v1, 0)) and nil) or v1) or v1
							end
						end
					end)
				end
			end
		end)
		clean()
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HitlistStart()
	spawn(function()
		while true do
			pcall(function()
				local tool = "RocketJumper"
				if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild(tool) then
					game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(169602103)
				end
				game:GetService("RunService").RenderStepped:Wait()
				clean()
				for i, v in pairs(game.Players:GetChildren()) do
					if v ~= game.Players.LocalPlayer and table.find(HitlistTarget, v) then
						local targetCharacter = v.Character
						if targetCharacter and targetCharacter.Parent ~= nil then
							local TargetPos = v.Character:FindFirstChild("Torso") or v.Character:FindFirstChild("UpperTorso") or v.Character:FindFirstChild("Head")
							if TargetPos then
								local args = {
									TargetPos.Position + Vector3.new(0, -999999, 0),
									Vector3.new(TargetPos.Position.X, TargetPos.Position.Y, TargetPos.Position.Z)
								}
								if v.Character:FindFirstChild("Humanoid").Health >= 1 then
									game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(unpack(args))
								end
							end
						end
					end
				end
			end)
		end
	end)
end

spawn(function()
	HitlistTarget = {}
	while wait(.5) do
		pcall(function()
			for i, v in pairs(game.Players:GetChildren()) do
				spawn(function()
					if Hitlist[v.UserId] == true and not table.find(HitlistTarget, v) then
						table.insert(HitlistTarget, v)
						game.StarterGui:SetCore("ChatMakeSystemMessage", {
							Text = "[Catalog Hell]: {HITLIST} "..v.Name.." {HITLIST}",
						})
						if HitlistEnabled then
							HitlistEnabled = false
							HitlistStart()
						end
					end
				end)
				spawn(function()
					if AntiLoadSteal and not game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Cloud"].OutfitGiver:FindFirstChild("1 of 10") then
						if v ~= game.Players.LocalPlayer and (v.Character:FindFirstChild"HumanoidRootPart".Position - game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Cloud"].OutfitGiver.Load.Head.Position).magnitude <= 40 then
							repeat
								fireclickdetector(game:GetService("Workspace")[game.Players.LocalPlayer.Name .. "'s Cloud"].OutfitGiver.Previous.ClickDetector)
								wait()
							until game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Cloud"].OutfitGiver:FindFirstChild("1 of 10") and not (v.Character:FindFirstChild"HumanoidRootPart".Position - game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Cloud"].OutfitGiver.Load.Head.Position).magnitude <= 40 and v ~= game.Players.LocalPlayer
						end
					end
				end)
				spawn(function()
					if workspace:FindFirstChild(v.Name .. "'s Cloud"):FindFirstChild("ForceField") then
						workspace:FindFirstChild(v.Name .. "'s Cloud"):FindFirstChild("ForceField"):Destroy()
					end
				end)
			end
			spawn(function()
				if game:GetService("Workspace").MapModel:FindFirstChild("WaterKill") then
					game:GetService("Workspace").MapModel:FindFirstChild("WaterKill"):Destroy()
				end
			end)
			spawn(function()
				if ProtectSpawn then
					pcall(function()
						for i, v in pairs(game.Players:GetPlayers()) do
							if v.Character.Humanoid.Health ~= 0 and v ~= game.Players.LocalPlayer and (v.Character:FindFirstChild"HumanoidRootPart".Position - game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Cloud"].Union.Position).magnitude <= 25 then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("RocketJumper") and not game.Players.LocalPlayer.Character:FindFirstChild("RocketJumper") then
									game.ReplicatedStorage.Remotes.ToggleAsset:InvokeServer(169602103)
								end
								local targetCharacter = v.Character
								if targetCharacter and targetCharacter.Parent ~= nil then
									local targetCharacterTorso = targetCharacter:FindFirstChild("Torso") or targetCharacter:FindFirstChild("UpperTorso") or targetCharacter:FindFirstChild("Head")
									if targetCharacterTorso then
										local args = {
											targetCharacterTorso.Position + Vector3.new(0, -999999, 0),
											Vector3.new(targetCharacterTorso.Position.X + .1, targetCharacterTorso.Position.Y + .1, targetCharacterTorso.Position.Z + .1)
										}
										if game.Players.LocalPlayer.Backpack:FindFirstChild("RocketJumper") and v.Character:FindFirstChild("Humanoid").Health >= 1 then
											game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(unpack(args))
										elseif game.Players.LocalPlayer.Character:FindFirstChild("RocketJumper") and v.Character:FindFirstChild("Humanoid").Health >= 1  then
											game.Players.LocalPlayer.Character.RocketJumper.FireRocket:FireServer(unpack(args))
										end
									end
								end
								clean()
							end
						end
					end)
				end
			end)
		end)
	end
end)
