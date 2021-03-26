term.clear()
term.setCursorPos(1,1)
print("Press any key here to open the boot menu.")

local myTimer = os.startTimer(3)

while true do
  local event, par1 = os.pullEvent()

  if event == "timer" and par1 == myTimer then
    break
  elseif event == "key" then
    print("Start BootMenu...")
    term.setBackgroundColor(colors.black)
    sleep(1.261)
    term.clear()
    term.setCursorPos(1,1)
    shell.run("BootMenu")
    break
  end
end
