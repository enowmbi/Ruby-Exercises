require 'benchmark.rb'

a = Benchmark.measure do 
    1000000.times do 
        "Jesus is Lord"
    end
end

puts a