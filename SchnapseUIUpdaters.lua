local _G = _G
local _, SchnapseUI = ...

function SchnapseUI:UpdateSettings()
    if SchnapseUI.Settings.ConfigVersion < 2 then
        SchnapseUI.Settings.PlayerFrameScale = 1.2
        SchnapseUI.Settings.ConfigVersion = 2
    end
  end