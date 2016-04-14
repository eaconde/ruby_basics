#!/usr/bin/ruby

hash_brown = {
  "topping_1" => "Sour Cream",
  "topping_2" => "Butter",
  "topping_3" => "Salt",
  "topping_4" => "Ketchup",
}

p hash_brown
p "hash_brown.is_a? Hash #{hash_brown.is_a? Hash}"

p "Accessing via index should return nil."
p hash_brown[1]

p "Instead. access hash value thru their keys"
p "hash_brown['topping_2'] == #{hash_brown["topping_2"]}"
p "Update as well. NOTE: key can be string or symbol"
hash_brown[:topping_3] = "Salt & Pepper"
p "hash_brown[:topping_3] = 'Salt & Pepper' results in '#{hash_brown[:topping_3]}''"
p '-'*10

name_hash = Hash.new

name_hash[:name] = 'John'
name_hash[:last] = 'Smith'
name_hash[:nick] = 'JJ'

p "Hash via Hash.new"
puts name_hash
