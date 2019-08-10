def random_while
  number = 1
  while number < 22 
    x = rand(11)
    print "the new number is #{x}. "
    number = number + x
    puts "The total is #{number}"
  end
  if number > 22
    puts "The total is #{number}, exceeds 21"
  end
end


random_while