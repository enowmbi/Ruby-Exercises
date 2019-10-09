def fibonacci(n)
 return n if n== 0 || n ==1
 return fibonacci(n-1) + fibonacci(n-2)
end


puts "Fibonacci of 3 is #{fibonacci(3)}"
puts "Fibonacci of 10 is #{fibonacci(10)}"
puts "Fibonacci of 20 is #{fibonacci(20)}"
puts "Fibonacci of 35 is #{fibonacci(35)}"
puts "Fibonacci of 40 is #{fibonacci(40)}"

