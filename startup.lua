os.pullEvent=os.pullEventRaw
term.setBackgroundColor(colors.cyan)
term.clear()
sleep(0.3)
term.setBackgroundColor(colors.blue)
term.clear()



term.clear()
term.setCursorPos(23,10)
term.setTextColor(colors.green)
term.write("M")
term.setTextColor(colors.white)
term.write("i")
term.setTextColor(colors.yellow)
term.write("n")
term.setTextColor(colors.green)
term.write("u")
term.setTextColor(colors.cyan)
term.write("x")
term.setTextColor(colors.white)
term.write("G")
term.write("U")
term.write("I")
sleep(2)
term.clear()

i = 0

repeat
  term.setTextColor(colors.white)
  term.setCursorPos(25,10)
  term.write("|")
  term.setCursorPos(25,10)
  sleep(0.2)
  term.write("/")
  term.setCursorPos(25,10)
  sleep(0.2)
  term.write("/")
  term.setCursorPos(25,10)
  sleep(0.2)
  term.write("-")
  term.setCursorPos(25,10)
  sleep(0.2)
  term.write("-")
  term.setCursorPos(25,10)
  sleep(0.2)
  term.write("\\")
  term.setCursorPos(25,10)
  sleep(0.2)
  term.write("\\")
  term.setCursorPos(25,10)
  sleep(0.2)
  term.write("|")
  term.setCursorPos(25,10)
  sleep(0.2)
  i = i + 1
until i == 5

shell.run("1")

if i == 5 then
  term.setBackgroundColor(colors.blue)
  term.clear()
  sleep(0.3)
  term.setBackgroundColor(colors.cyan)
  term.clear()
  sleep(0.3)
  term.setBackgroundColor(colors.black)
  term.clear()
  sleep(0.5)
  shell.run("Login")
end
