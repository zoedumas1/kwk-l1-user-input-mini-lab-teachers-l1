puts "Let's plan your trip!"
puts "Where would you like to stay?"

stay = gets.chomp.capitalize

puts "What would you like to eat?"

eat = gets.chomp

puts "How many nights would you like to stay?"

nights = gets.chomp

puts "In your trip, you are going to stay at #{stay.upcase} for #{nights} and eat #{eat}."
