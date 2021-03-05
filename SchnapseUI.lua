local _G = _G
local _, SchnapseUI = ...
_G.SchnapseUI = SchnapseUI

function eventHandler(_, event, ...)
    if event == "ADDON_LOADED" and ... == "SchnapseUI" then
        if not _G.SchnapseUISettings then
			_G.SchnapseUISettings = SchnapseUI.DefaultConfig
		end

		SchnapseUI.Settings = _G.SchnapseUISettings
        SchnapseUI.Settings.ShowPersonalNameplate = 1;
        SchnapseUI:UpdateSettings()

        _G.LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("SchnapseUI", SchnapseUI.AceConfig)
		SchnapseUI.OptionsMenu = _G.LibStub("AceConfigDialog-3.0"):AddToBlizOptions("SchnapseUI", "SchnapseUI")
    end
    
    if event == "PLAYER_LOGIN" then
        setupUI()
        print("SchnapseUI - Loaded")
    end
end

local events = CreateFrame('Frame')
events:RegisterEvent('ADDON_LOADED')
events:RegisterEvent('PLAYER_LOGIN')
events:SetScript('OnEvent', eventHandler)