=begin
 given a number n, list all factors of the number
 A of a number is any number f that can divide n without a remainder
 for each i in list from 1 to n, if i divides n without a remainder then it's a factor, add it to list of factors
 return list 

improvements
 - add 1 and number to it
 - reduce n by -1 because you are now starting at 2 not 1 and you've are not considering n since it has been added.
 Note
 - that there is no factor after half of the number except n itself so we'll use n/2
 - also - if a can divide b and b can divide c then a can divide c, that smallest factors of will be before the sqrt(n) therefore I'll add a and its corresponding b which is n/a
 - in light of above you don't need to add factors 1 and n to the list it can be added automatically
 
 
=end

def factors_of_number(n)

 factors = []
 
 1.upto(Math.sqrt(n)) do |i|
  if n % i == 0
    factors << i
    factors << n / i
  end
 end
 return "Factors of #{n} are #{factors.sort}"
end



puts factors_of_number(10)

puts ""

puts factors_of_number(20)
