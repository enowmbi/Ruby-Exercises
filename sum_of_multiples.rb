def sum_multiples(number1 = 0,number2 = 0,max_number=10)
  multiples =[]
  sum_of_multiples = 0
  starting_number = number1 > number2 ? number2 : number1 

  while(starting_number < max_number)
    if starting_number % number1 == 0 || starting_number % number2 == 0
      multiples << starting_number
      sum_of_multiples +=starting_number
    end
      starting_number +=1
  end

  puts "--------------------------------------------------------------------"
  puts "Sum of multiples of #{number1} and #{number2} is #{sum_of_multiples}"
  puts "===================================================================="

end


sum_multiples(3,5,1000)
