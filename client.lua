ESX = exports["es_extended"]:getSharedObject()

local marker = {}

local function CreateMarker()
    for id, data in pairs(Config.Marker) do
        if marker[id] then
            goto continue
        end
        marker[id] = exports.mg_lib:AddMarker({
	    	name = id,
	    	type = data.type,
	    	pos = data.pos,
	    	size = data.size,
	    	color = data.color,
	    	helpNotification = data.helpMessage,
	    	onUse = function()
	    		SetEntityCoords(ESX.PlayerData.ped, Config.Coords)
	    	end,
            offset = data.offset,
            useKey = data.useKey,
            useDelay = data.useDelay,
            drawDistance = data.drawDistance,
            distance = data.distance,
            faceCamera = data.faceCamera,
            bobUpAndDown = data.bobUpAndDown,
            rotate = data.rotate
	    })
        ::continue::
    end
end

AddEventHandler("mg_lib:reload", function()
	CreateMarker()
end)

CreateThread(function()
    CreateMarker()
end)