def fibonacci(n)
f = Array.new(40)
 if n == 0 || n == 1
  f[n] = n
 end

 f[n] = fibonacci(n-1) + fibonacci(n-2)
 p f[n]
 return f[n]
end


fibonacci(40)

