def fibonacci(number)
 return number if number <= 1 
 return fibonacci(number - 1) + fibonacci(number - 2)
end

require 'benchmark.rb'

report = Benchmark.measure do 
puts "displaying fibonacci value of #{40}: #{fibonacci(40)}"
end
puts report


