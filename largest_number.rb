
def self.largest_number arr 
  largest = 0
   arr.each do |num|
     largest = num if num > largest
   end
   puts "The largest number is: #{largest}"
end

def self.lowest_number  arr
  lowest = arr.max
   arr.each do |num|
    lowest = num if num < lowest
   end
puts "The lowest number is: #{lowest}"
end


self.largest_number([23,45,65,20,99])
self.lowest_number([0,23,45,65,20,99])
