class Car
 @@count = 0
 @count 

def initialize(make,model,year)
 @make = make
 @model = model
 @year = year
  mint
end

def mint 
  #@count  += 1  #issues an error because it's not accessible
 puts "I've just been called"
  @@count = 2
end
@@count +=1
p "this is the @@count #{@@count}"

end


puts "class instance_variables before car instance is created"
 p Car.instance_variables

puts "class variables before car instance is created"
 p Car.class_variables

c = Car.new("Toyota","landcruiser",2019)

 puts "class instance_variables after car instance is created"
 p Car.instance_variables

puts "class variables after car instance is created"
 p Car.class_variables









