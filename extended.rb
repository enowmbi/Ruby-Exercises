module Motor
def self.included(myclass)
 puts "I've just been included in class: #{myclass}"
end

class Car
 attr_accessor :make,:model,:year
 errors = []
 def initialize(make,model,year) 
  @make = make
  @year = year
  @model = model
 end

def method_missing(method)
  errors << method
  puts "the method #{method} is meeting"
end

 def to_s
   "I'm a #{year} #{make} #{model}"
 end

end
end

class Truck
 include Motor
end

c = Motor::Car.new("Toyota","Landcruiser",2018)
puts c.to_s

 
