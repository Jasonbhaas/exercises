puts "yo dude. What's your age"
age = gets.strip.to_i

if age >= 21
	puts "You're old enough! Come on in!"
	if age >=50
		puts "no wait, you're way to old dude"
	end
else
	puts "sorry. you're too young."
end