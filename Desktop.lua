--Variable
local osVer = "MinuxGUI"
local w,h = term.getSize()
local brunning = true
local slc = 0
local _mtext = 1
local _mback = 128


--Tables
local menu = {
	[""] = {tcol = _mtext; bcol = _mback; x = 1; xx = 7; y = 1; cmd = function() slc = 1 end};
	[" Shutdown        "] = {tcol = _mtext; bcol = _mback; x = 1; xx = 12; y = 2; cmd = function() os.shutdown() end}; --Shutdown Now
	[" Logout          "] = {tcol = _mtext; bcol = _mback; x = 1; xx = 12; y = 3; cmd = function() shell.run("Login") end}; --Logout Now
	[" Reboot          "] = {tcol = _mtext; bcol = _mback; x = 1; xx = 12; y = 4; cmd = function() os.reboot() end}; --Reboot Now
	[" File Explorer   "] = {tcol = _mtext; bcol = _mback; x = 1; xx = 12; y = 5; cmd = function() shell.run("background FileManager") end}; --FileManager
	[" Minux News      "] = {tcol = _mtext; bcol = _mback; x = 1; xx = 12; y = 6; cmd = function() shell.run("background MinuxNews") end}; --Minux News
	[" Update MinuxGUI "] = {tcol = _mtext; bcol = _mback; x = 1; xx = 12; y = 7; cmd = function() shell.run("update") end}; --Update
	[" Shell           "] = {tcol = _mtext; bcol = _mback; x = 1; xx = 12; y = 8; cmd = function() shell.run("background shell") end}; --SH
	
}
--Functions
local function tb_Draw()
	term.setCursorPos(1,1)
	term.setBackgroundColor(8)
	term.setTextColor(1)
	term.clearLine()
	print("[Menu]")
	term.setCursorPos(math.floor(w)-#osVer, 1)
	print(osVer)
end

local function clear(bcol)
	term.setBackgroundColor(bcol)
	term.clear()
end

local function drawMenu()
	for k,v in pairs(menu) do
		term.setBackgroundColor(v.bcol)
		term.setTextColor(v.tcol)
		term.setCursorPos(v.x, v.y)
		print(k)
	end
end

local function menuClick()
	for k,v in pairs(menu) do
		if	e[1] == "mouse_click" then
			if e[2] == 1 then
				if e[3] >= v.x and e[3] <= v.xx and e[4] == v.y then
					v.cmd()
					else slc = 0 clear(colors.black) tb_Draw()
				end
			end
		end
	end
end

--Main code
clear(colors.black) --desktop Color 1
tb_Draw()
while brunning do
e = {os.pullEvent()}
	if slc == 0 then
		clear(colors.black) --desktop Color 2
		tb_Draw()
		if	e[1] == "mouse_click" then
			if e[2] == 1 then
				if e[3] >= 1 and e[3] <= 7 and e[4] == 1 then
					slc = 1
					drawMenu()
				end
			end
		end

	elseif slc == 1 then
		drawMenu()
		menuClick()
	end
end
