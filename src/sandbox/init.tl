-- Arrays are tables where all keys are numbers
-- and all values are of the same type.

local array: {number} = {1, 2, 3}

local complex_array: {{number}} = {array, {10, 20}}

assert(complex_array[2][2] == 20)

local names = {"John", "Paul", "George", "Ringo"}

assert(names[2] == "Paul")

-- local tuple: {string, integer, string}

print "done"
