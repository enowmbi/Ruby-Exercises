=begin
given a number n, express n in terms of the multiples of it's prime factors 
e.g. 24 = 2*12 = 2*2*2*3*1

=end

def prime_factorization(n)
  
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

 print"(#{n},1)" if n != 1

end



n = 24

puts "#{prime_factorization(n)} are the prime factors of #{n} "



