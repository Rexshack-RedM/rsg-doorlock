Config = {}

Config.DoorList = {

	-----------------------------------------------------
	-- Valentine Sheriff Office 
	-----------------------------------------------------
	{
		authorizedJobs = { 'police' },
		doorid = 1988748538,
		objCoords  = vector3(-276.04, 802.73, 118.41),
		textCoords  = vector3(-275.02, 802.84, 119.43),
		objYaw = 10.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police' },
		doorid = 395506985,
		objCoords  = vector3(-275.85, 812.02, 118.41),
		textCoords  = vector3(-277.06, 811.83, 119.38),
		objYaw = -170.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police' },
		doorid = 1508776842,
		objCoords  = vector3(-270.77, 810.02, 118.39),
		textCoords  = vector3(-270.77, 810.02, 118.39),
		objYaw = -80.0,
		locked = true,
		distance = 1.5
	},

	--cell area
	{
		authorizedJobs = { 'police' },
		doorid = 535323366,
		objCoords  = vector3(-275.03, 809.27, 118.36),
		textCoords  = vector3(-274.89, 808.03, 119.39),
		objYaw = -80.0,
		locked = true,
		distance = 2
	},
	--cells
	{
		authorizedJobs = { 'police' },
		doorid = 295355979,
		objCoords  = vector3(-273.47, 809.96, 118.36),
		textCoords  = vector3(-272.23, 810.1, 119.39),
		objYaw = 10.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police' },
		doorid = 193903155,
		objCoords  = vector3(-272.06, 808.25, 118.36),
		textCoords  = vector3(-273.3, 808.12, 119.39),
		objYaw = -170.0,
		locked = true,
		distance = 1.5
	},

	-----------------------------------------------------
	-- Rhodes Sheriff Office
	-----------------------------------------------------

	{
		authorizedJobs = { 'police' },
		doorid = 349074475,
		objCoords  = vector3(1359.71, -1305.97, 76.76),
		textCoords  = vector3(1358.42, -1305.71, 77.72),
		objYaw = 160.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police' },
		doorid = 1614494720,
		objCoords  = vector3(1359.12, -1297.56, 76.78),
		textCoords  = vector3(1358.51, -1298.95,77.78),
		objYaw = -110.0,
		locked = true,
		distance = 3.0
	},

	-----------------------------------------------------
	-- Blackwater Sheriff Office
	-----------------------------------------------------
	{
		textCoords = vector3(-757.27, -1269.34, 44.04),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objYaw = 90.0,
				doorid = 3410720590,
				objCoords = vector3(-757.05, -1268.49, 43.06)
			},

			{
				objYaw = 90.0,
				doorid = 3821185084,
				objCoords = vector3(-757.05, -1269.93, 43.06)
			}
		}
	},
	-----------------------------------------------------
	-- Strawberry Sheriff Office
	-----------------------------------------------------
	{
		authorizedJobs = { 'police' }, -- main door
		doorid = 1821044729,
		objCoords  = vector3(-1806.67, -350.31, 163.64),
		textCoords  = vector3(-1806.67, -350.31, 164.64),
		objYaw = -115.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police' }, -- cell-1
		doorid = 902070893,
		objCoords  = vector3(-1814.40, -353.14, 160.44),
		textCoords  = vector3(-1814.40, -353.14, 161.44),
		objYaw = -115.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police' }, -- cell-2
		doorid = 1207903970,
		objCoords  = vector3(-1812.01, -351.92, 160.46),
		textCoords  = vector3(-1812.01, -351.92, 161.46),
		objYaw = -25.0,
		locked = true,
		distance = 1.5
	},
}
