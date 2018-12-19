
OmniCC4Config = {
	["groups"] = {
		{
			["id"] = "163UI_Grid",
			["rules"] = {
				"GridLayoutHeader", -- [1]
			},
			["version"] = "20160728",
			["enabled"] = true,
		}, -- [1]
	},
	["version"] = "8.0.9",
	["groupSettings"] = {
		["base"] = {
			["minDuration"] = 2,
			["styles"] = {
				["seconds"] = {
				},
				["minutes"] = {
				},
				["soon"] = {
				},
				["hours"] = {
				},
				["charging"] = {
				},
				["controlled"] = {
				},
			},
			["tenthsDuration"] = 0,
			["minSize"] = 0.13,
			["minEffectDuration"] = 30,
			["mmSSDuration"] = 0,
		},
		["163UI_Grid"] = {
			["enabled"] = true,
			["fontFace"] = "Fonts\\ARKai_T.ttf",
			["fontSize"] = 26,
			["effect"] = "none",
			["minDuration"] = 3,
			["mmSSDuration"] = 0,
			["minSize"] = 0.1,
			["spiralOpacity"] = 0.6,
			["yOff"] = 5,
			["xOff"] = 10,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["anchor"] = "TOPRIGHT",
			["minEffectDuration"] = 30,
			["scaleText"] = true,
			["styles"] = {
				["soon"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["seconds"] = {
					["a"] = 0.9,
					["r"] = 1,
					["scale"] = 1,
					["g"] = 1,
					["b"] = 0.1,
				},
				["minutes"] = {
					["a"] = 0.8,
					["r"] = 1,
					["scale"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["hours"] = {
					["a"] = 0.7,
					["r"] = 0.7,
					["scale"] = 1,
					["g"] = 0.7,
					["b"] = 0.7,
				},
				["charging"] = {
					["a"] = 0.9,
					["r"] = 0.8,
					["scale"] = 1,
					["g"] = 1,
					["b"] = 0.3,
				},
				["controlled"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
			},
		},
	},
}
