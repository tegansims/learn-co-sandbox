oppressed_workers = ["Dopey", "Sneezy", "Happy", "Angry", "Doc", "Lemonjello", "Sleepy" ]

oppressed_workers.each do |x|
  print "#{x.upcase} "
end

oppressed_workers.each_with_index do |index, x|
  puts "#{x}. #{index}!"
end

(1..5).each_cons(3) do |x|
  p x
end
# => [1, 2, 3]
# => [2, 3, 4]
# => [3, 4, 5]