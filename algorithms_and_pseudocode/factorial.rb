def factorial(n)
  return 1 if n == 0
  return n * factorial(n-1)
end

puts "Displaying value of 10! = #{factorial(10)}"
