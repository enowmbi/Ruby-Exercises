=begin 
Euclid's algorithm is used to calculate the gcd of two natural numbers n,m
This is the highest number than can divide n and m without a remainder

given two natural numbers n and m 
set the lower number as the divisor
and the higher number as the dividend
divide the number keep track of the remainder 
set the remainder as the new divisor and the current divisor as the new dividend
continue this operation until divisor become zero return the current divisor dividend as the gcd

Improvements
 - set the lower value before the upper value so that you eliminate the checking step
=end

class EuclidsAlgorithm

 def gcd(m,n)
  
   divisor = m > n ? n : m

   dividend = n > m ? n : m 

   while divisor != 0

    remainder = dividend % divisor 

    dividend = divisor

    divisor = remainder

   end

   return "The GCM of #{m} and #{n} is: #{dividend}"

 end

end


euclid = EuclidsAlgorithm.new
puts euclid.gcd(105,350)
puts "====="
puts euclid.gcd(100,375)
puts "====="
puts euclid.gcd(6,4)
puts "====="
puts euclid.gcd(105000,350000)
puts "====="

