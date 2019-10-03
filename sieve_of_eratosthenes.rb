# Sieve of Eratosthenes 
# Simplest and best way yet to get prime numbers number to n

=begin
for numbers up to n create an array(primes) and assign value of true (1) meaning they are primes
set 1 and 0 as not primes - to reduce unnecessary loops primes[0] = 0 and primes[1] = 0
iterate through the numbers from i = 2 to i = n 
if the primes[i] == true or 1 
set its values for its multiples in the primes array to false or 0 i.e. i*j < n

steps
  - iterate through all numbers from 0 or 1 or 2 to number and create an array and assign each the value of true (1)
  - set 1 and 0 to false(0) since they are not prime numbers - do this only if you started the previous step from 0
  - while prime it's still prime which is the case of list before the first iteration 
  - iterate from 2 to square root of n, and then set all their multiples to false .e.g 


=end

def sieve_of_eratosthenes(number)

 primes = []
 prime_numbers = []

 0.upto(number) do |i|
  primes[i] = 1
 end

 primes[0] = 0
 primes[1] = 0

 2.upto(Math.sqrt(number)) do |j|
  if primes[j] == 1
     2.upto(number) do |k|
      if j*k <= number 
        primes[(j*k)] = 0
      end
     end
  end
 end

 primes.each_with_index do |value,index|
   if value == 1
      prime_numbers << index
   end
 end

 puts "prime numbers up to #{number} are #{prime_numbers}"

end


 sieve_of_eratosthenes(10)

 sieve_of_eratosthenes(25)

 sieve_of_eratosthenes(50)

 sieve_of_eratosthenes(75)

 sieve_of_eratosthenes(100)

