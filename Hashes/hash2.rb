## FOUR DIFFERENT TYPES OF WRITING HASHES, AND RETRIEVING FROM THEM ##

groceries = {:milk => 0.52, :bread => 1.48, :eggs => 2.50}  # symbols
groceries2 = {chocolate: 0.65, wine: 7.50}                  # symbols, different notation
groceries3 = {"frosties" => 2.65}                           # string 
groceries4 = {20 => "amount of money I took out with me"}   # integer

puts groceries[:milk]
puts groceries2[:wine]
puts groceries3["frosties"]
puts groceries4[20]


## HANDLING A NIL RESPONSE, PLUS .fetch ##

puts groceries[:orange_juice]
# => nil

puts groceries.fetch(:orange_juice, "nope")
# => returns "nope", as it CAN'T find it

puts groceries.fetch(:milk, "nope")
# returns 0.52, as it CAN find it

# puts groceries.fetch(:orange_juice)
# error message, as you haven't given fetch an alternate


## UPDATING HASH VALUES ##

groceries[:bread] = 1.80        # price of bread has gone up, need to change it
groceries[:orange_juice] = 1.99 # adding a new key
puts groceries                  # shows the whole updated hash

