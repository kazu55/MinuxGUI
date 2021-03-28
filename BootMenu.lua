Boot = ("CraftOS")
Boot1 = ("AppleOS")
a = read()
if a == Boot then
  shell.run("sh")
elseif a == Boot1 then
  shell.run("MinuxGUI")
else
  os.shutdown()
end
