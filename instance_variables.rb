class Car

def car_details
 @car = "Toyota"
puts "This is from my instance variable #{@car}"
puts "this instance variable belongs to #{self}"
puts @car
end
@car = "Benz"
puts "this instance variable belongs to : #{self}, #{@car}"
end



