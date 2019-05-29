puts " we are about to run some code now"
class Car
SPEED = "100KM/H"
 def initialize
  puts "This is self in the initialize: #{self}"
 end
 def car_details
 puts "this is car details self: #{self}"
 end

def self.car_details
puts "this is a class method"
puts "this is the self in class method: #{self}"
end
 puts " this is a self outside of method but in class: #{self}"
end

Car.car_details

car = Car.new

car.car_details

puts "this is the default speed: #{Car::SPEED}"
