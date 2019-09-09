def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

puts "Displaying value of 10! = #{factorial(10)}"
