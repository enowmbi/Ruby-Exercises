module MyMath
class Math2
def initialize
 puts "initializing math class"
end
def factorial(number)
 if number <= 1
   return 1
end
if number > 1
 return number * factorial(number -1)
end
end
end
end

#p "displaying factorial of #{factorial(10)}"



