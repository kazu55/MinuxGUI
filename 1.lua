term.clear()
term.setCursorPos(1,1)
sleep(2)
print("Press any key here to open the boot menu")
local myTimer = os.startTimer(2)

while true do
  local event, par1 = os.pullEvent()

  if event == "timer" and par1 == myTimer then
    break
  elseif event == "key" then
    print("Start BootSelector...")
    term.setBackgroundColor(colors.black)
    sleep(1.261)
    term.clear()
    term.setCursorPos(1,1)
    shell.run("BootMenu")
    break
  end
end
