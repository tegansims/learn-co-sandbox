school = {
  instructors: %w[Ian Johann Alex],
  students: %w[Andrew Howard Terrance Daniel Rachel Natalie],
  classes: ["Software Engineering", "Data Science"]
}

instructors = school[:instructors]
p instructors[0]
p school[:instructors][0] # => both return same answer "Ian"


tv_show_characters = {
"homer" => {name: "Homer Simpson", 
  occupation: "Nuclear Safety Inspector",
  hobbies: ["Watching TV", "Eating donuts"]},
"jon" => {name: "Jon Snow", 
  occupation: "King in the North",
  hobbies: ["Fighting white walkers", "Knowing nothing"]},
"fred" => {name: "Mr. Rogers", 
  occupation: "Neighbor", 
  hobbies: ["Making children feel loved and appreciated", "Singing songs"]}
}

p tv_show_characters["homer"]