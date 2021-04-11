local function centerText(text)
  local x,y = term.getSize()
  local x2,y2 = term.getCursorPos()
  term.setCursorPos(math.ceil((x / 2) - (text:len() / 2)), y2)
  write(text)
end

term.clear()
term.setCursorPos(1,1)
sleep(2)
print("Press any key to boot CraftOS")

local myTimer = os.startTimer(2)

while true do
  local event, par1 = os.pullEvent()

  if event == "timer" and par1 == myTimer then
    break
  elseif event == "key" then
    term.setBackgroundColor(colors.black)
    term.clear()
    term.setCursorPos(1,1)
    shell.run("shell")
    break
  end
end
