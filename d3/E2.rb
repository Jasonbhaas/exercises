x =1
while x<=100
	if x%3 == 0
		print "fizz"
	end
	if x%5 == 0
		print "buzz"
	end
	if x%3 != 0 && x%5 != 0
		print "#{x}"
	end
	x +=1
	print "\n"
	end		