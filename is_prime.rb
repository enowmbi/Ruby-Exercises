#get a natural number n
#check if number % i == 0 then it is not a prime number return false else if number % i > 0 then return true (i is any natural number which is greater than 1 and less than number : between 2 and number - 1)
#if it is divisible then it's not a prime number else it is a prime number
#if prime number then break iteration
#

def is_prime?(number)
  while number > 0
    iterations = 0
    2.upto(number/2) do |divisor| 
       iterations +=1
      if number % divisor == 0
        puts "#{iterations} iteration(s)"
        return false 
      end       
    end
    puts "#{iterations} iteration(s)"
    return true
  end
  puts "#{number} is not a valid number"
end

puts is_prime?(151)
