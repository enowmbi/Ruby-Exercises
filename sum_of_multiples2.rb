def sum_multiples(number1 = 0,number2 = 0,max_number=10)
  starting_number = number1 > number2 ? number2 : number1 

  multiples = (starting_number...(max_number)).to_a.select{|number| number % number1 == 0 || number % number2 == 0 }

  sum_of_multiples = multiples.inject(0){|sum,number| sum+=number}
  puts "--------------------------------------------------------------------"
  puts "Sum of multiples of #{number1} and #{number2} is #{sum_of_multiples}"
  puts "===================================================================="

end


sum_multiples(3,5,1000)
