

def factor base_num, fact_num
  r = base_num.to_i % fact_num.to_i
  if r == 0
    puts "The number #{base_num} is a factor of #{fact_num}"
  else
    puts "The number #{base_num} is not a factor of #{fact_num} and has a remainder of #{r}"
  end
end

print "Enter base number: "
base_num = gets.chomp
print "Factorial number to check: "
fact_num = gets.chomp
factor base_num, fact_num
