puts (1..2).inject { |add, x| add + 100 } #=> 101 (1 + 100)
puts (1..3).inject { |add, x| add + 100 } #=> 201 (1 + 100 + 100)
puts (1..4).inject { |add, x| add + 100 } #=> 301 (1 + 100 + 100 + 100)
puts (1..5).inject { |x| x + 100 }        #=> 401 (1 + 100 + 100 + 100 + 100)

puts (5..10).reduce(1, :+)                #=> 46 (1  +5+6+7+8+9+10)
puts (5..10).reduce(22, :+)               #=> 67 (22 +5+6+7+8+9+10)

def reduce_to_total(array, start=1)
  puts array.reduce(start, :+)
end

array2 = [5, 6, 7, 8, 9, 10]

reduce_to_total(array2, 22)               #=> 67 (22  +5+6+7+8+9+10)

reduce_to_total(array2)                   #=> 46 (1  +5+6+7+8+9+10)  1 is the starting point here, as none was given when calling the method

puts "BREAK"

def reduce_to_all_true(source_array)
  source_array.each do |x|
    if x == true 
      source_array.reduce(:+)
    end
  end
end

array3 = [5, 6, 7, 8, 9, false]
puts reduce_to_all_true(array2)
puts reduce_to_all_true(array3)
