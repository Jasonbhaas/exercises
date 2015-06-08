require 'rest-client'
require 'json'
#greet the user
puts "Hello! Welcome to reddit"
	
response = RestClient.get "https://www.reddit.com/r/funny.json"

parsed_response = JSON.parse(response)

data = parsed_response["data"]

children = data["children"]

children.each do |reddit|
	puts reddit["data"]["title"]
end



#goodbye
puts
puts "thanks, bye"