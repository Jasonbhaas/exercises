list = {}
x=1
puts "Welcome to list buildier"
while x==1
	puts "What can I do for you?"
	input = gets.strip.split
	if input.first == "add"
		if list.has_key?("#{input.last}")
			val = list["#{input.last}"]
			list["#{input.last}"] = val + 1
		else
			list["#{input.last}"] = 1
		end

		puts "Added #{input.last}"
		puts "Your list is: \n #{list}"
	end
	if input.first == "remove"
		if list.has_key?("#{input.last}")
			val = list["#{input.last}"]
			if val == 1
				list.delete("#{input.last}")
			else
				list["#{input.last}"] = val - 1
			end
		else
			puts "that isn't a real value"
		end
		puts "Removed #{input.last}"
		puts "Your list is: \n #{list}"
	end
	if input.first == "quit"
		x = 0
	end
end
