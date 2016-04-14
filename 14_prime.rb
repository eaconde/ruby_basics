puts "Get all prime numbers."
puts "Enter the starting number:"
start_num = gets.to_i;
puts "Enter the ending number:"
begin
  end_num = gets.to_i;
   raise "Invalid end number" if end_num <= start_num
rescue
  puts "Ending number should be greated than #{start_num}. Enter ending number: "
  retry
end

puts "Here are the result"

while (start_num < end_num)
  prime = true
  x = 2
  while (x <= start_num / 2)
    if (start_num % x == 0)
      prime = false
      break
    end

    x += 1
  end

  puts "Prime : #{start_num.to_s}" if prime

  start_num += 1
end
