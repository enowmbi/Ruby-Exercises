=begin
This method of exponentiation uses a branching path or an alternate path or uses a conditional statement - checking if n is even or odd
for X^n if n is even return X^n/2 * X^n/2 
for X^n if n is odd return X * X^n-1

This algorithm is faster than the previous algorithm it has a big -Oh notation of O( 

=end

def pow(x,n)
 
  return 1 if n == 0

  return x.pow(n/2) * x.pow(n/2) if n % 2 == 0

  return x * pow(x,n-1) if n % 2 > 0

end


puts pow(2,10)

puts pow(2,5)

puts pow(3,4)




