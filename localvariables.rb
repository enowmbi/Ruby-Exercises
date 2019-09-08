Car = Class.new do 
 @count = 0 
#define_method make do 
 # @count = @count + 1
#end


#define_method to_s do 
 #puts @count.to_s
#end

end

#c = Car.new
#c.make
