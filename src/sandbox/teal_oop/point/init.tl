local record Point
  x: number
  y: number
  super: any
end


function Point:init(x: number, y: number): Point
  self.x = x or 0
  self.y = y or 0
end


function Point:move(dx: number, dy: number)
  self.x = self.x + dx
  self.y = self.y + dy
end


return Point
