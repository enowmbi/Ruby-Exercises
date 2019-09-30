=begin
 I'll create a class that has three methods - which list prime numbers up to a given number n
 for each method I'll calculate the running using Ruby benchmark library or module 

Note
 - prime number is a number divisable by 1 and by itself
=end

require 'benchmark.rb'

class PrimeNumber

 def is_prime?(n)
  
  2.upto(Math.sqrt(n)) do |i|
    return false if n % i == 0 
  end
 
  return true
 end

 def is_prime2?(n)
  
  2.upto(n/2) do |i|
    return false if n % i == 0 
  end
 
  return true
 end

 def is_prime3?(n)
  
  2.upto(n-1) do |i|
    return false if n % i == 0 
  end
 
  return true
 end
 
 def get_prime_number(n)
  primes = []
  2.upto(n-1) do |i|
  
    primes << i if is_prime?(i)

  end
 return "Prime numbers up to #{n} include: #{primes}"

 end

def get_prime_number(n)
  primes = []
  2.upto(n-1) do |i|
  
    primes << i if is_prime2?(i)

  end
 return "Prime numbers up to #{n} include: #{primes}"

 end

def get_prime_number(n)
  primes = []
  2.upto(n-1) do |i|
  
    primes << i if is_prime3?(i)

  end
 return "Prime numbers up to #{n} include: #{primes}"

 end

end


pn = PrimeNumber.new
puts ""
result = Benchmark.measure do 
 puts "using sqrt(n) - #{pn.get_prime_number(20000)}"
end
puts result

puts "================="
result = Benchmark.measure do 
 puts "using n/2 - #{pn.get_prime_number(20000)}"
end
puts result

puts "================="
result = Benchmark.measure do 
 puts "using n-1 - #{pn.get_prime_number(20000)}"
end
puts result
