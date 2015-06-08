puts "hello"
puts "how old are you"
age1 = gets.strip.to_i
puts "how old is your dad"
age2 = gets.strip.to_i
puts "how old is you mother"
age3 = gets.strip.to_i

ave_age= (age1 + age2 + age3) / 3.0

puts "thank you for answering my creepy survey. The average age of your family is #{ave_age}"