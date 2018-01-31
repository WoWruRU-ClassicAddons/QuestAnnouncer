local AceLocale = AceLibrary("AceLocale-2.2"):new("QuestAnnouncer")

AceLocale:RegisterTranslations("enUS", function() return {
	["OPT_SHOWDEBUG_NAME"] = "Debug Mode",
	["OPT_SHOWDEBUG_DESC"] = "Toggle the display of debug information",
	["OPT_SHOWDEBUG_ON"] = "Debug mode turned on",
	["OPT_SHOWDEBUG_OFF"] = "Debug mode turned off",
	["OPT_ANNOUNCE_NAME"] = "Announcement type",
	["OPT_ANNOUNCE_DESC"] = "How an announcement should be send.\nAddon - Just party members with this addon gets informed\nChat - Your party would be informed via group chat\nBoth - Your party would be informed in both ways\nNone - No information is done",
	["OPT_ANNOUNCE_ADDON"] = "Announcements would be send to your party members with this addon",
	["OPT_ANNOUNCE_CHAT"] = "Announcements would be send to group chat",
	["OPT_ANNOUNCE_BOTH"] = "Announcements would be send to group chat and would be send to your party members with this addon",
	["OPT_ANNOUNCE_NONE"] = "No annoucements would be done",
	["OPT_DISPLAY_NAME"] = "Display type",
	["OPT_DISPLAY_DESC"] = "How announcements of other players with this addon should be displayed.\nUI - In the middle of the screen (UIErrorFrame)\nChat - In the chat frame\nBoth - In the chat frame and in the middle of the screen\nNone - Don't display them",
	["OPT_DISPLAY_UI"] = "Announcements will be shown in the middle of the screen",
	["OPT_DISPLAY_CHAT"] = "Announcements will be shown in the chat frame",
	["OPT_DISPLAY_BOTH"] = "Announcements will be shown in the chat frame and in the middle of the screen",
	["OPT_DISPLAY_NONE"] = "Announccements won't be displayed",
	["Addon"] = true,
	["UI"] = true,
	["Chat"] = true,
	["Both"] = true,
	["None"] = true,
	
	["ADVMSG"] = "$NumItems $ItemName of $NumNeeded ($NumLeft left)",
	["FINMSG"] = "$NumItems $ItemName of $NumNeeded (done)",
} end)