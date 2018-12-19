
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["login_squelch_time"] = 10,
	["displays"] = {
		["G'huun: Dunk tracker"] = {
			["outline"] = "OUTLINE",
			["glow"] = false,
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function(event,...)\n    if WeakAuras.IsOptionsOpen() then\n        return \"|TInterface\\\\Icons\\\\Ability_titankeeper_cleansingorb:0:0:0|t\".. WA_ClassColorName(\"player\") .. \"|TInterface\\\\Icons\\\\Spell_warlock_demonicportal_green:0:0:0|t|TInterface\\\\RaidFrame\\\\ReadyCheck-Ready:0:0:0|t\\n|TInterface\\\\Icons\\\\Ability_titankeeper_cleansingorb:0:0:0|t\".. WA_ClassColorName(\"player\") .. \"|TInterface\\\\Icons\\\\Spell_warlock_demonicportal_green:0:0:0|t|TInterface\\\\RaidFrame\\\\ReadyCheck-Ready:0:0:0|t\"\n        \n    end\n    local ret = \"\"\n    for unit in WA_IterateGroupMembers() do\n        if WA_GetUnitDebuff(unit, \"Power Matrix\") then\n            local re = \"\"\n            local one = \"\"\n            local two = \"\"\n            local three = \"\"\n            local four = \"\"\n            local nam = UnitName(unit)\n            nam = aura_env.stripChars(nam)\n            local one = \"|c\" .. RAID_CLASS_COLORS[select(2, UnitClass(unit))].colorStr .. nam:sub(1,24) .. \"|r\" \n            three = \"|TInterface\\\\Icons\\\\Ability_titankeeper_cleansingorb:0:0:0:-14|t\" \n            if WA_GetUnitDebuff(unit, \"Demonic Gateway\") then\n                two = \"|TInterface\\\\Icons\\\\Spell_warlock_demonicportal_green:0:0:0:-14|t\"\n                \n            end\n            if select(1,UnitCastingInfo(unit)) == \"Deposit Power Matrix\" then\n                four = \"|TInterface\\\\RaidFrame\\\\ReadyCheck-Ready:0:0:0:-14|t\"\n            end\n            if UnitName(unit) == aura_env.f then\n                \n                re = three .. aura_env.g .. two .. four ..\"\\n\"\n                ret = ret .. re\n            else\n                \n                re = three .. one .. two .. four ..\"\\n\"\n                ret = ret .. re\n                \n            end\n        end\n        \n    end\n    return ret\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -89.5922546386719,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.stripChars = function (str)\n    local tableAccents = {}\n    tableAccents[\"à\"] = \"a\"\n    tableAccents[\"á\"] = \"a\"\n    tableAccents[\"â\"] = \"a\"\n    tableAccents[\"ã\"] = \"a\"\n    tableAccents[\"ä\"] = \"a\"\n    tableAccents[\"ç\"] = \"c\"\n    tableAccents[\"è\"] = \"e\"\n    tableAccents[\"é\"] = \"e\"\n    tableAccents[\"ê\"] = \"e\"\n    tableAccents[\"ë\"] = \"e\"\n    tableAccents[\"ì\"] = \"i\"\n    tableAccents[\"í\"] = \"i\"\n    tableAccents[\"î\"] = \"i\"\n    tableAccents[\"ï\"] = \"i\"\n    tableAccents[\"ñ\"] = \"n\"\n    tableAccents[\"ò\"] = \"o\"\n    tableAccents[\"ó\"] = \"o\"\n    tableAccents[\"ô\"] = \"o\"\n    tableAccents[\"õ\"] = \"o\"\n    tableAccents[\"ö\"] = \"o\"\n    tableAccents[\"ù\"] = \"u\"\n    tableAccents[\"ú\"] = \"u\"\n    tableAccents[\"û\"] = \"u\"\n    tableAccents[\"ü\"] = \"u\"\n    tableAccents[\"ý\"] = \"y\"\n    tableAccents[\"ÿ\"] = \"y\"\n    tableAccents[\"À\"] = \"A\"\n    tableAccents[\"Á\"] = \"A\"\n    tableAccents[\"Â\"] = \"A\"\n    tableAccents[\"Ã\"] = \"A\"\n    tableAccents[\"Ä\"] = \"A\"\n    tableAccents[\"Ç\"] = \"C\"\n    tableAccents[\"È\"] = \"E\"\n    tableAccents[\"É\"] = \"E\"\n    tableAccents[\"Ê\"] = \"E\"\n    tableAccents[\"Ë\"] = \"E\"\n    tableAccents[\"Ì\"] = \"I\"\n    tableAccents[\"Í\"] = \"I\"\n    tableAccents[\"Î\"] = \"I\"\n    tableAccents[\"Ï\"] = \"I\"\n    tableAccents[\"Ñ\"] = \"N\"\n    tableAccents[\"Ò\"] = \"O\"\n    tableAccents[\"Ó\"] = \"O\"\n    tableAccents[\"Ô\"] = \"O\"\n    tableAccents[\"Õ\"] = \"O\"\n    tableAccents[\"Ö\"] = \"O\"\n    tableAccents[\"Ù\"] = \"U\"\n    tableAccents[\"Ú\"] = \"U\"\n    tableAccents[\"Û\"] = \"U\"\n    tableAccents[\"Ü\"] = \"U\"\n    tableAccents[\"Ý\"] = \"Y\"\n    local normalizedString = ''\n    \n    for strChar in string.gmatch(str, \"([%z\\1-\\127\\194-\\244][\\128-\\191]*)\") do\n        if tableAccents[strChar] ~= nil then\n            normalizedString = normalizedString..tableAccents[strChar]\n        else\n            normalizedString = normalizedString..strChar\n        end\n    end\n    return normalizedString\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\naura_env.f = \"Volathor\"\naura_env.g = \"Fathead\"",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["url"] = "https://wago.io/BkhnPSYKm/14",
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["font"] = "AR ZhongkaiGBK Medium",
			["text1Enabled"] = true,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["selfPoint"] = "LEFT",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2122",
				["use_encounterid"] = true,
			},
			["fixedWidth"] = 259,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["fontSize"] = 27,
			["text2Containment"] = "INSIDE",
			["desaturate"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["icon"] = true,
			["cooldownTextEnabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text2FontSize"] = 24,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["text1Point"] = "BOTTOMRIGHT",
			["justify"] = "LEFT",
			["zoom"] = 0,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "G'huun: Dunk tracker",
			["alpha"] = 1,
			["text2Enabled"] = false,
			["width"] = 64,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "vePz1ofVzPS",
			["inverse"] = false,
			["xOffset"] = -92.4142761230469,
			["conditions"] = {
			},
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
		},
	},
	["registered"] = {
	},
	["minimap"] = {
		["hide"] = false,
	},
	["editor_theme"] = "Monokai",
}
