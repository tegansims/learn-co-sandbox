#HASH TO Array

hash = {name: 'Jeremy', age: 24, role: 'Software Engineer'}
wanted_array = [["name", "Jeremy"], ["age", 24], ["role", "Software Engineer"]]

p hash.map { |x, y| [x.to_s, y] }


# ARRAY TO HASH - doesn't quite work

array = [["name", "Jeremy"], ["age", 24], ["role", "Software Engineer"]]
wanted_hash = {name: 'Jeremy', age: 24, role: 'Software Engineer'}

p array.to_h