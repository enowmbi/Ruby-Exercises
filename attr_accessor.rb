class Car
     attr_accessor1 :make,:model,:year

   def attr_accessor1(*args)
    args.each do |arg|
       define_method "#{arg}".to_sym do 
         instance_variable_get("@#{arg}")  
       end
    
       define_method "#{arg}=".to_sym do |param|
         instance_variable_set("@#{arg}",param)
       end
    end
   end
    def self.inherited(subclass)
      puts "#{subclass} has inherited #{self}"
    end
end

#class Car < A
#attr_accessor1 :make,:model,:year
#end

car = Car.new
car.methods.sort
car.make = "Toyota"
car.model  "Landcruiser"
car.year =2018

p "my car is a #{car.year} #{car.make} #{car.model}"


