require 'minitest'

class Car
 define_method :my_method do |args|
 puts args * 3 
 end 
end

assert



c = Car.new
c.my_method 2

assert_equals 6, c.my_method(2)
