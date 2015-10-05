

def sorter(arr, rev = false)
  arr.sort do |a,b|
    if rev
      b <=> a
    else
      a <=> b
    end
  end
end


games = ["Diablo 3", "Starcraft 2", "DOTA 2", "Call of Duty", "Need for Speed", "World of Warcraft", "Caesar"]


puts "Ascending: "
p sorter(games)
puts
puts "Descending: "
p sorter(games, true)
