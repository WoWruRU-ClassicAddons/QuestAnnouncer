local AceLocale = AceLibrary("AceLocale-2.2"):new("QuestAnnouncer")

AceLocale:RegisterTranslations("deDE", function() return {
	["OPT_SHOWDEBUG_NAME"] = "Debug Modus",
	["OPT_SHOWDEBUG_DESC"] = "Bestimmt ob Debug-Informationen angezeigt werden.",
	["OPT_SHOWDEBUG_ON"] = "Debug Modus eingeschalten",
	["OPT_SHOWDEBUG_OFF"] = "Debug Modus ausgeschalten",
	["OPT_ANNOUNCE_NAME"] = "Ankuendigungsart",
	["OPT_ANNOUNCE_DESC"] = "Auf welche Art eine Ankuendigung gesendet werden soll.\nAddon - Nur Gruppenmitglieder mit dem AddOn werden informiert\nChat - Die Gruppe wird ueber den Gruppen-Chat informiert\nBoth - Es wird ueber beide Arten informiert\nNone - Es wird nicht informiert",
	["OPT_ANNOUNCE_ADDON"] = "Ankuendigungen werden Gruppenmitglieder mit dem AddOn geschickt",
	["OPT_ANNOUNCE_CHAT"] = "Ankuendigungen werden in den Gruppen-Chat geschrieben",
	["OPT_ANNOUNCE_BOTH"] = "Ankuendigungen werden in den Gruppen-Chat geschrieben und an Gruppenmitglieder mit AddOn geschickt",
	["OPT_ANNOUNCE_NONE"] = "Es werden kein Ankuendigungen geschrieben",
	["OPT_DISPLAY_NAME"] = "Anzeigeart",
	["OPT_DISPLAY_DESC"] = "Auf welche Art die Ankuendigungen anderer Spieler angezeigt werden sollen, welche direkt vom AddOn kommen.\nUI - Mitten auf dem Bildschirm (UIErrorFrame)\nChat - Im Chat-Fenster\nBoth - Im Chat-Fenster und auf dem Bildschirm\nNone - Garnicht",
	["OPT_DISPLAY_UI"] = "Ankuendigungen werden mitten auf dem Bildschirm angezeigt",
	["OPT_DISPLAY_CHAT"] = "Ankuendigungen werden im Chat-Fenster angezeigt",
	["OPT_DISPLAY_BOTH"] = "Ankuendigungen werden im Chat-Fenster und mitten auf dem Bildschirm angezeigt",
	["OPT_DISPLAY_NONE"] = "Es werden keine Ankuendigungen angezeigt",
	
	["ADVMSG"] = "$NumItems $ItemName von $NumNeeded ($NumLeft uebrig)",
	["FINMSG"] = "$NumItems $ItemName von $NumNeeded (fertig)",
} end)