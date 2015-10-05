
array_one = %w(one two three)

for item in array_one
  p item
end

puts
p "in reverse"
for item in array_one.reverse
  p item
end

puts
p "as each block"
array_one.each { |item| p item }


puts
p "as each block with index"
array_one.each_with_index { |item, i| p "item in index #{i} is #{item}" }
