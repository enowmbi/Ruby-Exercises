require 'benchmark'

result = Benchmark.measure do 
  x = 1
  prime =[]
  max = 20
  y = 1
  until x > max
    while y < max/2
      #if x == 1 || x == 2 || x == 3 || x == 5 || x == 7
      if x % y !=0
        puts x is prime prime << x
      elsif x % 2 > 0 && x % 3 > 0 && x % 5 > 0 && x % 7 > 0
        prime << x
      end  
      y+=1
    end

    x+=1
  end
  p "Prime numbers from 1 to #{max} are #{prime}"

end
p result
