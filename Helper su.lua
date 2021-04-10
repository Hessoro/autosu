script_name("Arizona Hepler By Fork Keyj")
script_author("Fork Keyj")

require 'lib.moonloader'
local keys = require "vkeys"
local sampev = require "lib.samp.events"
local nospam = false
encoding = require "encoding"
encoding.default = 'UTF-8'
cyr = encoding.CP1251

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while  not isSampAvailable() do wait(8000) end
	
	sampAddChatMessage(cyr("{FFF000}Скрипт успешно загружен! Сделан он спеациально для {FF0000}Аризона РП! {FFF000}Автор: {FF0000}Fork Keyj!"), 0xFFF000)
	sampAddChatMessage(cyr("Что бы узнать остальную информация введите комманды {00FF00}/bhelp, /chelp, /hhelp, /shelp!"), 0xFFF000)
	sampAddChatMessage(cyr("Версия скрипта {00FF00}beta 2.0 {FFF000}Следите за обновлениями на теме на бластхаке! Последнее обновление {FF0000}10.04.2021"), 0xFFF000)
	sampAddChatMessage(cyr("Тема на бластхаке: {FF0000}https://www.blast.hk/threads/84198/"), 0xFFF000)
	
	sampRegisterChatCommand("bhelp", cmd_bhelp)
	sampRegisterChatCommand("chelp", cmd_chelp)
	sampRegisterChatCommand("hhelp", cmd_hhelp)
	sampRegisterChatCommand("shelp", cmd_shelp)
	sampRegisterChatCommand(cyr"авто", cmd_auto)
	sampRegisterChatCommand(cyr"авиа", cmd_avia)
	sampRegisterChatCommand(cyr"nospam", cmd_nospam)
	sampRegisterChatCommand(cyr"denospam", cmd_denospam)
	
	----------------Сократитель команд-----------------
	
	sampRegisterChatCommand('an', function(param) sampSendChat('/anim '..param) end)
	sampRegisterChatCommand('gw', function(param) sampSendChat('/giveweapon '..param) end)
	sampRegisterChatCommand('hs', function(param) sampSendChat('/house '..param) end)
	sampRegisterChatCommand('st', function(param) sampSendChat('/settings '..param) end)
	sampRegisterChatCommand('fs', function(param) sampSendChat('/fightstyle '..param) end)
	sampRegisterChatCommand('ssp', function(param) sampSendChat('/setspawn '..param) end)
	sampRegisterChatCommand('sbi', function(param) sampSendChat('/showbizinfo '..param) end)
	sampRegisterChatCommand('fh', function(param) sampSendChat('/findihouse '..param) end)
	sampRegisterChatCommand('fb', function(param) sampSendChat('/findibiz '..param) end)
	
	
	
	while true do
		wait(0)

		---------Бинды с 2 клавиш.--------
		if isKeyJustPressed(82) and isKeyJustPressed(69) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/report")
		elseif isKeyJustPressed(68) and isKeyJustPressed(79) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/donate")
		elseif isKeyJustPressed(82) and isKeyJustPressed(67) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/repcar")	
		elseif isKeyJustPressed(82) and isKeyJustPressed(73) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/fillcar")
		elseif isKeyJustPressed(67) and isKeyJustPressed(VK_NUMPAD6) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/cars")

		---------Бинды с одной клавишей -----
		elseif isKeyJustPressed(0x4C) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/lock")
		elseif isKeyJustPressed(75) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/key")
		elseif isKeyJustPressed(VK_NUMPAD1) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/usedrugs 1")	
		elseif isKeyJustPressed(VK_NUMPAD2) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/usedrugs 2")
		elseif isKeyJustPressed(VK_NUMPAD3) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/usedrugs 3")	
		elseif isKeyJustPressed(VK_NUMPAD9) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/mask")		
		elseif isKeyJustPressed(VK_NUMPAD4) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/adrenaline")	
		elseif isKeyJustPressed(80) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/phone")	
		elseif isKeyJustPressed(VK_NUMPAD5) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/armour")
		elseif isKeyJustPressed(187) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/mm")
		elseif isKeyJustPressed(85) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/usemed")	
		elseif isKeyJustPressed(VK_NUMPAD8) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/style")	
		elseif isKeyJustPressed(VK_NUMPAD7) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/time")
		
		---------Бинды на анимки-----------
		elseif isKeyJustPressed(VK_ADD) and isKeyJustPressed(VK_KEY_C) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/anim 1")		
		elseif isKeyJustPressed(VK_ADD) and isKeyJustPressed(VK_KEY_V) and not sampIsChatInputActive() and not sampIsDialogActive() then
			sampSendChat("/anim 2")			
		end
    end
end

function cmd_bhelp(arg)
	sampShowDialog(10, cyr"{FFF000}Горячие клавишы", cyr"{FF0000}1. L - /lock\n2. K - /key\n3. NUMPAD 1,2,3 - /usedrugs 1,2,3\n4. NUMPAD 4 - /adrenaline\n5. NUMPAD 9 - /mask\n6. P - /phone\n7. NUMPAD 5 - /armour\n8. = - /mm\n9. U - /usemed\n10. Numpad 8 - /style\n11. NUMPAD 7 - /time", cyr"{00FF00}Закрыть")
end

function cmd_chelp(arg)
	sampShowDialog(11, cyr"{FFF000}Горячие коомбинации", cyr"{FF0000}1. R + E - /report \n2. D + O - /donate\n3. R + C - /repcar\n4. R + I - /fillcar\n5. C + NUMPAD 6 - /cars", cyr"{00FF00}Закрыть")
end

function cmd_hhelp(arg)
	sampShowDialog(12, cyr"{FFF000}Команды хелпера", cyr"{FF0000}/авто - Ответы на вопросы в автошколе.\n/авиа - Ответы на вопросы в авиашколеы\n/nospam - убирается флуд в чате по типу продам, куплю, действия администратора и т.д.\n/denospam - деактивация функции nospam", cyr"{00FF00}Закрыть")
end

function cmd_auto(arg)
	sampAddChatMessage(cyr("Ответы на вопросы в автошколе"), 0xFFF000)
	sampAddChatMessage(cyr("Максимальная скорость по городу: {00FF00}60 км/ч"), 0xFFFFFF)
	sampAddChatMessage(cyr("Максимальная скорость вне города: {00FF00}120 км/ч"), 0xFFFFFF)
	sampAddChatMessage(cyr("Разрешена ли парковка на тротуаре: {00FF00}Только в экстренных ситуациях"), 0xFFFFFF)
	sampAddChatMessage(cyr("Что нужно делать при тумане: {00FF00}Снизить скорость и включить фары"), 0xFFFFFF)
end

function cmd_avia(arg)
	sampAddChatMessage(cyr("Ответы на вопросы в авиашколе"), 0xFFF000)
	sampAddChatMessage(cyr("Можно ли садиться на зданиях: {00FF00}В особых местах"), 0xFFFFFF)
	sampAddChatMessage(cyr("Разрешено ли буксировать другие транспортные средства: {00FF00}Нет"), 0xFFFFFF)
	sampAddChatMessage(cyr("Какая дистанция должна быть между двумя летящими вертолетам/самолетами: {00FF00}Необходимая для безопасного полета"), 0xFFFFFF)
	sampAddChatMessage(cyr("Полет между зданиями: {00FF00}Запрещен"), 0xFFFFFF)
	sampAddChatMessage(cyr("Летать разрешено: {00FF00}За исключением военных объектов"), 0xFFFFFF)
	sampAddChatMessage(cyr("Покидать кабину летательного аппарата разрешено: {00FF00}После остановки двигателя"), 0xFFFFFF)
	sampAddChatMessage(cyr("Перед взлетом необходимо проверить: {00FF00}Уровень реактивного топлива"), 0xFFFFFF)
end

function cmd_shelp(arg)
	sampShowDialog(10, cyr"{FFF000}Сокращение комманд", cyr"{FF0000}1. /an - /anim\n2. /gw - /giveweapon\n3. /hs - /house\n4. /st - /settings\n5. /fs - /fightstyle\n6. /ssp - /setspawn\n7. /sbi - /showbizinfo\n8. /fh - /findihouse\n9. /fb - /findibiz", cyr"{00FF00}Закрыть")
end

function cmd_nospam(arg)
	nospam = true
	sampAddChatMessage(cyr"Функция NoSpam успешно активирована!", 0xFFF000)
end

function cmd_denospam(arg)
	nospam = false
	sampAddChatMessage(cyr"Функция NoSpam успешно деактивирована!", 0xFFF000)
end
	
function sampev.onServerMessage(color, text)
	if nospam == true then
		if string.find(text, cyr'Администратор', 1, true) then
			return false
		elseif string.find(text, cyr'Продам', 1, true) then
			return false
		elseif string.find(text, cyr'Куплю', 1, true) then
			return false
		elseif string.find(text, cyr'ПРОДАМ', 1, true) then
			return false
		elseif string.find(text, cyr'КУПЛЮ', 1, true) then
			return false
		elseif string.find(text, cyr'sell', 1, true) then
			return false
		elseif string.find(text, cyr'buy', 1, true) then
			return false
		elseif string.find(text, cyr'SELL', 1, true) then
			return false	
		elseif string.find(text, cyr'BUY', 1, true) then
			return false
		elseif string.find(text, cyr'продам', 1, true) then
			return false
		elseif string.find(text, cyr'куплю', 1, true) then
			return false	
		elseif string.find(text, cyr'Отредактировал', 1, true) then
			return false
		elseif string.find(text, cyr'Закуп', 1, true) then
			return false
		elseif string.find(text, cyr'цены', 1, true) then
			return false
		elseif string.find(text, cyr'закуп', 1, true) then
			return false
		elseif string.find(text, cyr'ЗАКУП', 1, true) then
			return false
		elseif string.find(text, cyr'Цены', 1, true) then
			return false
		elseif string.find(text, cyr'ЦЕНЫ', 1, true) then
			return false
		elseif string.find(text, cyr'скидки', 1, true) then
			return false
		elseif string.find(text, cyr'Скидки', 1, true) then
			return false
		elseif string.find(text, cyr'СКИДКИ', 1, true) then
			return false
		elseif string.find(text, cyr'Аммо', 1, true) then
			return false
		elseif string.find(text, cyr'Скупаю', 1, true) then
			return false
		elseif string.find(text, cyr'скупаю', 1, true) then
			return false
		elseif string.find(text, cyr'СКУПАЮ', 1, true) then
			return false	
		end
	end	
end