-- Most Comments are help Comments from the mg_lib (markerlib)

Config = {}

Config.DefaultMarker = { -- Default Marker settings, can be overwritten in Config.Marker
    type = 1, -- Marker type (Default/fallback is 1)
    size = {1.2, 1.2, 1.0}, -- Size of marker.
    color = {255, 0, 0, 180}, -- A table with 4 rgba elements. Alpha is optional and will fallback to 200.
    helpMessage = "Drücke ~INPUT_CONTEXT~ um dich zu Teleportieren", -- Message that plops up when you get into the distance range.
    offset = 0, -- Optional offset of marker, the default is -1 z axis (Ground position of player peds). (Can also be a number which only represents Z axis)
    useKey = 51, -- Optional key override. (by default "E") | 0 or false to disable this behaviour. (This calls DisableControlAction, if within reach)
    useDelay = 1000, -- In ms. Use delay after pressing use.
    drawDistance = 20, -- Draw distance which falls back to 20.
    distance = 5.0, -- Distance, where you can press the Key to use the marker
    faceCamera = false, -- Marker should face camera?
    bobUpAndDown = false, -- Should the marker bob up and down?
    rotate = false -- Should the marker rotate?
}

--[[
    ['name'] = {
        pos = vector3(coords), -- Vector3 position where the marker is placed.
        type = 1,
        color = {255, 0, 0, 180}
        -- Here you can add more functions displayed above if you want to overwrite the default settings
    },
]]

Config.Marker = { -- Markers can be added with the Template above
    ['marker1'] = {
        pos = vector3(138.7424, -890.6888, 30.4260),
        type = 1,
        color = {255, 0, 0, 180}
    },
    ['marker2'] = {
        pos = vector3(139.7424, -890.6888, 30.4260),
        type = 2,
        size = {1.0, 1.8, 1.2},
        color = {0, 255, 0, 180}
    },
    ['marker3'] = {
        pos = vector3(140.8807, -890.6609, 30.4349),
        type = 3,
        color = {0, 0, 255, 180}
    },
    ['marker4'] = {
        pos = vector3(141.8807, -890.6609, 30.4349),
        type = 4,
        color = {255, 255, 0, 180}
    },
    ['marker5'] = {
        pos = vector3(142.8807, -890.6609, 30.4349),
        type = 5,
        color = {255, 0, 255, 180}
    },
    ['marker6'] = {
        pos = vector3(143.8807, -890.6609, 30.4349),
        type = 6,
        color = {255, 255, 255, 180}
    },
    ['marker7'] = {
        pos = vector3(144.8807, -890.6609, 30.4349),
        type = 7,
        color = {0, 255, 255, 180}
    },
    ['marker8'] = {
        pos = vector3(145.8807, -890.6609, 30.4349),
        type = 8,
        color = {0, 0, 0, 180}
    },
}

Config.TeleportCoords = vector3(137.1535, -908.1205, 30.3019) -- When you use the Marker, it will Teleport you to this Coords