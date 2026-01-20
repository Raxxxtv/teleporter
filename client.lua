SX = exports["es_extended"]:getSharedObject()

local marker = {}

local function CreateMarker()
    for id, data in pairs(Config.Marker) do
        if marker[id] then return end
        marker[id] = exports.mg_lib:AddMarker({
	    	name = id,
	    	type = data.type,
	    	pos = data.pos,
	    	size = table.concat(data.size, ", "),
	    	color = table.concat(data.color, ", "),
	    	helpNotification = data.helpMessage,
	    	onUse = function()
	    		SetEntityCoords(ESX.PlayerData.ped, Config.Coords[1], Config.Coords[2], Config.Coords[3])
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

AddEventHandler("mg_lib:reload", function()
	CreateAngryPedMarker()
end)