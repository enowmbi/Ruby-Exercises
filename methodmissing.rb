module Motor
def self.included(myclass)
 puts "I've just been included in class: #{myclass}"
end

def self.extended(obj)
 puts "object #{self} is being extended by #{obj}"
end

def abe
 puts "abe"
end

obj = Object.new
class << obj
 include Motor
end

class Car
 attr_accessor :make,:model,:year
 errors = []
 def initialize(make,model,year) 
  @make = make
  @year = year
  @model = model
 end

def self.method_added(method)
 puts "an instance method: #{method} was added"
end

def self.singleton_method_added(method)
 puts " a singleton method: #{method} was added"
end

def self.const_missing(const)
 puts "constant A is missing. setting it to 2"
 const_set(const,2)
end



def self.inherited(subclass)
 puts "#{self} has been inherited(subclassed) by #{subclass}"
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
 #puts self.instance_methods.sort
end

class Heavy < Motor::Car
 errors =[]
end


c = Motor::Car.new("Toyota","Landcruiser",2018)
puts c.to_s
puts Motor::Car::A
puts Motor::Car::A
 
my = Object.new
my.extend(Motor)
 
