var = "The top-level var"
MyCar = Class.new do 
 puts "#{var} in the class"
 puts local_variables
  define_method :my_method do |xx|
   puts "#{var} in the method"
  puts local_variables
  end

end

 c = MyCar.new
 c.my_method("Enow")




