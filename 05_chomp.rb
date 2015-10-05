
print "What's your name? "
begin
  user_name = gets.chomp
  match = /[0-9]/.match(user_name)
  raise "Number on name" if match
  p "Hello #{user_name.capitalize}!"
rescue
  print "Dude, are you an android? Names don't have numbers. So, the name? "
  retry
end


print "How young are you? "
begin
  user_age = gets.chomp
  user_age = Integer(user_age)
  p "Sweet! #{user_age} is still young! ;)"
rescue
  print "Dude, age must be a number! How old are you really? "
  retry
end
