if not QuestAnnouncer then return end

QuestAnnouncerFu = AceLibrary('AceAddon-2.0'):new('AceDB-2.0', 'FuBarPlugin-2.0')
QuestAnnouncerFu.hasIcon = true

local L = AceLibrary('AceLocale-2.2'):new('QuestAnnouncer')
local tablet = AceLibrary('Tablet-2.0')

function QuestAnnouncerFu:OnInitialize()
	self:RegisterDB('QuestAnnouncerFuDB')

	self.hasNoColor = true
	self.hasNoText = true
	self.cannotDetachTooltip = true
	self.defaultMinimapPosition = 180
	self.OnMenuRequest = QuestAnnouncer.options
end

function QuestAnnouncerFu:OnTooltipUpdate()
	local cat = tablet:AddCategory('columns', 1)
	if QuestAnnouncer.db.profile.showDebug then
		cat:AddLine('text', L["OPT_SHOWDEBUG_ON"])
	else
		cat:AddLine('text', L["OPT_SHOWDEBUG_OFF"])
	end
	if QuestAnnouncer.db.profile.announceType == 'addon' then
		cat:AddLine('text', L["OPT_ANNOUNCE_ADDON"])
	elseif QuestAnnouncer.db.profile.announceType == 'chat' then
		cat:AddLine('text', L["OPT_ANNOUNCE_CHAT"])
	elseif QuestAnnouncer.db.profile.announceType == 'both' then
		cat:AddLine('text', L["OPT_ANNOUNCE_BOTH"])
	elseif QuestAnnouncer.db.profile.announceType == 'none' then
		cat:AddLine('text', L["OPT_ANNOUNCE_NONE"])
	end
	if QuestAnnouncer.db.profile.displayType == 'ui' then
		cat:AddLine('text', L["OPT_DISPLAY_UI"])
	elseif QuestAnnouncer.db.profile.displayType == 'chat' then
		cat:AddLine('text', L["OPT_DISPLAY_CHAT"])
	elseif QuestAnnouncer.db.profile.displayType == 'both' then
		cat:AddLine('text', L["OPT_DISPLAY_BOTH"])
	elseif QuestAnnouncer.db.profile.displayType == 'none' then
		cat:AddLine('text', L["OPT_DISPLAY_NONE"])
	end
end