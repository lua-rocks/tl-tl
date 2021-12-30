local Point = {}






function Point:new(x, y)
   do
      self = self or {}
      self.super = self.super or Point
      self = setmetatable({}, { __index = self.super })
   end

   self.x = x or 0
   self.y = y or 0

   return self
end


function Point:move(dx, dy)
   self.x = self.x + dx
   self.y = self.y + dy
end


return Point
