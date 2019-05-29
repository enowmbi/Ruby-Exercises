puts "Doing another loop"
puts "please enter a number"
number = gets.to_i

n = 0
my_numbers =[]
loop do 
n = n + 1
my_numbers << n
next unless n == number
break
end

p "My numbers include : #{my_numbers}"


