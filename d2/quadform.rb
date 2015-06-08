puts "Let's do some math"
puts "Give me an a value:"
a = gets.strip.to_i
puts "Give me a b value:"
b = gets.strip.to_i
puts "Give me a c value:"
c = gets.strip.to_i
puts "computing now..."

x = (-b + Math.sqrt((b*b - 4*a*c)))/2*a
y = (-b - Math.sqrt((b*b - 4*a*c)))/2*a
puts "x is either #{x} or #{b}"
puts "See you later!"
