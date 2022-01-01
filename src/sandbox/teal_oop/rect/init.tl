local proto = require "lib.proto"
local Point = require "src.sandbox.teal_oop.point"


local record Rect
  x: number
  y: number
  w: number
  h: number
  super: any
  new: function(top_left: Point, right_bottom: Point): Rect
  move: function(Rect, number, number)
end


function Rect:init(top_left: Point, right_bottom: Point): Rect
  top_left.init(self)

  self.w = right_bottom.x - top_left.x
  self.h = right_bottom.y - top_left.y

  return self
end


return Rect
