#Problem set : 
# 
#
#
#
puts "Please enter the distance to cover :"
distance = gets.chomp
puts distance
until(distance.to_f <= 1)
  distance = gets.chomp.to_f
  amount_of_fuel = distance * 100
  amount_of_fuel < 1500 ? 1500 : amount_of_fuel

  puts "Distance of :#{distance } km takes #{amount_of_fuel} L of fuel"
  puts "we are in"
end
puts " we are out"



