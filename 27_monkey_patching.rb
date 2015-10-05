# Object is an already existing class...
# this is the same as js Object.prototype.?
class Object
  # created a new method within the object class
  def pretty_to_s
    puts "#"*20
    puts to_s
    puts "#"*20
  end
end

puts "called on a String object"
"test object".pretty_to_s
puts
puts "called on a Time object"
Time.now.pretty_to_s
