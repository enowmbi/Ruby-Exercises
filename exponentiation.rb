=begin 
Exponentiation
x^n = x * x^n-1
=end

def pow(x,n)

  return 1 if n == 0

  return x * pow(x,n-1)

end





puts pow(2,10)

puts pow(3,10)

puts pow(5,10)
