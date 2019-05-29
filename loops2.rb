puts "Displaying even and odd numbers from 1 to 30"
odd_numbers = []
even_numbers = []
n = 0
loop do 
n = n + 1
even_numbers << n  if n % 2 == 0
odd_numbers << n if n % 2 !=0
break if n == 30
end

print "Even Numbers: "
p even_numbers
print "Odd Numbers: "
p odd_numbers
