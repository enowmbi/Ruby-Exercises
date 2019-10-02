=begin
 Use memoization to improve performance of this algorithm - reducing the computational complexity
 create an array to hold values 
 for any computation - store the value in the variables
=end

def fibonacci(n)

 fibs = {}

 return n if n == 0 || n == 1

 return fibs[n] if fibs[n] #keys.include?(n)

 fibs[n] = fibonacci(n - 1) + fibonacci(n - 2)

end


require 'benchmark.rb'
report = Benchmark.measure do 
puts fibonacci(40)
end
puts report

