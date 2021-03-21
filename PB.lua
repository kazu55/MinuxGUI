args={...}
print("Welcome PBRUN!")
sleep(0.5)
print("PASTEBIN ID", unpack(args), "?")
confirm = ("confirm")
cancel = ("cancel")
a = read()
if a == confirm then
  print("confirmed.")
  shell.run("pastebin run", unpack(args))
elseif a == cancel then
  print("canceled.")
else
  print("canceled.")
end