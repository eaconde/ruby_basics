

puts "Paul" << "Smith" # => PaulSmith
puts

init_arr = %w(one two three)
p init_arr
init_arr << 'four'
puts "shovel in four..."
p init_arr
puts

init_hash = {
  a: 'apple',
  b: 'banana',
  c: 'celery'
}

puts "shovel in a hash"
p init_hash
p init_arr << init_hash
puts

other_arr = [1, 2, ['three', 4]]
puts "or another array"
p init_arr << other_arr
