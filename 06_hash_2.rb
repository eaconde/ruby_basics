personal_info = Hash.new

print "First name: "
begin
  user_name = gets.chomp
  match = /[0-9]/.match(user_name)
  raise "Number on name" if match
  personal_info[:name] = user_name
rescue
  print "Invalid First Name. Try Again: "
  retry
end


print "Age: "
begin
  user_age = gets.chomp
  personal_info[:name] = Integer(user_age)
rescue
  print "Invalid Age. Try Again: "
  retry
end


print "Gender (M/F): "
begin
  user_gender = gets.chomp
  match = /^M(ale)?$|^F(emale)?$/.match(user_gender.capitalize)
  raise "Invalid Gender." unless match
  personal_info[:gender] = user_gender
rescue
  print "Invalid Gender. Try Again: "
  retry
end


print "\nSummary: \n"
print "-"*10 + "\n"
personal_info.each do |k, v|
  print "#{k.capitalize}: #{personal_info[k]} \n"
end
