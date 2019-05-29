#displays even numbers from 1 to 20
puts "Displaying Even Numbers from 1 to 20"
n = 0
loop do 
n = n + 1
puts n.to_s if n % 2 == 0
break if n == 20
end

puts " -==================================-"
puts "Displaying Odd Numbers from 1 to 20"

n = 0
loop do 
n = n + 1
puts n.to_s if n % 2 != 0
break if n == 20
end


puts "======================================="
puts " Displaying even and odd numbers in one loop"

n = 0
even = []
odd = []
loop do 
n = n + 1
even << n if n % 2 == 0
odd << n if n % 2 != 0
next unless n >= 20
end
print "See even numbers: "
p even 
print "See odd numbers: "
p odd 


