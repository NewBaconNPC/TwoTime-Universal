local Player = game.Players.LocalPlayer
local Character = Player.Character

if _G.DONOTEXECUTE and _G.DONOTEXECUTE == true then
else
	if isfolder and makefolder and writefile and isfile and request and getcustomasset then
		if not isfolder("TWOTIMEFOLDR") then
			makefolder("TWOTIMEFOLDR")
		end

		if not isfile("TWOTIMEFOLDR/respawn.mp3") then

			_G.DONOTEXECUTE = true
			local soundData = request({
				Method="GET",
				Url="https://static.wikia.nocookie.net/forsaken2024/images/5/52/Revive.wav/revision/latest?cb=20250418223033"
			}).Body
			_G.DONOTEXECUTE = nil

			if soundData then 
				writefile("TWOTIMEFOLDR/respawn.mp3", soundData)
			else


				return
			end
		end
	else

		return
	end
end


local ritmove = Instance.new("Tool")
ritmove.Name = "Ritual [ONE TIME USE]"
ritmove.CanBeDropped = false
ritmove.RequiresHandle = false

local ritdb = false

ritmove.Activated:Connect(function()
if ritdb == false then
ritdb = true
Character.GhostFire.GhostfireBlade.Transparency = 0
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
local AnimHandler = loadstring(game:HttpGet("https://raw.githubusercontent.com/ProudNamed/SuperLightning/refs/heads/main/AnimModule/MainModule"))()
local rit = game:GetObjects("rbxassetid://124282370732326")[1]
local rit2 = AnimHandler.new(Character,rit)
rit2:Play()
wait(1.5)
Part0 = Instance.new("Part")
Decal1 = Instance.new("Decal")
Part0.Name = "Spawn"
Part0.Parent = workspace
Part0.CFrame = CFrame.new(-375.197937, 0.213027, 335.867004, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part0.Position = Vector3.new(-375.19793701171875, 0.2130270004272461, 335.86700439453125)
Part0.Transparency = 1
Part0.Size = Vector3.new(5.120999813079834, 0.4259999990463257, 5.120999813079834)
Part0.Anchored = true
Part0.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.2, -3)
Part0.BottomSurface = Enum.SurfaceType.Smooth
Part0.CanCollide = false
Part0.TopSurface = Enum.SurfaceType.Smooth
Decal1.Parent = Part0
Decal1.Texture = "rbxassetid://80566262142997"
Decal1.Transparency = 0.75
Decal1.Face = Enum.NormalId.Top
rit2.Stopped:Wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
Character.GhostFire.GhostfireBlade.Transparency = 1
ritmove:Remove()

repeat
wait(0.1)
if Character.Humanoid.Health <= 25 then
   local temp = game:GetService("RunService").Heartbeat:Connect(function()
	   	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Part0.CFrame * CFrame.new(0,2,0)
   end)
ParticleEmitter0 = Instance.new("ParticleEmitter")
ParticleEmitter0.Name = "RespawnVFX"
ParticleEmitter0.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
ParticleEmitter0.Speed = NumberRange.new(0.07482445985078812, 0.07482445985078812)
ParticleEmitter0.Enabled = false
ParticleEmitter0.LightEmission = 0.6499999761581421
ParticleEmitter0.LightInfluence = 0.20000000298023224
ParticleEmitter0.Texture = "rbxassetid://11871320339"
ParticleEmitter0.ZOffset = -1.5
ParticleEmitter0.Size = NumberSequence.new(3,3)
ParticleEmitter0.Brightness = 2.4600000381469727
ParticleEmitter0.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter0.Lifetime = NumberRange.new(0.6000000238418579, 0.6000000238418579)
ParticleEmitter0.Rate = 1
ParticleEmitter0:Emit(7)

    game.Debris:AddItem(ParticleEmitter0,3)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Part0.CFrame
	Part0:Destroy()
	wait(0.3)
	temp:Disconnect()

	local child = Instance.new("Sound",game.Players.LocalPlayer.Character.Torso)
child.SoundId = getcustomasset("TWOTIMEFOLDR/respawn.mp3")
child.Volume = 1.5
child:Play()
game.Debris:AddItem(child,2)
end
until Character.Humanoid.Health <= 25

end
end)

ritmove.Parent = Player.Backpack
