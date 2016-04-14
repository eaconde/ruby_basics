
p1 = [42, 12, 74, 78, 77, 21, 64, 20, 25, 53]
p2 = [33, 86, 43, 53, 19, 25, 82, ]

grp_one = p1.select { |n| n > 30 }
grp_two = p2.select { |n| n > 30 }

p grp_one
p grp_two
puts

puts "using procs"
over_30 = Proc.new { |n| n > 30 }
grp_one = p1.select(&over_30) # reusable procs. much more maintainable
grp_two = p2.select(&over_30)
p grp_one
p grp_two

# using call.
# converted to accept array as params, and return > 30
# test = Proc.new { |a| a.select { |n| n > 30 } }
# p test.call(p1)
