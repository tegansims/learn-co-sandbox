tv_show_characters = {
  "Homer Simpson" => {name: "Homer Simpson", occupation: "Nuclear Safety Inspector", hobbies: ["Watching TV", "Eating donuts"]},
  "Jon Snow" => {name: "Jon Snow", occupation: "King in the North", hobbies: ["Fighting white walkers", "Knowing nothing"]},
  "Mr. Rogers" => {name: "Mr. Rogers", occupation: "Neighbor", hobbies: ["Making children feel loved and appreciated", "Singing songs"]}
}

puts tv_show_characters["Homer Simpson"]
#=> {name: "Homer Simpson", occupation: "Nuclear Safety Inspector", hobbies: ["Watching TV", "Eating donuts"]}
 
puts tv_show_characters["Jon Snow"][:occupation]
#=> "King in the North"
 
puts tv_show_characters["Mr. Rogers"][:hobbies][1]
#=> "Singing songs"


my_family = {immediate: ["dad", "mom", "nomi", "ben", "me"], additionals: ["tim", "becki", "bethan"], niblings: ["luis", "bella", "anwen", "jessica", "gethin"]}

puts my_family[:niblings][3] #=> jessica