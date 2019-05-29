class Car
 def self.method_missing(arg) 
    puts "#{self}.#{arg} has not been defined"
 end

 def respond_to_missing
    puts "yes I respond to missing"
 end
end

 puts "check if the class responds to method_missing"
 p Car.respond_to?(:method_missing)
 c = Car.new
 p c.respond_to?(:method_missing)
 p Car.singleton_class
 Car.bange
 