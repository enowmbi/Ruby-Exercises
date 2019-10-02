def fibonacci(number)
 if number == 0 || number == 1
   return number 
 else
 return fibonacci(number - 1) + fibonacci(number - 2)
 end
end

require 'benchmark.rb'

report = Benchmark.measure do 
puts "displaying fibonacci value of #{40}: #{fibonacci(40)}"
end
puts report


