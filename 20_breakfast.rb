

breakfast = {
  pancakes: 7,
  bacon: 10,
  eggs: 5,
  has_browns: 6,
  muffin: 6
}

def ask_item
  begin
    puts "What is the item you want to add to the menu? "
    item = gets.chomp
    raise "Invalid menu item" if item.empty?
    item
  rescue
    puts "Item should have a name. What's the new item? "
    retry
  end

end

def ask_rating
  begin
    puts "How delicious is this item? [1-10] "
    rating = gets.to_i
    rating = Integer(rating)
    if rating > 10
      rating = 10
    elsif rating < 0
      rating = 0
    end
    rating
  rescue
    puts "Rating should be a number!. What is your rating? "
    retry
  end
end

resp = 'y'
while (resp == 'y')
  puts "Would you like to add another breakfast item? (Y)es/(N)o "
  resp = gets.chomp[0].downcase
  begin
    case resp
    when 'y'
      item = ask_item
      rating = ask_rating
      breakfast[item.downcase.to_sym] = rating
      puts "#{item} has been added to the menu with a rating of #{rating}!"
    when 'n'
      puts "Items on the new menu are as follows!"
      puts breakfast
    else
      raise "Invalid answer!"
    end
  rescue
    resp = 'y' # <= prevents infinite loop on invalid y/n question
    puts "Invalid answer! Would you like to add another breakfast item? (Y)es/(N)o "
    retry
  end
end
