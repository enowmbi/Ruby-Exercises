def fibonacci(number,array =[])
 if n == 0 || n == 1
    return 1
else
 array[n] ||= fibonacci(n-2) + fibonacci(n-1) 
 return array[n]
end
end

puts fibonacci(40)
