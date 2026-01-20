ESX = exports["es_extended"]:getSharedObject()

local marker = {}

local function CreateMarker() -- Creates Markers with the mg_lib (markerlib) once and uses the settings of the Config
    for id, data in pairs(Config.Marker) do
        if marker[id] then
            goto continue
        end
        marker[id] = exports.mg_lib:AddMarker({
	    	name = id,
	    	type = data.type or Config.DefaultMarker.type,
	    	pos = data.pos,
	    	size = data.size or Config.DefaultMarker.size,
	    	color = data.color or Config.DefaultMarker.color,
	    	helpNotification = data.helpMessage or Config.DefaultMarker.helpMessage,
	    	onUse = function()
	    		SetEntityCoords(ESX.PlayerData.ped, Config.TeleportCoords)
	    	end,
            offset = data.offset or Config.DefaultMarker.offset,
            useKey = data.useKey or Config.DefaultMarker.useKey,
            useDelay = data.useDelay or Config.DefaultMarker.useDelay,
            drawDistance = data.drawDistance or Config.DefaultMarker.drawDistance,
            distance = data.distance or Config.DefaultMarker.distance,
            faceCamera = data.faceCamera or Config.DefaultMarker.faceCamera,
            bobUpAndDown = data.bobUpAndDown or Config.DefaultMarker.bobUpAndDown,
            rotate = data.rotate or Config.DefaultMarker.rotate
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