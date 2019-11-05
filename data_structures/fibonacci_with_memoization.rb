def fibonacci(number,array ={})
 if number == 0 || number == 1
    return 1
 end
 if array[number]
  return array[number]
 else
  array[number] = fibonacci(number - 1) + fibonacci(number - 2) 
  return array[number]
 end
end

def fibonacci2(number)
 if number == 0 || number == 1
    return 1
else
 return fibonacci(number - 1) + fibonacci(number - 2) 
end
end

require 'benchmark'
report = Benchmark.measure do 
puts "#{fibonacci(40)} with memoization"
end
puts report

report2 = Benchmark.measure do 
puts "#{fibonacci2(40)} without memoization"
end
puts report2
