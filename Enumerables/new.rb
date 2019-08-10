oppressed_workers = ["Dopey", "Sneezy", "Happy", "Angry", "Doc", "Lemonjello", "Sleepy" ]
oppressed_workers.each do |oppressed_worker|
   puts "#{oppressed_worker.capitalize} wants to start a union!"
end

oppressed_workers = ["Dopey", "Sneezy", "Happy", "Angry", "Doc", "Lemonjello", "Undercaffeinated" ]
angry_chants = oppressed_workers.map do |oppressed_worker|
  "#{oppressed_worker.capitalize} wants to start a union!"
end
p angry_chants