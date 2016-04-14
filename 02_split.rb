#!/usr/bin/ruby

grocery = "Eggs Bacon Ham Chicken Beef Pork"


puts grocery
puts grocery.length
puts "grocery.is_a? String = #{grocery.is_a? String}"
puts '-'*10

list = grocery.split

puts list
puts list.length
puts "list.is_a? Array = #{list.is_a? Array}"
puts '-'*10

date = "12/21/2012"

puts date
puts "date.split '/' \n#{date.split "/"}"

puts "date[2] = #{date[2]}"
puts "date[0..4] = #{date[0..4]}"
puts "date[0...5] = #{date[0...5]}"
