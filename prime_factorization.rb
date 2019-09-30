=begin 
 Prime factorization
 Expressing a number in terms of multiples of it's prime factors e.g 24 = 2 * 12 => 2 * 2 * 6 => 2 * 2 * 2 * 3

for i <- 2 to i <- sqrt(n)
{
 if n % i == 0 
  {
   ct = 0
   while n % i == 0
   {
    n = n / i
    ct ++
   }
   print (i,ct)
 }
 if n != 1 print (n,1)
}

=end

def prime_factors(n)

prime_factors = []

  2.upto(Math.sqrt(n)) do |i|

   if n % i == 0

     ct = 0

    while(n % i == 0) 

     n = n / i

     ct += 1

    end

    print"(#{i},#{ct})"

   end

  end

   print"(#{n},1)" if n!= 1

end


n = 44

puts "#{prime_factors(n)} are the prime factors of #{n} " 







