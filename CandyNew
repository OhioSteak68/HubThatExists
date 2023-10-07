local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
print("hi")
local head = game.Players.LocalPlayer.Character:WaitForChild("Head")
for i, v in pairs(game:GetService("Workspace").CandyCorns:GetDescendants()) do
if v.Name == 'TouchInterest' and v.Parent then
firetouchinterest(head, v.Parent, 0)
wait(0)
firetouchinterest(head, v.Parent, 1)
end
end

module:Teleport(game.PlaceId)
