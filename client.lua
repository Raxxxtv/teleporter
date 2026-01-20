SX = exports["es_extended"]:getSharedObject()



AddEventHandler("mg_lib:reload", function()
	CreateAngryPedMarker()
end)

local function CreateMarker()
    for id, data in pairs(Config.Marker) do
        angryMarker = exports.mg_lib:AddMarker({
	    	name = id,
	    	type = data.type,
	    	pos = table.concat(data.coords, ", "),
	    	size = table.concat(data.size, ", "),
	    	color = table.concat(data.color, ", "),
	    	helpNotification = data.helpMessage,
	    	onUse = function()
	    		TriggerServerEvent("teleporter:TeleportToCoords")
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
    end
end
