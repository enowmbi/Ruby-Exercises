#calculate from binary to decimal

#given to binary sequence, convert to decimal

#check if array else convert to string if number,(string is an sequence of characters)
#If sequence is not up to 8 bits pad it with zero(es) to the left
#initialize a variable sum with 0
#Iterate through the sequence from i =0  to i = n-1 
#multiply each value in i by 2^n-i 
#add the result to a variable
#return sum 


def convert_from_binary_to_decimal(binary_number)
  sum = 0
   binary_number = binary_number.to_s

   if binary_number.length < 8
     binary_number_arr = binary_number.rjust(8,'0').split(//)
   else
     binary_number_arr = binary_number.split(//)
   end    

   0.upto(7) do |i|
     sum += (binary_number_arr[i].to_i * 2.pow(7-i))
   end
   return sum 

end

puts "Convert from Binary to Decimal".center(100,"=")

input = ""
until input == 'x' 
 if input.to_i > 0 
  puts ""
  puts "The decimal value of the binary #{input.to_i} is: #{convert_from_binary_to_decimal(input)}"
else
  puts "Please enter a binary number"
 end
 puts ""
  input = gets.chomp
end 

puts "Bye"


   

