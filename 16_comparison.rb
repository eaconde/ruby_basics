
fruits = %w(grapes orange pineapple banana apple  peach coconut)
p fruits
puts

p "Sorted by .sort"
p fruits.sort
p fruits.sort.reverse
puts

p "Sorted by spaceship <=>"

p fruits.sort { |a,b| a <=> b }
p fruits.sort { |a,b| b <=> a }
puts

p "Sorted by spaceship <=> .length"
p fruits.sort { |a,b| a.length <=> b.length }
p fruits.sort { |a,b| b.length <=> a.length }
