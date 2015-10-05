
plus_five = Proc.new { |x| puts "x + 5 = #{x + 5}" }
plus_five.call(7)


multiply = Proc.new { |x, y| puts "x * y = #{x * y}" }
# double.call(7) # => undefined local variable or method `double' | y is not passed.
multiply.call(7,2,3) # => 14. even with extra param of 3 and never used
puts

puts "In comes lambdas!"
test_lambda = lambda { |x, y| puts "x * y = #{x * y}" }
puts "- test_lambda.call(7) # => wrong number of arguments (1 for 2). detected missing params"
puts "- test_lambda.call(7,2,3) # => wrong number of arguments (3 for 2). detected extra params"
test_lambda.call(7,2)
puts "-"*10
puts
