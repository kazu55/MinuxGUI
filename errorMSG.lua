function os.errscreen(errorMSG)
  term.setTextColor(colors.red)
  print("An error has occurred.")
  print(errorMSG)
  print("Rebooting...")
  sleep(2)
  os.reboot()
end
