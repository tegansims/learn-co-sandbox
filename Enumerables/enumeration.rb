array = [2, 6, 4, -8]


puts (5..10).reduce(:+) #=> 45      (5+6+7+8+9+10)
puts (5..10).reduce(:-) #=> -35     (5-6-7-8-9-10)
puts (5..10).reduce(:*) #=> 151200  (5*6*7*8*9*10)
puts (5..10).reduce(:%) #=> 5       (5%6%7%8%9%10)

#print (5..10).map{ |x| x*x }  #=> [25, 67, 49, 64, 81, 100] (5*5, 6*6, ... 10*10)
#print (5..10).map{ |x| x+x }  #=> [10, 12, 14, 16, 18, 20]  (5+5, 6+6, ... 10+10)
#print (5..10).map{ |x| "hello"} #=> ["hello", "hello", "hello", "hello", "hello"]

print array.map{ |x| x+x}

array.reduce(:+)


puts array.inject { |sum, n| sum + n }   #=> 4  (2+6+4+-8)
puts array.reduce { |sum, n| sum + n }   #=> 4  (2+6+4+-8) inject and reduce are used interchangeably

puts array.inject { |add, x| add + 100 }   #=> 302  (WHYYY?)

