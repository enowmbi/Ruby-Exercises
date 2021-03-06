def fibonacci(number,hash ={})
 if number <= 1
   return number
 else
 if hash[number]
  return hash[number]
 else
  hash[number] = fibonacci(number - 1,hash) + fibonacci(number - 2,hash) 
  return hash[number]
 end
 end
end

def fibonacci2(number)
 return number if number <= 1
 return fibonacci2(number - 1) + fibonacci2(number - 2) 
end

require 'benchmark'
report = Benchmark.measure do 
puts "#{fibonacci(1000)} - using memoization"
end
puts report

report2 = Benchmark.measure do 
puts "#{fibonacci2(40)} - not using memoization"
end
puts report2
