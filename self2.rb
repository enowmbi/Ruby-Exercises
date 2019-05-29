puts "Testing self"


puts "1 - #{self} - outside of class"

def old
   puts "1b - #{self} - outside class but inside a method "
end

class Car 
 puts "2 - #{self} - inside of class but not in a method"
 
 attr_accessor :make,:model,:year

 def initialize(make,model,year)
  @make = make
  @model = model
  @year = year
  puts "3 - #{self} - inside a instance method"
 end

def self.mycar
   puts "4 - #{self} - inside a singleton method "
end

def to_s
end

end

old
c = Car.new("Toyota","Landcruiser",2018)


