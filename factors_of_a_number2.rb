def factors_of_number(n)

 factors = [1]  # initialize array with the first factor 1 because 1 is a factor of n
 
 2.upto(n/2) do |i|
  
 if n % i == 0

    factors << i

  end
 end
  factors << n   # add number itself because n is a factor of n
 return "Factors of #{n} are #{factors}"
end



puts factors_of_number(10)

puts ""

puts factors_of_number(20)
