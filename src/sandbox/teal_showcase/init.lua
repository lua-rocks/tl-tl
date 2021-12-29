




local array = { 1, 2, 3 }
local array2d = { array, { 10, 20 } }
assert(array2d[2][2] == 20)


local names = { "John", "Paul", "George", "Ringo" }
assert(names[2] == "Paul")


local multi_types_array = { 1, "a" }
assert(multi_types_array[2] .. multi_types_array[1] == "a1")







local tuple = { 3.14, 1, "hi" }
assert(tuple[2] == 1)







local modes = {
   [false] = 127,
   [true] = 230,
}
assert(modes[false] == 127)






local Point = {}





function Point.new(x, y)
   local self = setmetatable({}, { __index = Point })
   self.x = x or 0
   self.y = y or 0
   return self
end

function Point:move(dx, dy)
   self.x = self.x + dx
   self.y = self.y + dy
end

local p = Point.new(100, 200)

p:move(1, 2)

p[1] = "hi"

assert(p.x == 101 and p.y == 202 and p[1] == "hi")










local Tree = {}




local t = {
   item = 1,
   { item = 2 },
   { item = "wtf", { item = 4 } },
}


assert(t[2].item == "wtf")


print("done")
