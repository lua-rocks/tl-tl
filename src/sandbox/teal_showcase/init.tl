-- Arrays are tables where all keys are numbers
-- and all values are of the same type.
-- Notations: `{val_type}`, `{{val_type}}`, `{{{val_type}}}` ...


local array = {1, 2, 3} -- this is {integer}
local array2d = {array, {10, 20}} -- this is {{integer}}
assert(array2d[2][2] == 20)


local names = {"John", "Paul", "George", "Ringo"}
assert(names[2] == "Paul")


local multi_types_array: {number|string} = {1, "a"}
assert(multi_types_array[2] as string .. multi_types_array[1] as string == "a1")


-- Tuples are fixed size tables containing an ordered set of elements
-- of known types assigned to its integer keys.
-- Notation: `{val_1_type, val_2_type, val_N_type}`


local tuple = {3.14, 1, "hi"} -- this is {number, integer, string}
assert(tuple[2] == 1)


-- Maps are tables where all keys of one given type, and all values are of
-- another given type.
-- Notation: `{key_type:val_type}`


local modes = { -- this is {boolean:integer}
  [false] = 127,
  [true] = 230,
}
assert(modes[false] == 127)


-- Records are tables with a set of string keys, used to represent objects.
-- A record can have an array part, in this case keys can be integer.


local record Point
  {string} -- Array-record.
  x: number
  y: number
end

function Point.new(x: number, y: number): Point
  local self = setmetatable({} as Point, { __index = Point })
  self.x = x or 0
  self.y = y or 0
  return self
end

function Point:move(dx: number, dy: number)
  self.x = self.x + dx
  self.y = self.y + dy
end

local p = Point.new(100, 200)

p:move(1, 2)

p[1] = "hi" -- Because array-record.

assert(p.x == 101 and p.y == 202 and p[1] == "hi")


-- Records can be nested and have metamethods.
-- See `lib/inspect/init.d.tl` for example.


-- You can use generics in functions and records.
-- Notation: `var<T1,T2,TN>`


local record Tree<X>
  {Tree<X>}
  item: X
end

local t: Tree<number> = {
  item = 1,
  { item = 2 },
  { item = "wtf", { item = 4 } },
}

assert(t[2].item as string == "wtf")


print "done"
