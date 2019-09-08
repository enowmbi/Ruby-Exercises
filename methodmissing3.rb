class Car
 def self.method_missing(my_method,*args) 
    puts " you called #{self}.#{my_method} with the following arguments #{args}"
 end

 def respond_to_missing?(my_method,*args)
   puts " respond_to_missing? called #{self}.#{my_method} with the following arguments #{args}"
end
end

 puts "check if the class responds to method_missing"
 p Car.respond_to?(:method_missing)
 c = Car.new
 p "responding to method_missing:- #{c.respond_to?(:method_missing)}"
 p c.methods.sort
 c.bange
 p c.method(:bange)
 