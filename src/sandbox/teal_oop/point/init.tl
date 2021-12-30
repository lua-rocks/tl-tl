local record Point
  x: number
  y: number
  super: any
end


function Point:new(x: number, y: number): Point
  do -- Allow using this method from other classes
    self = self or {}
    self.super = self.super or Point
    self = setmetatable({} as Point, { __index = self.super })
  end

  self.x = x or 0
  self.y = y or 0

  return self
end


function Point:move(dx: number, dy: number)
  self.x = self.x + dx
  self.y = self.y + dy
end


return Point
