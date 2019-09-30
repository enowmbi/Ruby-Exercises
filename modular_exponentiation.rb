=begin
#Modular exponentiation

given a number x raised to n modulo m ,
 pow(x,n,m) = X^n % m  = (X * X^n-1 ) % m = {(X % m) * (X^n-1 % m)} % m
=end

def pow(x,n,m)
 
 return 1 if n == 0

 if n % 2 == 0

   return (((x.pow(n/2)) % m)  * (x.pow(n/2) % m)) % m

 else

  return ((x % m) * (pow(x,n-1, m))) % m

 end

end





puts pow(2,4,3)

puts pow(2,5,3)
