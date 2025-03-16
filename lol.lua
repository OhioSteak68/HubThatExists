local placeId = 72858720797219 -- Target PlaceId
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Function to check and teleport if needed
local function checkAndTeleport()
    if game.PlaceId ~= placeId then
        TeleportService:Teleport(placeId, LocalPlayer)
    end
end

-- Ensure script executes again on EVERY teleport
local queue_on_teleport = queue_on_teleport or syn.queue_on_teleport
if queue_on_teleport then
    queue_on_teleport([[ 
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local placeId = 72858720797219
        
        local function checkAndTeleport()
            if game.PlaceId ~= placeId then
                TeleportService:Teleport(placeId, LocalPlayer)
            end
        end

        -- Re-persist the script on next teleport
        local queue_on_teleport = queue_on_teleport or syn.queue_on_teleport
        if queue_on_teleport then
            queue_on_teleport(game:HttpGet("YOUR_SCRIPT_URL_HERE", true))
        end

        checkAndTeleport()
    ]])
end

-- Run the teleport check instantly
checkAndTeleport()
