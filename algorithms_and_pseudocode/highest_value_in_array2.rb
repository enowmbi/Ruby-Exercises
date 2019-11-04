=begin
Given an array A of length/size n find the largest number in the array.
Use the most efficient algorithm possible to solve this problem 


method1 
sort array and then display the last element in the array 
sorting - quick sort or merge sort O(nlogn) - ruby already implements quicksort 
getting the largest element - O(1)
time complexity = O(nlogn)

method2
iterate through array,add them store number in variable and compare with each as you add to keep the largest_number variable updated
time complexity = O(n)


method3
use a max binary tree
tree traversal is O(logn)

=end

require 'benchmark'

def highest_value(array = [])

 array.sort! if array && !array.empty?

 puts "The highest element is #{array.last}"

end

def highest_value2(array =[])

 max_element = 0

 array.each do |item|

  max_element = item if item > max_element 
  
 end

 puts "The highest element is #{max_element}"																																																																																		

end

report = Benchmark.measure do 
highest_value([*(1..1_000_000)])
end
puts report

report2 = Benchmark.measure do 
highest_value2([*(1..1_000_000)])
end
puts report2






