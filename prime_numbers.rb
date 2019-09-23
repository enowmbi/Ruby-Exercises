require 'benchmark'

result = Benchmark.measure do 
x = 1
prime =[]
max = 500

until x > max
  if x == 1 || x == 2 || x == 3 || x == 5 || x == 7
   prime << x
  elsif x % 2 > 0 && x % 3 > 0 && x % 5 > 0 && x % 7 > 0
     prime << x
  end  
  x+=1

end

p "Prime numbers from 1 to #{max} are #{prime}"

end
p result
