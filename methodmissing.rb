class Car
  attr_accessor :make,:model,:year
  def initialize(make,model,year)
     @make = make,@model =  model,@year = year
  end

  def method_missing(method) 
  end

   def respond_to_missing?(method,*args)
    puts "#{self}.#{__method__}, with /n"
  end
end



c = Car.new("Toyota","Landcruiser",2019)
c.slap
p c.respond_to?(:slap)
p c.methods.sort
