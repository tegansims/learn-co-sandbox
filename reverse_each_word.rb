  #=> reverse_each_word("Hello there, and how are you?")
  #=> "olleH ,ereht dna woh era ?uoy"
  
sentence = "Hello there, and how are you?"

def reverse_each_word(words)
  p words.split.collect {|x| x.reverse}.join(" ")
end

reverse_each_word(sentence)
  