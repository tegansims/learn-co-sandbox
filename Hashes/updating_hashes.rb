person = {
  name: "Sam",
  age: 31
}

 person[:age] += 1
 p person[:age] # => 32
 
 p person[:town] # =>  nil
 person[:town] = "brum"
 
 p person 
 
 p person.fetch(:son, "not here") # fetch will return the value if the key is in the hash, but will return the second argument ("not here" in this case) if it is not found 