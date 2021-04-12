local function centerTextXY(text)
  local w, h = term.getSize()
  term.setCursorPos(math.floor(w / 2 - text:len() / 2 + .5), math.floor(h / 2 + .5))
  io.write(text)
end

term.setBackgroundColor(colors.black)
term.clear()
term.setCursorPos(1,1)
centerTextXY("Restarting")
sleep(1)
os.reboot()
