=begin
 Use memoization to improve performance of this algorithm - reducing the computational complexity
 create an array to hold values 
 for any computation - store the value in the variables
=end

def fibonacci(n)

  fibs = {}

  if n == 0
    fibs[0] = 0
    return fibs[0]
  end

  if n == 1
    fibs[1] = 1
    return fibs[1]
  end

  if fibs[n]
    return fibs[n]
  else
    fibs[n] = fibonacci(n - 1) + fibonacci(n - 2)
    return fibs[n]
  end

end


require 'benchmark.rb'
report = Benchmark.measure do 
  puts fibonacci(40)
end
puts report

