puts "yo dude. What's your age"
age = gets.strip.to_i

if age >= 21
	if age >=65
		puts "no wait, you're way to old dude"
	else
		puts "Sahweet bru. Come right on in!"
	end
else
	puts "sorry. you're too young."
end