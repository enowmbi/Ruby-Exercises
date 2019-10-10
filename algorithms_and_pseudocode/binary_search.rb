=begin
 it halves the initial array into two and continues to do so until the value is found

 given an ordered array of numbers A, using binary search find the the position of an item in that array

 get the mid point of the array call it midpoint
 check if item value is less than items < midpoint 
 
=end

def binary_search(array =[],item)

low = 0
high = array.length - 1
 
 while(low <= high)
  middle = (high + low) / 2
   if item > array[middle]
   #search right half
    low = middle + 1
   elsif item < array[middle] 
    high = middle - 1
   else
   return "#{item} found at index #{middle}"   
   end
 end
 return "#{item} not found !"
end



array = [*(1..100)]
puts binary_search(array,20)
