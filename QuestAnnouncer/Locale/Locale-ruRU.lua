local AceLocale = AceLibrary("AceLocale-2.2"):new("QuestAnnouncer")

AceLocale:RegisterTranslations("ruRU", function() return {	
	["OPT_SHOWDEBUG_NAME"] = "Отладка",
	["OPT_SHOWDEBUG_DESC"] = "Вкл./Выкл. отображение отладочных сообщений",
	["OPT_SHOWDEBUG_ON"] = "Отладка включена",
	["OPT_SHOWDEBUG_OFF"] = "Отладка выключена",
	["OPT_ANNOUNCE_NAME"] = "Тип объявления",
	["OPT_ANNOUNCE_DESC"] = "Как следует отправить объявление.\nАддон - Только члены группы с этим аддоном получают информацию\nЧат - Ваша группа будет проинформирована через групповой чат\nОба - Будут проинформированы члены группы с этим аддоном и вся группа через групповой чат\nНет - Не информировать",
	["OPT_ANNOUNCE_ADDON"] = "Объявления будут отправлены членам вашей группы с этим аддоном.",
	["OPT_ANNOUNCE_CHAT"] = "Объявления будут отправлены в групповой чат.",
	["OPT_ANNOUNCE_BOTH"] = "Объявления будут отправлены в групповой чат и членам вашей группы с этим аддоном.",
	["OPT_ANNOUNCE_NONE"] = "Никаких объявлений не будет.",
	["OPT_DISPLAY_NAME"] = "Тип отображения",
	["OPT_DISPLAY_DESC"] = "Как показывать объявления других игроков с этим аддоном.\nUI - в середине экрана (UIErrorFrame)\nЧат - в окне чата\nОба - В чате и в середине экрана\nНет - Не показывать их",
	["OPT_DISPLAY_UI"] = "Объявления будут показаны в середине экрана.",
	["OPT_DISPLAY_CHAT"] = "Объявления будут показаны в чате.",
	["OPT_DISPLAY_BOTH"] = "Объявления будут отображаться в чате и в середине экрана.",
	["OPT_DISPLAY_NONE"] = "Объявление не будет отображаться.",
	["Addon"] = "Аддон",
	["UI"] = "UI",
	["Chat"] = "Чат",
	["Both"] = "Оба",
	["None"] = "Нет",

	["ADVMSG"] = "$NumItems $ItemName of $NumNeeded ($NumLeft left)",
	["FINMSG"] = "$NumItems $ItemName of $NumNeeded (done)",
} end)
