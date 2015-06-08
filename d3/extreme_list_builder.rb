list = []
x=1
puts "Welcome to list buildier"
while x==1
	puts "What can I do for you?"
	input= gets.strip.split
	if input.first == "add"
		list << input.last
		puts "Added #{input.last}"
		puts "Your list is: \n #{list}"
	end
	if input.first == "remove"
		list.delete("#{input.last}")
		puts "Removed #{input.last}"
		puts "Your list is: \n #{list}"
	end
	if input.first == "quit"
		x = 0
	end
end
