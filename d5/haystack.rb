def index_of(string, letter)
	x = 0
	index = -1
	while x < string.length
		if string[x] == letter
			return x
		end
		x += 1
	end
	return "-1"
end

puts "#{index_of("hello world", "w")}"

puts "#{index_of("hello world", "z")}"

def find_by_name(array, string)
	array.each do |hash|
		if hash[:name] == string
			return hash
		end
	end
	return "Its not in there!"
end

def filter_by_name(array, string)
	return_array = []
	array.each do |hash|
		if hash[:name] == string
			return_array += [hash]
		end
	end
	return return_array
end

people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]

  puts "#{find_by_name(people, "ski")}"
  puts "#{find_by_name(people, "kitten!")}"
  puts "#{filter_by_name(people, "bru")}"
  puts "#{filter_by_name(people, "ski")}"