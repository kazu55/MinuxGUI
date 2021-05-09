os.pullEvent=os.pullEventRaw
local sizex, sizey = term.getSize()
--Function
local function centerTextXY(text)
  local w, h = term.getSize()
  term.setCursorPos(math.floor(w / 2 - text:len() / 2 + .5), math.floor(h / 2 + .5))
  io.write(text)
end
local function centerText(text)
  local x,y = term.getSize()
  local x2,y2 = term.getCursorPos()
  term.setCursorPos(math.ceil((x / 2) - (text:len() / 2)), y2)
  write(text)
end
--Login
term.setTextColor(colors.blue)
shell.run("Login")

term.clear()
term.setTextColor(colors.white)
centerTextXY("Hello.")
sleep(2)
term.clear()

term.setTextColor(colors.white)
term.clear()
sleep(3)



term.setBackgroundColor(colors.blue)
term.clear()
sleep(2)
shell.run("Desktop")
