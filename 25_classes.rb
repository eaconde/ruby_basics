class Warrior
  # global var...
  $warrior_description = "- Warrior: A fighter. A warrior has a higher than normal strength. Warrior relies on instict and sheer ferocity."

  def initialize(name, race, gender, stats)
    @name = name
    @race = race
    @gender = gender
    @stats = stats
    puts "New warrior has been initialized! - #{@name}"
  end

  def info
    puts "#{@name.capitalize} is a #{@gender.downcase} warrior of the #{@race.capitalize} race."
    puts "-"*25
    puts "Stats: "
    @stats.each { |k, v| puts "- #{k.capitalize}: #{v}"  }
    puts "-"*25
    puts
  end

end

puts "Access global var from within an uninstantiated class..."
puts $warrior_description
puts

warrior = Warrior.new('enoch', 'orc', 'male', {vitality: 293, strength: 123, agility: 89, intelligence: 72})
puts
puts "Fetching warrior info..."
warrior.info

warrior = Warrior.new('shiva', 'elf', 'Female', {vitality: 258, strength: 119, agility: 95, intelligence: 88})
puts
puts "Fetching warrior info..."
warrior.info
