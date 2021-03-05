local _, SchnapseUI = ...
local L = LibStub("AceLocale-3.0"):GetLocale("SchnapseUI")

SchnapseUI.DefaultConfig = {
	["ShowPersonalNameplate"] = 1,
	["PlayerFrameScale"] = 1.2,
	["PlayerFrameAnchor"] = "CENTER",
	["PlayerFrameX"] = -570,
	["PlayerFrameY"] = 310,
	["PlayerFrameSpacer"] = 20,
    ["ConfigVersion"] = 1,
}

SchnapseUI.AceConfig = {
	type = "group",
	args = {
		description = {
			name = L["DESCRIPTION"],
			type = "description",
			order = 1,
		},
		positioningGroup = {
			name = L["POSITIONING"],
			type = "group",
			inline = true,
			order = 2,
			args = {
				playerFrameX = {
					name = L["POSITIONING_X"],
					type = "range",
					width = 1.7,
					order = 1,
					min = -1000,
					max = 1000,
					step = 1,
					set = function(_, val) SchnapseUI.Settings.PlayerFrameX = val; setupUI() end,
					get = function(_) return SchnapseUI.Settings.PlayerFrameX end
				},
				playerFrameY = {
					name = L["POSITIONING_Y"],
					type = "range",
					width = 1.7,
					order = 2,
					min = -1000,
					max = 1000,
					step = 1,
					set = function(_, val) SchnapseUI.Settings.PlayerFrameY = val; setupUI() end,
					get = function(_) return SchnapseUI.Settings.PlayerFrameY end
				},
				playerFrameSpacer = {
					name = L["POSITIONING_SPACER"],
					type = "range",
					width = 1.7,
					order = 3,
					min = -1000,
					max = 1000,
					step = 3,
					set = function(_, val) SchnapseUI.Settings.PlayerFrameSpacer = val; setupUI() end,
					get = function(_) return SchnapseUI.Settings.PlayerFrameSpacer end
				},
				playerFrameAnchor = {
					name = L["POSITIONING_ANCHOR"],
					type = "select",
					width = 1.7,
					order = 4,
					values = {
						["BOTTOM"] = L["POSITIONING_ANCHOR_BOTTOM"],
						["BOTTOMLEFT"] = L["POSITIONING_ANCHOR_BOTTOM_LEFT"],
						["BOTTOMRIGHT"] = L["POSITIONING_ANCHOR_BOTTOM_RIGHT"],
						["CENTER"] = L["POSITIONING_ANCHOR_CENTER"],
						["LEFT"] = L["POSITIONING_ANCHOR_LEFT"],
						["RIGHT"] = L["POSITIONING_ANCHOR_RIGHT"],
						["TOP"] = L["POSITIONING_ANCHOR_TOP"],
						["TOPLEFT"] = L["POSITIONING_ANCHOR_TOP_LEFT"],
						["TOPRIGHT"] = L["POSITIONING_ANCHOR_TOP_RIGHT"],
					},
					set = function(_, val) SchnapseUI.Settings.PlayerFrameAnchor = val; setupUI() end,
					get = function(_) return SchnapseUI.Settings.PlayerFrameAnchor end
				},
			}
		},
		sizingGroup = {
			name = L["SIZING"],
			type = "group",
			inline = true,
			order = 3,
			args = {
				playerFrameScale = {
					name = L["SIZING_SCALE"],
					type = "range",
					width = "full",
					order = 1,
					min = 1,
					max = 2,
					step = 0.1,
					set = function(_, val) SchnapseUI.Settings.PlayerFrameScale = val; setupUI() end,
					get = function(_) return SchnapseUI.Settings.PlayerFrameScale end
				},
			}
		},
		miscGroup = {
			name = L["MISC"],
			type = "group",
			inline = true,
			order = 4,
			args = {
				showPersonalNameplate = {
					name = L["MISC_SHOW_PERSONAL_NAMEPLATE"],
					type = "toggle",
					width = "full",
					order = 1,
					set = function(_, val) SchnapseUI.Settings.ShowPersonalNameplate = val; setupUI() end,
					get = function(_) return SchnapseUI.Settings.ShowPersonalNameplate end
				},
			}
		}
	}
}