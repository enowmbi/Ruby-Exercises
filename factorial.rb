puts "Calculates the factorial of the given real number !"

def factorial(n)
  if n == 0 
    return 1
  else 
   return (n * factorial(n-1)).to_f
  end
end

puts "Please enter a real number "
number = gets.to_i
puts "Factorial of #{number} is: #{factorial(number)}"


