while true
	puts "enter which fibonnaci number you'd like computed"
	numb = gets.strip.to_i
	first = 1
	second = 1
	total = 1
	if numb == 1
		puts "1"
	elsif numb ==2
		puts "1"
	else
		while numb >=3
			total= first + second
			second = first
			first = total
			numb = numb - 1
		end
		puts "#{total}"
	end
end

			
