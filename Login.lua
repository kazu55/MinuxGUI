Key = "u6ygvxErMyfk"
pass = "pass"

local function centerText(text)
  local x,y = term.getSize()
  local x2,y2 = term.getCursorPos()
  term.setCursorPos(math.ceil((x / 2) - (text:len() / 2)), y2)
  write(text)
end

term.clear()
term.setBackgroundColor(colors.black)

if fs.exists("key.txt") == true then
  local image = paintutils.loadImage("themes/Sakura.nfp")
  paintutils.drawImage(image, 1, 1)
  term.setCursorPos(1,18)
  term.setTextColor(colors.red)
  print("Enter Password.")
  b = read()
  if b == pass then
    return
  end
end

if fs.exists("key.txt") == false then
  print("Please write the key")
  a = read()
end

if a == Key then
  local h = fs.open("key.txt", "w")
  h.write(Key)
  h.close()
  shell.run("Desktop")
else
  term.clear()
  term.setBackgroundColor(colors.black)
  shell.run("Login")
end
