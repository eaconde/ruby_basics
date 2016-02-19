# Object is an already existing class...
# this is the same as js Object.prototype.?
class Object
  # created a new method within the object class
  def pretty_to_s
    puts "#"*20
    puts to_s
    puts "#"*20
  end

  def frozen?
    p "Elsa: Let it go... Let it go!"
    super

  end
end

puts "called on a String object"
"test object".pretty_to_s
puts
puts "called on a Time object"
Time.now.pretty_to_s
puts
# show-method
puts "Override Object#frozen? method"
result = "Elsa".frozen?
puts "Frozen? #{result}"
