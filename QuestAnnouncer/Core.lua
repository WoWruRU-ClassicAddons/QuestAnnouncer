QuestAnnouncer = AceLibrary('AceAddon-2.0'):new('AceConsole-2.0', 'AceEvent-2.0', 'AceDB-2.0' )
local L = AceLibrary('AceLocale-2.2'):new('QuestAnnouncer')

function QuestAnnouncer:OnInitialize()
	self.options = {
		type = 'group',
		args = {
			announce = {
				order = 1,
				type = 'text',
				name = L["OPT_ANNOUNCE_NAME"],
				desc = L["OPT_ANNOUNCE_DESC"],
				get = function() return self.db.profile.announceType end,
				set = function(name) self.db.profile.announceType = name
					if name == 'addon' then
						self:Print(L["OPT_ANNOUNCE_ADDON"])
					elseif name == 'chat' then
						self:Print(L["OPT_ANNOUNCE_CHAT"])
					elseif name == 'both' then
						self:Print(L["OPT_ANNOUNCE_BOTH"])
					elseif name == 'none' then
						self:Print(L["OPT_ANNOUNCE_NONE"])
					end
				end,
				validate = {['addon'] = L["Addon"], ['chat'] = L["Chat"], ['both'] = L["Both"], ['none'] = L["None"]},
			},
			display = {
				order = 2,
				type = 'text',
				name = L["OPT_DISPLAY_NAME"],
				desc = L["OPT_DISPLAY_DESC"],
				get = function() return self.db.profile.displayType end,
				set = function(name) self.db.profile.displayType = name
					if name == 'ui' then
						self:Print(L["OPT_DISPLAY_UI"])
					elseif name == 'chat' then
						self:Print(L["OPT_DISPLAY_CHAT"])
					elseif name == 'both' then
						self:Print(L["OPT_DISPLAY_BOTH"])
					elseif name == 'none' then
						self:Print(L["OPT_DISPLAY_NONE"])
					end
				end,
				validate = {['ui'] = L["UI"], ['chat'] = L["Chat"], ['both'] = L["Both"], ['none'] = L["None"]},
			},
			debug = {
				order = 3,
				type = 'toggle',
				name = L["OPT_SHOWDEBUG_NAME"],
				desc = L["OPT_SHOWDEBUG_DESC"],
				get = function() return self.db.profile.showDebug end,
				set = function(v) self.db.profile.showDebug = v
					if self.db.profile.showDebug then
						self:Print(L["OPT_SHOWDEBUG_ON"])
					else
						self:Print(L["OPT_SHOWDEBUG_OFF"])
					end
				end,
			}
		}
	}

	self:RegisterChatCommand({'/questannouncer', '/qa'}, self.options)
	self:RegisterDB('QuestAnnouncerDB')
	self:RegisterDefaults('profile', {
		showDebug = false,
		announceType = 'addon',
		displayType = 'both',
	})
end

function QuestAnnouncer:OnEnable()
	self:RegisterEvent('CHAT_MSG_ADDON')
	self:RegisterEvent('UI_INFO_MESSAGE')
end

function QuestAnnouncer:CHAT_MSG_ADDON(prefix, message, mode, sender)
	if prefix == self and message and mode == 'PARTY' and sender ~= UnitName('player') then
		if self.db.profile.displayType == 'ui' or self.db.profile.displayType == 'both' then
			UIErrorsFrame:AddMessage(sender..': '..message, .75, 1, .5, 1, UIERRORS_HOLD_TIME)
		elseif self.db.profile.displayType == 'chat' or self.db.profile.displayType == 'both' then
			self:Print(sender..': '..message)
		end
	end
end

function QuestAnnouncer:UI_INFO_MESSAGE(message)
	-- does the message fits our schema?
	local questUpdateText = gsub(message, '(.*):%s*([-%d]+)%s*/%s*([-%d]+)%s*$', '%1', 1)
	if questUpdateText ~= message then
		local outmessage
		local _, _, strItemName, iNumItems, iNumNeeded = string.find(message, '(.*):%s*([-%d]+)%s*/%s*([-%d]+)%s*$')
		local stillneeded = iNumNeeded-iNumItems
		if stillneeded < 1 then
			outmessage = L["FINMSG"];
			outmessage = string.gsub(outmessage, '$NumItems', iNumItems)
			outmessage = string.gsub(outmessage, '$NumNeeded', iNumNeeded)
			outmessage = string.gsub(outmessage, '$ItemName', strItemName)
			outmessage = string.gsub(outmessage, '$NumLeft', stillneeded)
		end
		if stillneeded > 0 then
			outmessage = L["ADVMSG"]
			outmessage = string.gsub(outmessage, '$NumItems', iNumItems)
			outmessage = string.gsub(outmessage, '$NumNeeded', iNumNeeded)
			outmessage = string.gsub(outmessage, '$ItemName', strItemName)
			outmessage = string.gsub(outmessage, '$NumLeft', stillneeded)
		end
		if self.db.profile.showDebug then
			self:Print(outmessage)
		end
		if GetNumPartyMembers() > 0 and outmessage and (self.db.profile.announceType == 'chat' or self.db.profile.announceType == 'both') then
			SendChatMessage(outmessage, 'PARTY')
		end
		if GetNumPartyMembers() > 0 and outmessage and (self.db.profile.announceType == 'addon' or self.db.profile.announceType == 'both') then
			SendAddonMessage(self, outmessage, 'PARTY')
		end
	end
end