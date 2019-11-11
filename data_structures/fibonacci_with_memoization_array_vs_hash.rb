=begin
comparing performance of fibonacci with memoization using different data structures - array and hash table

=end

def fibonacci_with_hash(number,hash ={})
 if number <= 1
   return number
 else
 if hash[number]
  return hash[number]
 else
  hash[number] = fibonacci_with_hash(number - 1,hash) + fibonacci_with_hash(number - 2,hash) 
  return hash[number]
 end
 end
end

def fibonacci_with_array(number,array =[])
 if number <= 1
   return number
 else
 if array[number]
  return array[number]
 else
  array[number] = fibonacci_with_array(number - 1,array) + fibonacci_with_array(number - 2,array) 
  return array[number]
 end
 end
end

require 'benchmark'
report = Benchmark.bm(10) do |x|
x.report('Array ') {fibonacci_with_array(5000)}
x.report('Hash table') {fibonacci_with_hash(5000)}

end

