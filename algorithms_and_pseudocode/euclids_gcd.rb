#Algorithm: GCD [Get the Greatest Common Divisor of two numbers M,N]
# X<-M,Y<-N
# Repeat 4 and 5 While (X!=Y)
# if X > Y then  X <- X-Y
# if Y > X then Y <- Y-X
# WRITE "THE GCD OF X AND Y is :", X
# EXIT

def get_gcd(number1,number2)
  x = number1
  y = number2
  diff = 0
  if(x!=y)
    diff = x-y if x > y
    diff = y-x if y > x
    puts "The GCD of #{number1} and #{number2} is: #{diff}"
  else

    puts "Can't get the GCD Of two numbers that are thesame"
  end
end


get_gcd(6,4)
get_gcd(4,6)
get_gcd(5,12)
get_gcd(4,4)
