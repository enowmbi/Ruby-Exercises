# Sieve of Eratosthenes 
# Simplest and best way yet to get prime numbers number to n

=begin
for numbers up to n create an array(primes) and assign value of true (1) meaning they are primes
set 1 and 0 as not primes - to reduce unnecessary loops primes[0] = 0 and primes[1] = 0
iterate through the numbers from i = 2 to i = n 
if the primes[i] == true or 1 
set its values for its multiples in the primes array to false or 0 i.e. i*j < n

primes <= [n]
for i <- 2 to i <- n 
  primes[i] = 1
 end

primes[0] = 0
primes[1] = 0


    for i = 0 to i < n
        if primes[i] == 1
    for j <- i + 1  to j < i*

end

=end

=begin
  We use the sieve of Eratosthenes to obtain the prime numbers up to a given a number n
  
steps
  - iterate through all numbers from 0 or 1 or 2 to number and create an array and assign each the value of true (1)
  - set 1 and 0 to false(0) since they are not prime numbers - do this only if you started the previous step from 0
  - while prime it's still prime which is the case of list before the first iteration 
  - iterate from 2 to square root of n, and then set all their multiples to false .e.g 


=end

def sieve_of_eratosthenes(number)
 primes = []

 0.upto(n) do |i|
  primes[i] = 1
 end
 primes[0] = 0
 primes[1] = 0

 2.upto(n) do |j|
  if primes[i] == 1
    (k+1).upto(



end





