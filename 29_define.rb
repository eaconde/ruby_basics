# dynamically add classes in runtime

class String

  def self.send_new_method(name)
    # private define_method
    send(:define_method, name) {
      puts "Created a method named #{name}, and we are on it!"
    }
  end

  def self.send_new_method_with_logic(name, &logic)
    send(:define_method, name) { |*args|
      puts "Created a method named #{name}, and we are on it!"
      logic.call(*args)

      # logic.call(*args) will translate to
      # "string".bar do |x, y|
      #   puts "Our logic here is x + y"
      #   puts x + y
      # end
    }
  end
end

puts "Creating a new method called foo"
String.send_new_method('foo')
"string".foo
puts "-"*20
puts

puts "Creating a new method called bar with logic"
String.send_new_method_with_logic('bar') do |x, y|
  puts "Our logic here is x + y"
  puts x + y
end

"string".bar(1, 2)
puts "-"*20
puts
