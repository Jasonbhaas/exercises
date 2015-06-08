list = {"jason" => "12/29/1993", "aaron" => "1/21/1990", "ryan" => "9/16/1991"}

def invert(list)
	list.keys.each do |key|
		val = list["#{key}"]
		list.delete("#{key}")
		list[val] = "#{key}"
	end
	puts "#{list}"
end

invert(list)