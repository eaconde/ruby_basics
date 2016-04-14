
# rails mysql rails mysql rails rails ruby  rails ruby

puts "Enter string: "
text = gets.chomp

words = text.split
freq = Hash.new(0)
words.each { |word| freq[word] += 1 }

# freq = freq.values.sort
# freq = freq.sort_by { |word, instance| instance } # ascending
freq = freq.sort_by { |word, instance| instance }.reverse #descending
p freq

freq.each do |k, v|
  puts "#{k.capitalize}: #{v}"
end
