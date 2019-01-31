
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["displays"] = {
		["接收器"] = {
			["text2Point"] = "TOP",
			["text1FontSize"] = 26,
			["xOffset"] = 0,
			["displayText"] = "%c",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/to3cffPZS/2",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.messages = {\n    [\"红色\"] = \"Interface\\\\Icons\\\\spell_mekkatorque_bot_redwrench\",\n    [\"紫色\"] = \"Interface\\\\Icons\\\\spell_mekkatorque_bot_purplechicken\",\n    [\"绿色\"] = \"Interface\\\\Icons\\\\spell_mekkatorque_bot_greenspring\",\n    [\"黄色\"] = \"Interface\\\\Icons\\\\spell_mekkatorque_bot_yellowbolt\",\n    [\"蓝色\"] = \"Interface\\\\Icons\\\\spell_mekkatorque_bot_bluegear\",\n}\n\naura_env.specifiedSound = {\n    [\"红色\"] = \"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Red.ogg\",\n    [\"紫色\"] = \"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Purple.ogg\",\n    [\"绿色\"] = \"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Green.ogg\",\n    [\"黄色\"] = \"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Yellow.ogg\",\n    [\"蓝色\"] = \"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Blue.ogg\",\n}\n--only plays sound if SharedMedia_Causese addon is installed\naura_env.counter = 0\n\naura_env.list = {\n    [286152] = true, --orange spanner\n    [286192] = true, -- purple chicken\n    [286215] = true, --green spring\n    [286219] = true, --yellow screw\n    [286226] = true, --blue cog\n}",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.counter = 0",
					["do_custom"] = true,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["glowType"] = "buttonOverlay",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 10,
			["text2"] = "%name",
			["auto"] = true,
			["alpha"] = 1,
			["uid"] = "ibZgeZYSd2L",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["useglowColor"] = false,
			["internalVersion"] = 11,
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
			["stickyDuration"] = false,
			["version"] = 2,
			["height"] = 64,
			["fontSize"] = 72,
			["text2Containment"] = "OUTSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["text2Enabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["config"] = {
			},
			["desaturate"] = false,
			["cooldownTextEnabled"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["unevent"] = "timed",
						["subeventPrefix"] = "SPELL",
						["duration"] = "5",
						["event"] = "Chat Message",
						["unit"] = "player",
						["custom_type"] = "stateupdate",
						["spellIds"] = {
						},
						["custom"] = "function(allstates,event,...)\n    if event == \"CHAT_MSG_WHISPER\" then\n        local author = select(2, ...)\n        if UnitInRaid(author) then\n            --troll protection \n            if aura_env.messages[...] then\n                aura_env.counter = aura_env.counter + 1\n                allstates[author..aura_env.counter] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"static\",\n                    value = aura_env.counter,\n                    icon = aura_env.messages[...],\n                    index = aura_env.counter,\n                    resort = true,\n                    name = WA_ClassColorName(strsplit(\"-\", author)),\n                    msg = ...,\n                }\n                PlaySoundFile(aura_env.specifiedSound[allstates[author..aura_env.counter].msg], \"MASTER\")\n            end\n        end\n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n        if subEvent == \"SPELL_AURA_REMOVED\" and spellID == 286105 then\n            --wipe state when exiting robot\n            for k,v in pairs(allstates) do\n                v.show = false\n                v.changed = true\n            end\n        elseif subEvent == \"SPELL_CAST_SUCCESS\" and aura_env.list[spellID] and destName == WeakAuras.me then\n            --wipes all existing icons after inputting a code\n            for k,v in pairs(allstates) do\n                v.show = false\n                v.hide = false\n            end\n        end\n    elseif event == \"ENCOUNTER_START\" then\n        aura_env.counter = 0\n    end\n    return true\nend",
						["events"] = "CHAT_MSG_WHISPER, COMBAT_LOG_EVENT_UNFILTERED, ENCOUNTER_START",
						["check"] = "event",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"286105", -- [1]
						},
						["useName"] = true,
						["unit"] = "player",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = 1,
			},
			["text1"] = "%value",
			["width"] = 64,
			["text1Enabled"] = true,
			["text1Point"] = "BOTTOM",
			["semver"] = "1.0.1",
			["selfPoint"] = "BOTTOM",
			["id"] = "接收器",
			["justify"] = "LEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["icon"] = true,
			["cooldownEdge"] = false,
			["inverse"] = false,
			["zoom"] = 0,
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "机器人助手接收器",
		},
		["机器人助手接收器"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"接收器", -- [1]
			},
			["xOffset"] = -173.33361816406,
			["yOffset"] = 173.33416748047,
			["anchorPoint"] = "CENTER",
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 11,
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
			["align"] = "CENTER",
			["rotation"] = 0,
			["version"] = 2,
			["load"] = {
				["use_class"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["semver"] = "1.0.1",
			["selfPoint"] = "LEFT",
			["id"] = "机器人助手接收器",
			["url"] = "https://wago.io/to3cffPZS/2",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "sF5TJEw55y0",
			["config"] = {
			},
			["radius"] = 200,
			["conditions"] = {
			},
			["backgroundInset"] = 0,
			["stagger"] = 0,
		},
		["机器人助手"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"可点击按钮", -- [1]
			},
			["xOffset"] = -66.669067382812,
			["yOffset"] = 389.99951171875,
			["anchorPoint"] = "CENTER",
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unit"] = "player",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 11,
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
			["align"] = "CENTER",
			["rotation"] = 0,
			["version"] = 7,
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["semver"] = "1.0.6",
			["selfPoint"] = "TOP",
			["id"] = "机器人助手",
			["url"] = "https://wago.io/suusX6ZrJ/7",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "oLA)laUhVSc",
			["config"] = {
			},
			["radius"] = 200,
			["conditions"] = {
			},
			["backgroundInset"] = 0,
			["stagger"] = 0,
		},
		["可点击按钮"] = {
			["text2Point"] = "LEFT",
			["text1FontSize"] = 28,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["name"] = "Show buttons for all players in robot",
					["default"] = true,
					["key"] = "showAll",
					["width"] = 2,
				}, -- [1]
			},
			["displayText"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/suusX6ZrJ/7",
			["actions"] = {
				["start"] = {
					["custom"] = "--not my proudest code\nlocal unit = aura_env.state.name\n--red\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1 = CreateFrame(\"Button\", \"MekkaRed\", WeakAuras.GetRegion(aura_env.id, aura_env.cloneId), \"UIPanelButtonTemplate\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:SetWidth(aura_env.region.width); WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:SetHeight(aura_env.region.height);         \nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:RegisterForClicks(\"AnyUp\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:SetScript(\"OnClick\", function (self, button, down)\n        C_ChatInfo.SendAddonMessage(\"Robotstatus_WAIT\", unit, \"RAID\")\n        SendChatMessage(\"红色\", \"WHISPER\", \"common\", unit) end);\n\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1.texture1 = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:CreateTexture(nil,\"LOW\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1.texture1:SetTexture(\"Interface\\\\Icons\\\\spell_mekkatorque_bot_redwrench\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1.texture1:SetAllPoints(WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:SetPoint(\"CENTER\",0,0)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:Show()\n\n--2 purple\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2 = CreateFrame(\"Button\", \"MekkaPurple\", WeakAuras.GetRegion(aura_env.id, aura_env.cloneId), \"UIPanelButtonTemplate\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:SetWidth(aura_env.region.width); WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:SetHeight(aura_env.region.height);         \nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:RegisterForClicks(\"AnyUp\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:SetScript(\"OnClick\", function (self, button, down)\n        C_ChatInfo.SendAddonMessage(\"Robotstatus_WAIT\", unit, \"RAID\")\n        SendChatMessage(\"紫色\", \"WHISPER\", \"common\", unit) end);\n\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2.texture2 = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:CreateTexture(nil,\"LOW\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2.texture2:SetTexture(\"Interface\\\\Icons\\\\spell_mekkatorque_bot_purplechicken\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2.texture2:SetAllPoints(WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:SetPoint(\"CENTER\",aura_env.region.width,0)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:Show() \n\n--3 green\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3 = CreateFrame(\"Button\", \"MekkaGreen\", WeakAuras.GetRegion(aura_env.id, aura_env.cloneId), \"UIPanelButtonTemplate\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:SetWidth(aura_env.region.width); WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:SetHeight(aura_env.region.height);         \nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:RegisterForClicks(\"AnyUp\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:SetScript(\"OnClick\", function (self, button, down)\n        C_ChatInfo.SendAddonMessage(\"Robotstatus_WAIT\", unit, \"RAID\")\n        SendChatMessage(\"绿色l\", \"WHISPER\", \"common\", unit) end);\n\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3.texture3 = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:CreateTexture(nil,\"LOW\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3.texture3:SetTexture(\"Interface\\\\Icons\\\\spell_mekkatorque_bot_greenspring\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3.texture3:SetAllPoints(WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:SetPoint(\"CENTER\",aura_env.region.width*2,0)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:Show() \n\n--4 yellow\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4 = CreateFrame(\"Button\", \"MekkaYellow\", WeakAuras.GetRegion(aura_env.id, aura_env.cloneId), \"UIPanelButtonTemplate\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:SetWidth(aura_env.region.width); WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:SetHeight(aura_env.region.height);         \nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:RegisterForClicks(\"AnyUp\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:SetScript(\"OnClick\", function (self, button, down)\n        C_ChatInfo.SendAddonMessage(\"Robotstatus_WAIT\", unit, \"RAID\")\n        SendChatMessage(\"黄色\", \"WHISPER\", \"common\", unit) end);\n\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4.texture4 = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:CreateTexture(nil,\"LOW\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4.texture4:SetTexture(\"Interface\\\\Icons\\\\spell_mekkatorque_bot_yellowbolt\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4.texture4:SetAllPoints(WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:SetPoint(\"CENTER\",aura_env.region.width*3,0)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:Show() \n\n-- blue\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5 = CreateFrame(\"Button\", \"MekkaBlue\", WeakAuras.GetRegion(aura_env.id, aura_env.cloneId), \"UIPanelButtonTemplate\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:SetWidth(aura_env.region.width); WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:SetHeight(aura_env.region.height);         \nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:RegisterForClicks(\"AnyUp\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:SetScript(\"OnClick\", function (self, button, down)\n        C_ChatInfo.SendAddonMessage(\"Robotstatus_WAIT\", unit, \"RAID\")\n        SendChatMessage(\"蓝色\", \"WHISPER\", \"common\", unit) end);\n\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5.texture5 = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:CreateTexture(nil,\"LOW\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5.texture5:SetTexture(\"Interface\\\\Icons\\\\spell_mekkatorque_bot_bluegear\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5.texture5:SetAllPoints(WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:SetPoint(\"CENTER\",aura_env.region.width*4,0)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:Show() \n\n",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.counter = 0\naura_env.GUIDS = {}\nC_ChatInfo.RegisterAddonMessagePrefix(\"Robotstatus_WAIT\")\naura_env.assignment = {\n    [1] = 2,\n    [2] = 3,\n    [3] = 1,\n}\naura_env.list = {\n    [286152] = true, --orange spanner\n    [286192] = true, -- purple chicken\n    [286215] = true, --green spring\n    [286219] = true, --yellow screw\n    [286226] = true, --blue cog\n}\n--list of spellIDs that fire when inputting a code",
					["do_custom"] = true,
				},
				["finish"] = {
					["stop_sound"] = false,
					["custom"] = "local frame = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId)\nframe:Hide()\nframe.icon1:Hide()\nframe.icon1.texture1:Hide()\nframe.icon2:Hide()\nframe.icon2.texture2:Hide()\nframe.icon3:Hide()\nframe.icon3.texture3:Hide()\nframe.icon4:Hide()\nframe.icon4.texture4:Hide()\nframe.icon5:Hide()\nframe.icon5.texture5:Hide()\n--gotta hide frames else monkaS things happen",
					["do_custom"] = true,
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "LEFT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["glowType"] = "buttonOverlay",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["text2"] = "%inputCode",
			["auto"] = false,
			["text2Enabled"] = false,
			["config"] = {
				["showAll"] = true,
			},
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    if aura_env.state then \n        return aura_env.state.inputCount and aura_env.state.inputCount..\"/3\" or \"\", aura_env.state.unit or \"\", aura_env.state.icon or \"\"\n    end\nend",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["useglowColor"] = false,
			["internalVersion"] = 11,
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
			["stickyDuration"] = false,
			["version"] = 7,
			["height"] = 64,
			["displayIcon"] = "",
			["fontSize"] = 12,
			["text2Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "VG4iY7DEZCC",
			["text1Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["font"] = "Friz Quadrata TT",
			["glow"] = false,
			["desaturate"] = false,
			["useTooltip"] = false,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["text1"] = "%c1 %c2 %c3",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.6",
			["useGlowColor"] = false,
			["justify"] = "LEFT",
			["id"] = "可点击按钮",
			["text1Enabled"] = true,
			["frameStrata"] = 1,
			["width"] = 64,
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["auranames"] = {
							"130", -- [1]
						},
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["showClones"] = true,
						["type"] = "custom",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["use_unit"] = true,
						["unit"] = "multi",
						["event"] = "Conditions",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["events"] = "CHAT_MSG_ADDON,COMBAT_LOG_EVENT_UNFILTERED, ENCOUNTER_START,RAID_TARGET_UPDATE",
						["custom"] = "function(allstates,event,...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n        if subEvent == \"SPELL_AURA_APPLIED\" and spellID == 286105 then\n            if UnitIsPlayer(destName) then\n                aura_env.counter = aura_env.counter + 1\n            else\n                aura_env.GUIDS[destGUID] = sourceName\n            end\n            if destName ~= WeakAuras.me and UnitIsPlayer(destName) then\n                allstates[destName] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"static\",\n                    name = destName,\n                    unit = \"|cFF5cef26RDY|r \"..WA_ClassColorName(destName),\n                    index = aura_env.counter,\n                    resort = true,\n                }\n                if GetRaidTargetIndex(destName) then\n                    --puts raidmark next to name\n                    allstates[destName].icon = \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_\"..GetRaidTargetIndex(destName)..\":0|t\"\n                    allstates[destName].changed = true\n                end\n                if aura_env.myNumber and not aura_env.config[\"showAll\"] then\n                    --wipe states that are ~= my assignement\n                    if aura_env.assignment[aura_env.myNumber] ~= allstates[destName].index then\n                        allstates[destName].show = false\n                        allstates[destName].changed = true\n                    end\n                end\n            elseif destName == WeakAuras.me and UnitIsPlayer(destName) and not aura_env.config[\"showAll\"] then\n                aura_env.myNumber = aura_env.counter\n                for k,v in pairs(allstates) do \n                    --wipe states that are ~= my assignement\n                    if aura_env.assignment[aura_env.myNumber] ~= v.index then\n                        v.show = false\n                        v.changed = true\n                    end\n                end\n            end\n        elseif subEvent == \"SPELL_AURA_REMOVED\" and spellID == 286105 then\n            --removes clickable upon leaving robot\n            if allstates[destName] then\n                allstates[destName].show = false\n                allstates[destName].changed = true\n            end\n        elseif subEvent == \"SPELL_CAST_SUCCESS\" and aura_env.list[spellID] then\n            --updates amount of inputCodes \n            if allstates[aura_env.GUIDS[sourceGUID]] then\n                if not allstates[aura_env.GUIDS[sourceGUID]].inputCount then\n                    allstates[aura_env.GUIDS[sourceGUID]].inputCount = 1\n                    allstates[aura_env.GUIDS[sourceGUID]].changed = true\n                else allstates[aura_env.GUIDS[sourceGUID]].inputCount = allstates[aura_env.GUIDS[sourceGUID]].inputCount + 1\n                    allstates[aura_env.GUIDS[sourceGUID]].changed = true\n                end\n            end\n            if allstates[aura_env.GUIDS[sourceGUID]] and aura_env.GUIDS[sourceGUID] ~= WeakAuras.me then\n                --the player you're assigned to inputted a code\n                allstates[aura_env.GUIDS[sourceGUID]].unit = \"|cFF5cef26RDY|r \"..WA_ClassColorName(destName)\n                allstates[aura_env.GUIDS[sourceGUID]].changed = true\n            end\n        elseif subEvent == \"SPELL_CAST_SUCCESS\" and spellID == 286693 then\n            --make shrunk-cast reset the counter\n            aura_env.counter = 0\n            aura_env.myNumber = nil\n            aura_env.GUIDS = {}\n        end\n    elseif event == \"ENCOUNTER_START\" then\n        --safety first\n        aura_env.counter = 0\n        aura_env.myNumber = nil\n        aura_env.GUIDS = {}\n    elseif event == \"RAID_TARGET_UPDATE\" then\n        --update raidicon\n        for _,v in pairs(allstates) do\n            if GetRaidTargetIndex(v.name) then\n                v.icon = \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_\"..GetRaidTargetIndex(v.name)..\":0|t\"\n                v.changed = true\n            end\n        end\n    elseif event == \"CHAT_MSG_ADDON\" then\n        local prefix, text, channel, sender, receiver = ...\n        if prefix then\n            if prefix == \"Robotstatus_WAIT\" then\n                if allstates[text] then\n                    --sets status to wait upon sending info to guy in robot\n                    allstates[text].unit = \"|cFFFF0000WAIT|r \"..WA_ClassColorName(text)\n                    allstates[text].changed = true    \n                end\n            end\n        end\n    end\n    return true\nend",
						["spellIds"] = {
						},
						["check"] = "event",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "stateupdate",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["ignoreSelf"] = true,
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"286105", -- [1]
						},
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = 1,
			},
			["cooldownTextEnabled"] = true,
			["inverse"] = false,
			["zoom"] = 0,
			["conditions"] = {
			},
			["parent"] = "机器人助手",
			["cooldownEdge"] = false,
		},
	},
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["minimap"] = {
		["minimapPos"] = 320.337099544877,
		["hide"] = false,
	},
	["editor_theme"] = "Monokai",
}
