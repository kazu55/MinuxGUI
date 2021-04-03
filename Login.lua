Key = "u6ygvxErMyfk"

if fs.exists("key.txt") == true then
  shell.run("Desktop")
end
print("Please write the key")
a = read()

if a == Key then
  local h = fs.open("key.txt", "w")
  h.write(Key)
  h.close()
  shell.run("Desktop")
else
  shell.run("test")
end
