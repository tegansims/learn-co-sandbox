bands = {
  the_cramps: %w[lux ivy nick],
  blondie: %w[debbie chris clem jimmy nigel],
  talking_heads: %w[david tina chris jerry],
  joy_division: %w[ian bernard peter stephen],
  the_smiths: %w[johnny andy morrissey mike],
}

##- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ##
puts " - - - EACH - - - "
## EACH ##
bands.each { |x | p x}
bands.each_pair { |x| p x} 
# => both return the same

##- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ##

puts " - - - REDUCE - - - "

## REDUCE ##
bands.reduce({}) do |memo, pair|  
  p memo
  p pair
  memo
end

##- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ##

puts " - - - REDUCE WITH KEY VALUE - - - "
bands.reduce() do |memo, (key, value)|
  memo
  p key.upcase
  p value.sort
  memo
end

# THE ABOVE AND THE BELOW GIVE THE SAME OUTPUT: SPLITTING THE ORIGINAL HASH INTO KEY AND VALUE FOR EACH LINE (and also doing some work on both - upcasing the keys, and sorting the values alphabetically within their keys)

puts " - - - REDUCE WITH PAIR[0] AND PAIR[1] - - - "
bands.reduce() do |memo, pair|
  memo
  p pair[0].upcase
  p pair[1].sort
  memo
end

##- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ##

puts " - - - SORTED MEMBER LIST - - - "
sorted_member_list = bands.reduce({}) do |memo, (key, value)|
  memo[key] = value.sort 
  memo
end

p sorted_member_list
##  THIS DOES AS THE ABOVE (reduce with key&value / reduce with pair[0] and pair[1]) BUT as you've put the {} in the reduce, it returns a hash. I think

puts " - - - MEMBER LIST (MY GO) - - - "
member_list = bands.reduce({}) do |memo, pair|
  memo[pair[0].upcase] = pair[1].sort 
  memo
end

p member_list

##- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ##

puts " - - - REDUCE (finds first name alphabetically) - - - "

firstmost_name = bands.reduce(nil) do |memo, (key, value)|
  # On the first pass, we don't have a name, so just grab the first one.
  memo = value[0] if !memo
  # Sort that array of names
  sorted_names = value.sort
   # If string comparison says the sorted name of the array is earlier than the memo, it becomes the new memo.
  memo = sorted_names[0] if sorted_names[0] <= memo
  p memo
end

firstmost_name     #=> as we're printing the memo as we go along, rather than just putting p when we call it, it will show us the update every time it finds an earlier name
#=> "ivy"
#=> "chris"
#=> "chris"
#=> "bernard"
#=> "andy"