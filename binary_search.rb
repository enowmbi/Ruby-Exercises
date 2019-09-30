#binary search
=begin
given a sorted list
get the mid point of the list
get the value at the midpoint
if value at midpoint equals value being searched, return true
else,
search right if value is greater than mid point value
search left if value is less than mid point value

=end

def binary_search(list = [*('a'..'z')],search_value)

  low = 0

  high = list.length - 1

 while(low <= high)

  middle = (low + high) / 2
 
  if(search_value > list[middle]) 
   
    low = middle + 1  # set the lower range for the search just after the mid point of the list

  elsif(search_value < list[middle])
   
    high = middle - 1  # set the upper range for the search just before the middle of the list

  else

    return "#{search_value} found in the list: #{list} at position #{middle}"

  end

 end

   return "#{search_value} not found in list: #{list}"

end   


puts binary_search(['a','b','c','d','e','x','z'],'x')

puts binary_search('w')


 
 

 

 



