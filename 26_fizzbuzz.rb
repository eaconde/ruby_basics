(1..30).each do |n|
  puts "#{'fizz' if n % 3 == 0}#{'buzz' if n % 5 ==0}#{n if n % 3 != 0 && n % 5 != 0}"
end
