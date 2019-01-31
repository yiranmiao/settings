
BlizzMoveDB = {
	["TradeSkillFrame"] = {
		["point"] = "TOP",
		["relativePoint"] = "TOP",
		["yOfs"] = -25.9344348907471,
		["xOfs"] = -204.155242919922,
	},
	["RaidParentFrame"] = {
	},
	["ClassTrainerFrame"] = {
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 76.2105102539063,
		["xOfs"] = 16,
	},
	["GameMenuFrame"] = {
		["defaultScale"] = 1,
		["point"] = "CENTER",
		["relativePoint"] = "CENTER",
		["yOfs"] = 0,
		["xOfs"] = 0,
		["default"] = {
			{
				"CENTER", -- [1]
				"UIParent", -- [2]
				"CENTER", -- [3]
				0, -- [4]
				0, -- [5]
			}, -- [1]
		},
	},
	["MonkHarmonyBarFrame"] = {
		["save"] = true,
		["modifyKey"] = "IsShiftKeyDown",
	},
	["MailFrame"] = {
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 75.4155807495117,
		["xOfs"] = 16,
	},
	["MacroFrame"] = {
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 73.0308303833008,
		["xOfs"] = 14.4101867675781,
	},
	["ChatConfigFrame"] = {
	},
	["CollectionsJournal"] = {
		["save"] = true,
	},
	["AchievementFrame"] = {
		["save"] = true,
	},
	["ComboPointPlayerFrame"] = {
		["save"] = true,
		["modifyKey"] = "IsShiftKeyDown",
	},
	["GarrisonLandingPage"] = {
	},
	["GarrisonCapacitiveDisplayFrame"] = {
	},
	["MageArcaneChargesFrame"] = {
		["save"] = true,
		["modifyKey"] = "IsShiftKeyDown",
	},
	["ScrappingMachineFrame"] = {
		["point"] = "TOPLEFT",
		["relativePoint"] = "TOPLEFT",
		["yOfs"] = -121.564331054688,
		["save"] = true,
		["xOfs"] = 15.2050971984863,
	},
	["PlayerTalentFrame"] = {
		["defaultScale"] = 1,
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 54.2105255126953,
		["xOfs"] = 20.7694282531738,
		["default"] = {
			{
				"TOPLEFT", -- [1]
				"UIParent", -- [2]
				"TOPLEFT", -- [3]
				16, -- [4]
				-116.000007629395, -- [5]
			}, -- [1]
		},
	},
	["GuildBankFrame"] = {
		["save"] = true,
	},
	["GuildFrame"] = {
		["save"] = true,
	},
	["TotemFrame"] = {
		["relativeTo"] = {
			["isAnimatedOut"] = false,
			["updatePetFrame"] = false,
			["portrait"] = {
			},
			["healAbsorbBar"] = {
			},
			["myManaCostPredictionBar"] = {
			},
			["vehicleHidesPet"] = false,
			["statusSign"] = -1,
			["unit"] = "player",
			["inSequence"] = false,
			["healAbsorbBarLeftShadow"] = {
			},
			["feedbackText"] = {
			},
			["totalAbsorbBar"] = {
				["overlay"] = {
					["tileSize"] = 32,
				},
			},
			["totalAbsorbBarOverlay"] = {
				["tileSize"] = 32,
			},
			["feedbackStartTime"] = 13548.758,
			["statusCounter"] = 0.177044992335141,
			["healthbar"] = {
				["currValue"] = 207624,
				["frequentUpdates"] = true,
				["textLockable"] = 1,
				["unit"] = "player",
				["RightText"] = {
				},
				["capNumericDisplay"] = true,
				["TextString"] = {
				},
				["cvar"] = "statusText",
				["cvarLabel"] = "STATUS_TEXT_PLAYER",
				["disconnected"] = false,
				["LeftText"] = {
				},
				["prefix"] = "生命值",
				["forceHideText"] = false,
				["tooltipText"] = "你现在所拥有的生命值。如果你的生命值为0的话，那你就会死亡。当你脱离战斗的时候，生命值会自动恢复。",
				["lockShow"] = 0,
				["AnimatedLossBar"] = {
					["animationPauseDelay"] = 0.05,
					["animationStartValue"] = 167497,
					["animationDuration"] = 0.25,
					["animationPostponeDelay"] = 0.05,
					["animationStartDelay"] = 0.1,
					["unit"] = "player",
				},
				["tooltipTitle"] = "生命值",
			},
			["overAbsorbGlow"] = {
			},
			["manabar"] = {
				["currValue"] = 98558,
				["frequentUpdates"] = true,
				["textLockable"] = 1,
				["unit"] = "player",
				["RightText"] = {
				},
				["capNumericDisplay"] = true,
				["prefix"] = "法力值",
				["cvar"] = "statusText",
				["texture"] = {
				},
				["cvarLabel"] = "STATUS_TEXT_PLAYER",
				["FullPowerFrame"] = {
					["PulseFrame"] = {
						["YellowGlow"] = {
						},
						["PulseAnim"] = {
						},
						["SoftGlow"] = {
						},
					},
					["SpikeFrame"] = {
						["BigSpikeGlow"] = {
						},
						["SpikeAnim"] = {
						},
						["AlertSpikeStay"] = {
						},
					},
					["FadeoutAnim"] = {
					},
					["maxValue"] = 100000,
				},
				["FeedbackFrame"] = {
					["LossGlowTexture"] = {
					},
					["maxValue"] = 100000,
					["animGainStartTime"] = 13313.958,
					["unit"] = "player",
					["powerType"] = 0,
					["newValue"] = 61378,
					["BarTexture"] = {
					},
					["GainGlowTexture"] = {
					},
					["updatingGain"] = false,
					["oldValue"] = 50978,
					["initialized"] = true,
				},
				["disconnected"] = false,
				["powerType"] = 0,
				["TextString"] = {
				},
				["lockShow"] = 0,
				["LeftText"] = {
				},
				["tooltipTitle"] = "法力值",
			},
			["PlayerFrameHealthBarAnimatedLoss"] = {
				["animationPauseDelay"] = 0.05,
				["animationStartValue"] = 167497,
				["animationDuration"] = 0.25,
				["animationPostponeDelay"] = 0.05,
				["animationStartDelay"] = 0.1,
				["unit"] = "player",
			},
			["inSeat"] = true,
			["state"] = "player",
			["myHealPredictionBar"] = {
			},
			["name"] = {
			},
			["overHealAbsorbGlow"] = {
			},
			["feedbackFontHeight"] = 30,
			["threatIndicator"] = {
				["unit"] = "player",
				["feedbackUnit"] = "player",
			},
			["otherHealPredictionBar"] = {
			},
			["healAbsorbBarRightShadow"] = {
			},
		},
		["point"] = "TOPLEFT",
		["relativePoint"] = "TOPLEFT",
		["yOfs"] = -75,
		["modifyKey"] = "IsShiftKeyDown",
		["xOfs"] = 27.9999980926514,
		["save"] = true,
	},
	["version"] = "20180816",
	["QuestFrame"] = {
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 37.0308837890625,
		["xOfs"] = 16,
	},
	["TradeFrame"] = {
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 65.2104721069336,
		["xOfs"] = 16,
	},
	["CalendarFrame"] = {
		["save"] = true,
	},
	["InterfaceOptionsFrame"] = {
		["point"] = "CENTER",
		["relativePoint"] = "CENTER",
		["yOfs"] = -0.794930756092072,
		["xOfs"] = 0,
	},
	["WarlockPowerFrame"] = {
		["save"] = true,
		["modifyKey"] = "IsShiftKeyDown",
	},
	["ItemSocketingFrame"] = {
	},
	["GarrisonMissionFrame"] = {
	},
	["InspectFrame"] = {
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 76.2105102539063,
		["xOfs"] = 16,
	},
	["AuctionFrame"] = {
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 24.9650402069092,
		["save"] = true,
		["xOfs"] = 172.596878051758,
	},
	["PlayerPowerBarAlt"] = {
		["default"] = {
			{
				"BOTTOM", -- [1]
				"UIParent", -- [2]
				"BOTTOM", -- [3]
				0, -- [4]
				160, -- [5]
			}, -- [1]
		},
		["defaultScale"] = 1,
	},
	["BankFrame"] = {
	},
	["CastingBarFrame"] = {
		["save"] = true,
	},
	["Boss1TargetFrame"] = {
		["save"] = false,
		["modifyKey"] = "IsShiftKeyDown",
	},
	["VideoOptionsFrame"] = {
	},
	["PaladinPowerBarFrame"] = {
		["save"] = true,
		["modifyKey"] = "IsShiftKeyDown",
	},
	["EclipseBarFrame"] = {
		["save"] = true,
		["modifyKey"] = "IsShiftKeyDown",
	},
	["PriestBarFrame"] = {
		["save"] = true,
		["modifyKey"] = "IsShiftKeyDown",
	},
	["FriendsFrame"] = {
		["point"] = "TOPLEFT",
		["relativePoint"] = "TOPLEFT",
		["yOfs"] = -85.7933731079102,
		["save"] = true,
		["xOfs"] = 159.878295898438,
	},
	["GossipFrame"] = {
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 40.2105026245117,
		["xOfs"] = 16,
	},
	["AzeriteEmpoweredItemUI"] = {
		["point"] = "TOPLEFT",
		["relativePoint"] = "TOPLEFT",
		["yOfs"] = 4.20123243331909,
		["save"] = true,
		["xOfs"] = 107.438415527344,
	},
	["ObjectiveTrackerFrame"] = {
		["defaultScale"] = 1,
		["relativeTo"] = {
		},
		["default"] = {
			{
				"TOPLEFT", -- [1]
				"UIParent", -- [2]
				"TOPLEFT", -- [3]
				0, -- [4]
				0, -- [5]
			}, -- [1]
		},
		["relativePoint"] = "TOPLEFT",
		["yOfs"] = -1,
		["save"] = true,
		["point"] = "TOPLEFT",
		["xOfs"] = 30,
	},
	["LFDParentFrame"] = {
	},
	["QuestLogPopupDetailFrame"] = {
	},
	["DressUpFrame"] = {
	},
	["MinimapCluster"] = {
		["defaultScale"] = 1,
		["save"] = true,
		["default"] = {
			{
				"TOPRIGHT", -- [1]
				"UIParent", -- [2]
				"TOPRIGHT", -- [3]
				0, -- [4]
				0, -- [5]
			}, -- [1]
		},
		["modifyKey"] = "IsShiftKeyDown",
	},
	["RuneFrame"] = {
		["save"] = true,
		["modifyKey"] = "IsShiftKeyDown",
	},
	["SpellBookFrame"] = {
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 25.7104797363281,
		["xOfs"] = 16,
	},
	["LootFrame"] = {
		["defaultScale"] = 1,
		["point"] = "CENTER",
		["relativePoint"] = "CENTER",
		["yOfs"] = 64.4270629882813,
		["xOfs"] = 54.5388641357422,
		["default"] = {
			{
				"TOPLEFT", -- [1]
				nil, -- [2]
				"BOTTOMLEFT", -- [3]
				812.140991210938, -- [4]
				567.970031738281, -- [5]
			}, -- [1]
		},
	},
	["MerchantFrame"] = {
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 66.2104568481445,
		["xOfs"] = 13.6152715682983,
	},
	["KeyBindingFrame"] = {
		["point"] = "TOP",
		["relativePoint"] = "TOP",
		["yOfs"] = -2.66886496543884,
		["xOfs"] = -157.391860961914,
	},
	["PVEFrame"] = {
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 68.6463165283203,
		["save"] = true,
		["xOfs"] = 13.6152334213257,
	},
	["WardrobeFrame"] = {
		["save"] = true,
	},
	["MirrorTimer1"] = {
		["save"] = true,
		["modifyKey"] = "IsShiftKeyDown",
	},
	["CharacterFrame"] = {
		["defaultScale"] = 1,
		["point"] = "LEFT",
		["relativePoint"] = "LEFT",
		["yOfs"] = 76.2105102539063,
		["xOfs"] = 16,
		["default"] = {
			{
				"TOPLEFT", -- [1]
				"UIParent", -- [2]
				"TOPLEFT", -- [3]
				16, -- [4]
				-116.000007629395, -- [5]
			}, -- [1]
		},
	},
	["GarrisonBuildingFrame"] = {
	},
	["HelpFrame"] = {
	},
}
