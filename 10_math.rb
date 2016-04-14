

# to_i, to_f; converts the input to integer or float
puts "Getting triangle area"
print "Triangles height? "
h = gets.to_i;
print "Triangles width? "
w = gets.to_i;
area = 0.5*h*w
p "Area = #{area}"
p "-"*10
puts

puts "Pythagorean calculator"
print "What is side a? "
a = gets.to_f;
print "What is side b? "
b = gets.to_f;
a2 = a**2 # ** exponent
b2 = b**2
c2 = a2 + b2
c2 = Math.sqrt(c2).round
p "Result = #{c2}"
p "-"*10
puts
