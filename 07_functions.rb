

def say_hello
  p "Hello there!"
end

say_hello

# ==========================================
def say_hi
  print "First name: "
  begin
    user_name = gets.chomp
    match = /[0-9]/.match(user_name)
    raise "Number on name" if match
    p "Hello #{user_name}!"
  rescue
    print "Invalid First Name. Try Again: "
    retry
  end
end

say_hi

# ==========================================

def welcome name
  p "Welcome #{name}"
end

print "Enter welcome name: "
begin
  user_name = gets.chomp
  match = /[0-9]/.match(user_name)
  raise "Number on name" if match
  welcome user_name
rescue
  print "Invalid First Name. Try Again: "
  retry
end

# ==========================================

p "Goodbye..."
