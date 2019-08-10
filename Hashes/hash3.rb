shipping_manifest = {"whale bone corset" => 5,"porcelain vase" => 2,"oil painting" => 3,"silverware" => 34, "loom" => 1}

puts shipping_manifest.has_key?("scurvy") #> returns false, as scurvy isn't a key in this hash 
puts shipping_manifest.has_value?(5) #> returns true, as 5 is a value in this hash

## ADDING INTEGERS TO KEYS, REGARDLESS OF WHETHER THEY EXIST OR NOT ##
def add_to_hash(hash, key)
  if hash[key] ? hash[key] += 1 : hash[key] = 1 
  end
  puts hash
end

add_to_hash(shipping_manifest, "wool")
add_to_hash(shipping_manifest, "loom")


## the above increases the loom key by one, as it has already has a value for loom already, and adds wool to the hash, as it doesn't have wool as a key already. 
