def fib(number, memo =[])
 if number <= 1
   return number
 else
   if memo[number]
     return memo[number]
   else
     memo[number] = fib(number - 1,memo) + fib(number - 2 ,memo)
     return memo[number]
   end
 end
end



puts fib(5)
puts fib(10)
puts fib(20)
puts fib(30)
puts fib(40)
puts fib(100)
puts fib(1000)

