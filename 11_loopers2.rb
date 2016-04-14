
print "using while\n"
timer = 5
while timer >= 0
  p timer
  timer -= 1
end

puts
print "using until\n"
timer = 5
until timer > 10
  p timer
  timer += 1
end


puts
print "using loop do\n"
hp = 100
loop do
  damage = Random.rand(20)
  hp -= damage
  puts "Inflicted #{damage} hp damage! #{hp} remaining!"
  break if hp <= 0
end
p "Game Over!"


puts
print "using loop do with next if\n"
current = 200
loop do
  current -= 5 # 200, 195, 190, 185, 180 ...
  next if current % 2 != 0 # skips loop if current is not even i.e, 195, 185, 175...
  puts current
  break if current <= 0
end
