os.pullEvent=os.pullEventRaw

local function centerTextXY(text)
  local w, h = term.getSize()
  term.setCursorPos(math.floor(w / 2 - text:len() / 2 + .5), math.floor(h / 2 + .5))
  io.write(text)
end
term.setBackgroundColor(colors.cyan)
term.clear()
sleep(0.3)
term.setBackgroundColor(colors.blue)
term.clear()



term.clear()
term.setTextColor(colors.red)
centerTextXY("AppleOS")
sleep(2)
term.clear()
term.setTextColor(colors.white)


term.setBackgroundColor(colors.blue)
term.clear()
sleep(0.3)
term.setBackgroundColor(colors.cyan)
term.clear()
sleep(0.3)
term.setBackgroundColor(colors.black)
term.clear()
sleep(0.5)
shell.run("1")
shell.run("Login")
