array1 = [5, 70, 2, 48, -6]

def minus_one(array)
  array.map { |x| x*-1}
end 

p minus_one(array1)


def reduce_array(array)
  array.reduce(0, :+)
end 

p reduce_array(array1)


def reduce_array_multiply(array)
  array.reduce(1, :*)
end

p reduce_array_multiply(array1)

def select_positives(array)
  array.select { |x| x>0}
end

p select_positives(array1)

def reject_positives(array)
  array.reject{ |x| x>0}
end

p reject_positives(array1)

def reduce_array_with_starting_number(array, start)
  array.reduce(start, :+)
end

p reduce_array_with_starting_number(array1, 31)

puts "NOW ON TO THE STUFF I NEED TO MEMORIZE"
p array1.all?{|x| x>5} # => false as not ALL are above 5
p array1.any?{|x| x>5} # => true as at least one is above 5
p array1.collect{|x| x+5} #=> [10, 75, 7, 53, -1] adds 5 to each element
p array1.count #=> 5 as there are 5 elements in the array
p array1.detect{|x| x>5} #=> 70, as this is the first element in the array that is over 5
p array1.find_all{|x| x>5} #=> [70, 48] as these are all the elements in the array that are over 5
p array1.find_index{|x| x>5} #=> 1, as the first element that is over 5 (70) is in the 1st index (ie second element)
p array1.max #=> 70, as this is the highest number in the array
p array1.max_by {|x| x*-1} #=> -6, as the highest number when all elements have been multiplied by -1 is 6. Returns the original element (-6)
p array1.min #=> -6, as this is the lowest number in the array
p array1.sort #=> [-6, 2, 5, 48, 70] => sorts into  order
