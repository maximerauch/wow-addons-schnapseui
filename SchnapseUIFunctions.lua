local _, SchnapseUI = ...

function setupUI()
    -- Personal Nameplate
	SetCVar("NameplatePersonalShowAlways", SchnapseUI.Settings.ShowPersonalNameplate)

    -- Player Frame
    PlayerFrame:SetScale(SchnapseUI.Settings.PlayerFrameScale) 
    PlayerFrame:ClearAllPoints() 
    PlayerFrame:SetPoint(SchnapseUI.Settings.PlayerFrameAnchor, UIParent, SchnapseUI.Settings.PlayerFrameX, SchnapseUI.Settings.PlayerFrameY) 
    PlayerFrame:SetUserPlaced(true)

    -- Target Frame
    TargetFrame:SetScale(SchnapseUI.Settings.PlayerFrameScale) 
    TargetFrame:ClearAllPoints() 
    TargetFrame:SetPoint(SchnapseUI.Settings.PlayerFrameAnchor, UIParent, SchnapseUI.Settings.PlayerFrameX + PlayerFrame:GetWidth() + SchnapseUI.Settings.PlayerFrameSpacer, SchnapseUI.Settings.PlayerFrameY) 
    TargetFrame:SetUserPlaced(true)

    -- Focus Frame
    FocusFrame:SetScale(SchnapseUI.Settings.PlayerFrameScale) 
    FocusFrame:ClearAllPoints() 
    FocusFrame:SetPoint(SchnapseUI.Settings.PlayerFrameAnchor, UIParent, SchnapseUI.Settings.PlayerFrameX + PlayerFrame:GetWidth() - FocusFrame:GetWidth() / 2, -150) 
    FocusFrame:SetUserPlaced(true)

    -- Chat Font Size
    SetChatWindowSize(1, 16)
    SetChatWindowSize(2, 16)
    SetChatWindowSize(3, 16)

    -- Chat Frame
    ChatFrame1:ClearAllPoints()
    ChatFrame1:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 0, 0)
    ChatFrame1:SetWidth(520)
    ChatFrame1:SetHeight(250)
end