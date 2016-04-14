
num_arr = [[1, 2, 3, 4],[5, 6, 7, 8],[9, 10, 11, 12],[13, 14, 15, 16]]
str_arr = [['Peter', 'Mary'],['Joseph', 'James'],['Paul','Shiela']]

# puts num_arr
# puts str_arr

idx = 2
elem = 1
puts "Elem #{elem} @ index #{idx} of num_arr is #{num_arr[idx][elem]}"
puts "Elem #{elem} @ index #{idx} of str_arr is #{str_arr[idx][elem]}"


str_arr.each do |arr|
  # NOTE: we need to do an inner loop in order to access the inner array.
  # Otherwise, accessing arr[0][?] will only access the first elem of each array
  arr.each { |name| puts "First letter of #{name}'s name is #{name[0]}" }
end
