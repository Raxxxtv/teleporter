SX = exports["es_extended"]:getSharedObject()



AddEventHandler("mg_lib:reload", function()
	CreateAngryPedMarker()
end)
local marker

local function CreateMarker()
    for id, data in pairs(Config.Marker) do
        if marker[id] then return end
        marker[id] = exports.mg_lib:AddMarker({
	    	name = id,
	    	type = data.type,
	    	pos = table.concat(data.coords, ", "),
	    	size = table.concat(data.size, ", "),
	    	color = table.concat(data.color, ", "),
	    	helpNotification = data.helpMessage,
	    	onUse = function()
	    		SetEntityCoords(ESX.PlayerData.ped, 0, 0, 0)
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
