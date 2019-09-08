#Algorithm : Highest Value in an array A of n elements
#MAX = A[0]
#Repeat steps 4 to 5 for i <- 1 to i <- n
#if A[i] > MAX then 
# MAX <- A[i] 
# Write MAX
#


def highest_value_in_array(my_array = [])
  if my_array && my_array.size > 0
    max = my_array[0] 

    my_array.each do |item|
      max = item if item > max 
    end

    puts "The highest value is : #{max}"

  else
    puts "Please specify an array as an argument"
  end
end

highest_value_in_array
highest_value_in_array([2,3,6,7,9,10])
