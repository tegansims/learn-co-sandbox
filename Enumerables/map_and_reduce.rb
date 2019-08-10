#  https://ruby-doc.org/core-2.6.3/Enumerable.html
number_array = [2, 6, 8, 4]
string_array = ["Yo", "dude", "what's", "up"]
mixed_array = [2, 6, "hello"]

# ALL?
p number_array.all? {|x| x * -1}
    # => [true] as all individual elements are truthy 
    # => once multiplied by -1

# ANY?    
p string_array.any? {|x| x.length > 8}
    # => [false] as none of the lengths of each element
    # => is longer than 8 (the biggest is 6)

# FLAT_MAP
p number_array.flat_map { |x| [x, -x]}
p number_array.flat_map { |x| [x, "yws"]}

# COUNT
p number_array.count
p number_array.count(3)
p number_array.count(2)
p number_array.count { |x| x > 2 }

# CYCLE
mixed_array.cycle(3) {|x| print x}

# DETECT 
p mixed_array.detect {|x| x < 6}
# returns the first value that meets the block criteria

# DROP and DROPWHILE
p string_array.drop(2)  # drops first x elements
p number_array.drop_while {|x| x <3 } 

# EACH_SLICE
print "EACH_SLICE: "
string_array.each_slice(3) { |x| p x }

# EACH_WITH_INDEX
hash = {}
mixed_array.each_with_index { |element, index| hash[element] = index }
p hash

# EACH_WITH_OBJECT
p number_array.each_with_object([]) { |i, a| a << i*5 }
p number_array.map{|x| x*5}
# what's the difference between these two??

# FIND, FIND_ALL, FIND_INDEX - find gives you the first, as an object; find_all gives you all, as an array; find_index gives you the index of the first 
p number_array.find { |x| x.even?}        #=> 2
p number_array.find_all { |x| x.even?}    #=> [2, 6, 8, 4]
p number_array.find_index { |x| x.even?}  #=> 0

# FLAT_MAP
print "FLAT_MAP: "
p number_array.flat_map { |x| [x, x-1] }      #=> [2, 1, 6, 5, 8, 7, 4, 3]
p [[2, 6], [0]].flat_map { |x| x + [100] }    #=> [2, 6, 100, 0, 100]

# GREP and GREP_V  - the opposites of each other
p number_array.grep 2..6        #=> [2, 6, 4]
p number_array.grep_v 2..6      #=> [8]

# GROUP_BY
p (1..8).group_by { |i| i%3 }   #=> {1=>[1, 4, 7], 2=>[2, 5, 8], 0=>[3, 6]}
p (0..6).group_by { |i| i%3 }   #=> {0=>[0, 3, 6], 1=>[1, 4], 2=>[2, 5]}

# INCLUDE
p number_array.include? 4       #=> true
p mixed_array.include? "hey"    #=> false

# INJECT and REDUCE (these are aliases, with no perfomance benefit)
p (5..10).reduce(:+)          #=> 45 (5+6+7+8+9+10)
p string_array.inject { |a, b| a.length > b.length ? a : b }  #=> "what's"
p number_array.inject { |a, b| a > b ? a : b }  #=> 8

# MAP and COLLECT - interchangeable
p number_array.map {|x| x.to_s}
p number_array.collect {|x| x.to_s}   # => ["2", "4", "6", "8"]
p number_array.map {|x| x * -1}
p number_array.collect {|x| x * -1}   # => [-2, -4, -6, -8]

# MAX, MIN, MINMAX
puts "MAX, MIN and MINMAX:"
p string_array.max    #=> "what's"  - the "biggest" alphabetically
p number_array.max(2) #=> [8, 6] - the two biggest numerically

p ["these", "are", "some", "words"].minmax #=> ["are", "words"] does first and last alphabetically 
p %w(i really dont get this at all terribly sorry).minmax #=> ["all", "this"]
p [9, 2, 5, 88, 1, 8906, 73].minmax #=> [1, 8906]

# if we want to do it by size/length, use max_by, min_by or minmax_by:
p ["these", "are", "some", "wordsz"].minmax_by {|x| x.length } #=> ["are", "wordsz"]

# NONE - just remember that it returns true if NONE of the tests are passed
p %w{ant bear cat}.none?(/x/)  #=> true, cos none of those contains an "x"
p %w{ant bear cat}.none? {|x| x.length == 5 } #=> true, cos none of these words are 5 lengths long

# ONE - returns true if ONLY one test is passed, and false if 2+ do
p %w{ant bear cat}.one?(/a/)  #=> false, as they ALL have an "a"
p %w{ant bear cat}.one?(/b/) #=> true, as only one has a "b"

# PARTITION
p number_array.partition { |x| x.even? }  #=> [[2, 6, 8, 4], []]
p (1..10).partition { |x| x.odd? } #=> [[1, 3, 5, 7, 9], [2, 4, 6, 8, 10]]

# REJECT 
p (1..10).reject{ |x| x.odd? }  #=> [2, 4, 6, 8, 10]

# REVERSE
puts "REVERSE: "
p number_array      
p number_array.reverse  #=> an array

# SELECT works just like FIND_ALL 

# SLICE_AFTER, SLICE_BEFORE and SLICE_WHEN
# don't quite get these yet 
a = [1,2,4,9,10,11,12,15,16,19,20,21]
b = a.slice_when {|i, j| i+1 != j }
p b.to_a

# SORT and SORT_BY
p [4, 8, 90, -5, 3226].sort #=> sorts numbers numerically, ascending
p %w(elephant zebra antelope giraffe lion).sort #=> sorts strings alphabetically
# have found this doesn't always work.. see below
p string_array.sort   #=> ["Yo", "dude", "up", "what's"] NOT ALPHABETICAL!

p %w(elephant zebra antelope giraffe lion).sort {|x| x.length }
# yeah see this doesn't completely work

# SUM
p number_array.sum            #=> 20
p number_array.sum {|x| x*2}  #=> 40 

# TAKE and TAKE_WHILE
p mixed_array
p mixed_array.take(2)
p number_array.take_while { |x| x < 5 } #=> [2] stops after the first one

# TO_A (returns an array) and TO_H (returns a hash)
p (1..5).to_a         #=> [1, 2, 3, 4, 5]
p number_array.to_a   #=> [2, 6, 8, 4]

p (6..10).to_h { |x| [x-5, x] } #=> {1=>6, 2=>7, 3=>8, 4=>9, 5=>10}

# ZIP
a = [5, 10, 15]
b = [ 2, 4, 6]
p a.zip(b)    #=> [[5, 2], [10, 4], [15, 6]]
p b.zip(a)    #=> [[2, 5], [4, 10], [6, 15]]
p a.zip(number_array)   #=> [[5, 2], [10, 6], [15, 8]]
p number_array.zip(a)   #=> [[2, 5], [6, 10], [8, 15], [4, nil]]