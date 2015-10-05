#!/usr/bin/ruby

drinks = %w(Coke Mountain\ Dew Sprite Royal\ Orange Root\ Beer Dr\ Pepper )

puts drinks
puts "length = #{drinks.length}"
puts "drinks.is_a? Array = #{drinks.is_a? Array}"
puts "drinks[2] = #{drinks[2]}"
puts '-'*10

puts "%w vs %W"
tea = "Tea"
drinks = %w(Coke Mountain\ Dew Sprite Royal\ Orange Root\ Beer Dr\ Pepper #{tea} )
puts "%w = #{drinks}"
drinks = %W(Coke Mountain\ Dew Sprite Royal\ Orange Root\ Beer Dr\ Pepper #{tea} )
puts "%W = #{drinks}"
puts '-'*10

puts "index access"
p "drinks[0] = #{drinks[0]}"
p "drinks[1] = #{drinks[1]}"

p "drinks[-1] = #{drinks[-1]}"
p "drinks[-2] = #{drinks[-2]}"

p "drinks.length = #{drinks.length}"
p "#{drinks.length}-2 = #{drinks.length-2}"
p "drinks[drinks.length-2] = #{drinks[drinks.length-2]}"
puts '-'*10


p "mixed types"
asstd = %W(Coke 22 Sprite Royal\ Orange 5.123 Dr\ Pepper #{tea} #{6 + 3} )
asstd2 = ["Coke", 22, "Sprite", "Royal Orange", 5.123, "Dr Pepper", tea, 6 + 3]
p asstd
p asstd2
