button = { }

function button:create(x,y,w,h,color1,color2,text, onclick)
  button.x = x
  button.y = y
  button.w = w
  button.h = h
  button.color1 = color1
  button.color2 = color2
  button.text = text
  button.onClick = onClick
  
  --create button window
  term.setCursorPos(x,y)
  button.window_ = window.create(term.current(),x,y,w,h)
  button.window_.setBackgroundColor(button.color1)
  button.window_.clear()
  
  --add text
  newX = math.floor((button.w - #button.text)/2) + 1
  newY = math.floor(button.h/2) + 1
  button.window_.setCursorPos(newX, newY)
  button.window_.setTextColor(color2)
  button.window_.write(text)
  button.window_.redraw()
 
end


function button:getClick(x,y)

	print("test")
  
end
  
--buttons
buttons = {}
buttons.test1 = button:create(20,8,10,3,colors.red,colors.black,"Reboot")

while true do
  
  event, side, x, y = os.pullEvent("mouse_click")
  os.reboot()
  
end
