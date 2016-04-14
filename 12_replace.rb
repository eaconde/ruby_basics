# To generate a random number between 3 and 10, for example, I use: rand(8) + 3

puts "Full document text: "
doc = gets.chomp

puts "Word to be redacted: "
rem = gets.chomp

puts "Replaced with: "
rep = gets.chomp

words = doc.split
new_doc = []
words.each { |w| new_doc.push w == rem ? rep : w }

puts "Final document text"
puts new_doc.join(' ')
