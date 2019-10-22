=begin 
Given a list of positive numbers [1,11,3,0,15,5,2,4,10,7,12,6], find the largest range of [consecutive] numbers

In this solution, we'll use a hash to store all values
start with the first entry
check for values to the left (lower than it) if they are in the array
check for values to the right of it if they are in the array 
if values are not found move to next number in the hash
=end


def largest_range(list_of_numbers)


end


list = [1,11,3,0,15,5,2,4,10,7,12,6]
puts largest_range(list)
