## ROLL CALL DWARVES ##
array =["Doc", "Dopey", "Bashful", "Grumpy"]
  
def roll_call_dwarves(array)
  array.each_with_index { |item, index| print index; print " "; puts item }
end
  
roll_call_dwarves(array)

puts "----------------"


## PLANETEER CALLS ##
planeteer_calls = ["earth", "wind", "fire", "water", "heart"]

def summon_captain_planet(array)
  array.collect {|x| x.capitalize + "!"}
end

p summon_captain_planet(planeteer_calls)

puts "----------------"


## LONG PLANETEER CALLS ##
short_words = ["puff", "go", "two"]
assorted_words = ["two", "go", "industrious", "bop"]

def long_planeteer_calls(array)
  array.any?{|x| x.length>4}
end

p long_planeteer_calls(short_words)
p long_planeteer_calls(assorted_words)

puts "----------------"


## FIND THE CHEESE ##
snacks = ["crackers", "gouda", "thyme"]
soup = ["tomato soup", "cheddar", "oyster crackers", "gouda"]
ingredients = ["garlic", "rosemary", "bread"]

def find_the_cheese(array)
  cheese = ["cheddar", "gouda", "camembert"]
  if array.include?("cheddar")
    "cheddar"
  elsif array.include?("gouda")
    "gouda"
  elsif array.include?("camembert")
    "camembert"
  end
end

p find_the_cheese(snacks) #=> gouda
p find_the_cheese(soup) #=> cheddar
p find_the_cheese(ingredients) #=> nil