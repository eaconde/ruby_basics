
nums = [2, 4, 6, 8]
nums_x3 = nums.map { |v| v * 3 }
# nums_x3 = nums.collect { |v| v * 3 }
p nums_x3
puts "-"*10
puts

def tripple
  puts "In #{__method__.capitalize}..."
  yield
  puts "Back in the #{__method__} method!"
end

# tripple # => `tripple': no block given (yield)
tripple { puts "Execute me first!" }
puts "-"*10
puts

def introduction(name)
  yield(name) # use param for block
  puts "- Hello there #{name}"
  yield('Kevin') # use local var for the block
  yield(name) # param still valid and reused for block
  yield('Bacon') # use local var for the block
end

introduction('Natalie') { |n| puts "My name is #{n}!" }
