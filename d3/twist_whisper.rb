def whisper (message)
	puts "#{message.downcase}"
	message.downcase
end

def twist (message)
	message.split.shuffle.join(" ")
end

twist ("hey there i am so hungry")
