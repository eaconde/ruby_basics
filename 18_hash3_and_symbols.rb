
hash = {
  Alan: 20,
  Danica: 19,
  Fred: 24,
  Leah: 22,
  Peter: 23
}
puts hash
puts

old_enough = hash.select { |k,v| v > 21 }
puts "Who's above 21?"
puts old_enough
puts

puts "Keys only (Names)"
just_names = hash.each_key { |k| puts k }
puts
puts "Values only (Age)"
just_ages = hash.each_value { |v| puts v }
puts

puts "Prettified each"
just_ages = hash.each { |k,v| puts "#{k} is already #{v}." if v > 21 }
