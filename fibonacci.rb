def fibonacci(number)
 if number == 0 || number == 1
   return number 
 else
 return fibonacci(number - 1) + fibonacci(number - 2)
 end
end

puts "displaying fibonacci value of #{35}: #{fibonacci(35)}"


