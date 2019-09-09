# get numbers - first and last numbers 
# first number must be lower than last number
# iterate through and add them
# Algorithm : Sum range of numbers
# array <- range_of_numbers
# sum <- 0
# Repeat 4 to 5 until done
# Write : sum
#
require 'benchmark'

def sum_numbers(array=[])
  report =Benchmark.measure do 
    sum = 0
    array.each do |item|
      sum = sum + item
    end
    puts "Total: #{sum}"
  end
  puts report
end

array = [* 1..10000000000000000]
sum_numbers(array)

