Admin = ("5161")
user2 = ("1234")
term.clear()
term.setCursorPos(1,1)
print("Enter PIN.")
a = read()
--Admin
if a == Admin then
  print("PIN correct!")
  shell.run("Desktop.lua")
--User2
elseif a == user2 then
  print("PIN correct!")
  shell.run("Desktop.lua")
  --User2end
else
  print("PIN incorrect!")
  shell.run("Login.lua")
end
