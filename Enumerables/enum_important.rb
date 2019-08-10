#p [10, 20, 30, 40].select{ |num| num > 25 } #=> [30, 40]
#p [10, 20, 30, 40].reject{ |num| num > 25 } #=> [10, 20]
#p [10, 20, 30, 40].filter{ |num| num > 25 } #=> [30, 40]

# all?: Everything "tested" by the block returns truthy
print "all?: "
p [10, 20, 30, 40].all?{ |num| num > 25 } #=> [false]
# any?: Did anything "tested" by the block returns truthy
print "any?: "
p [10, 20, 30, 40].any?{ |num| num > 25 } #=> [true]
# collect: A synonym for map
print "collect: "
p [10, 20, 30, 40].collect{ |num| num > 25 } #=> [false, false, true, true]
# count: Which elements satisfy the block or, without block, how many elements are there?
print "count: "
p [10, 20, 30, 40].count{ |num| num > 25 } #=> 2
# detect: Which element satisfies the block first. Does the same thing as find.
print "detect: "
p [10, 20, 30, 40].detect{ |num| num > 25 } #=> 30
# find_all: Which elements satisfy the block?
print "find_all: "
p [10, 20, 30, 40].find_all{ |num| num > 25 } #=> [30, 40]
# find_index: What is the index of the first element to satisfy the block?
print "find_index: "
p [10, 20, 30, 40].find_index{ |num| num > 25 } #=> 2
# max: What's the highest value?
print "max: "
p [10, 20, 30, 40].max{ |num| num } #=> 40
# max_by: What's the highest value based on some property of the element?
print "max_by: "
p [10, 20, 30, 40].max_by{ |num| num } #=> 40
# min: What's the lowest value?
print "min: "
p [10, 20, 30, 40].min{ |num| num } #=> 10
# sort: Put the values in order
print "sort: "
p [10, 20, 30, 40].sort{ |num| num } #=> [40, 30, 20, 10]