list = []
puts "Welcome to list buildier"
while true
	puts "What can I add for you?"
	list << gets.strip
	puts "Added #{list.last}"
	puts "your list is \n #{list}"
end
