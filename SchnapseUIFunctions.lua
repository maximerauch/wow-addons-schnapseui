local _, SchnapseUI = ...

function setupUI()
	SetCVar("NameplatePersonalShowAlways", SchnapseUI.Settings.ShowPersonalNameplate)

    PlayerFrame:SetScale(SchnapseUI.Settings.PlayerFrameScale) 
    PlayerFrame:ClearAllPoints() 
    PlayerFrame:SetPoint(SchnapseUI.Settings.PlayerFrameAnchor, UIParent, SchnapseUI.Settings.PlayerFrameX, SchnapseUI.Settings.PlayerFrameY) 
    PlayerFrame:SetUserPlaced(true)

    TargetFrame:SetScale(SchnapseUI.Settings.PlayerFrameScale) 
    TargetFrame:ClearAllPoints() 
    TargetFrame:SetPoint(SchnapseUI.Settings.PlayerFrameAnchor, UIParent, SchnapseUI.Settings.PlayerFrameX + PlayerFrame:GetWidth() + SchnapseUI.Settings.PlayerFrameSpacer, SchnapseUI.Settings.PlayerFrameY) 
    TargetFrame:SetUserPlaced(true)

    FocusFrame:SetScale(SchnapseUI.Settings.PlayerFrameScale) 
    FocusFrame:ClearAllPoints() 
    FocusFrame:SetPoint(SchnapseUI.Settings.PlayerFrameAnchor, UIParent, SchnapseUI.Settings.PlayerFrameX + PlayerFrame:GetWidth() - FocusFrame:GetWidth() / 2, -150) 
    FocusFrame:SetUserPlaced(true)
end