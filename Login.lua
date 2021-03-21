Admin = ("5161")
TAMASAN = ("5167")
term.clear()
term.setCursorPos(1,1)
print("Enter PIN.")
a = read()
if a == Admin then
  print("PIN correct!")
  shell.run("Desktop.lua")
elseif a == TAMASAN then
  print("PIN correct!")
  shell.run("Desktop.lua")
else
  print("PIN incorrect!")
  shell.run("Login.lua")
end