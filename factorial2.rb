def factorial(number)
 if number <= 1
   return 1
 end
 if number > 1
 return number * factorial(number - 1)
 end
end

p "displaying factorial of #{5}: #{factorial(5)}"



