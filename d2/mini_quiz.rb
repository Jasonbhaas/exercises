puts "Welcome to the mini quiz"
puts "Question 1- What is the area code for South Africa?"
ans1= gets.strip
number_correct= 0
if ans1 == "27"
	number_correct += 1
	puts "That's right. You have answered 1/1 questions corretly!"
else
	puts "Whoops. That's wrong. It's actually 27!"
end

puts "Question 2- What percentage of the world lives beneath the equator?"
puts "Hint: Round to the nearest 10%"
ans2 = gets.strip
if (ans2 == "10") || (ans2 == "10%")
	number_correct +=1
	puts "That's right. You have answered #{number_correct}/2 correctly!"
else
	puts "Whoops. That's wrong. It's actually 10%"
	puts "You have answered #{number_correct}/2 correctly!"
end

puts "Question 3- Who won the 2010 world cup in South Africa?"
ans3 = gets.strip
if (ans3 == "spain") || (ans3 == "Spain")
	number_correct +=1
	puts "That's correct! You have answered #{number_correct}/3 correctly"
	if number_correct == 3
		puts "Congrats! You got a perfect score!"
	end
else
	puts "That's wrong. Spain won the World cup in 2010."
	puts "You have answered #{number_correct}/3 correct."
	if number_correct == 0
		puts "You got them all wrong. You should learn more about South Africa bru."
	end
end
