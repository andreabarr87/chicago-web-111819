require_relative 'config/environment.rb'

ActiveRecord::Base.logger = nil
def clear_screen!
  puts "\e[H\e[2J"
end

clear_screen!
puts "Welcome to Space Cases!"
# puts "Wanna search? Enter a planet name!"
# name = gets.chomp
#
# puts Planet.explorers_of_planet_name(name)
#
# puts "Thanks! Hey, wanna tell a new explorer's story? (y/n)"
#
# wants_to_create = gets.chomp
#
# if wants_to_create == "y"
#
#   puts "enter New Explorer name"
#
#   name = gets.chomp
#
#   puts "enter New Explorer vice"
#
#   vice = gets.chomp
#
#   puts "enter New Explorer age"
#
#   age = gets.chomp
#
#   explorer_info = {name: name, vice: vice, age: age}
#
#   e = Explorer.create(explorer_info)
#
#   puts "Explorer created:"
#   puts e.name_and_visits
#
# elsif wants_to_create == "n"
#   puts "Be that way forever then."
# else
#   puts "Sorry, I didn't get that. Try (y/n)"
#
# end
puts "1 for planets, 2 for explorers, q to exit!"
selection = gets.chomp
case selection
when "1"
  menu = "planet"
when "2"
  menu = "explorer"
when "q"
  abort("PEACE OUT!!")
end

puts "DIDN'T EXIT OUT"
