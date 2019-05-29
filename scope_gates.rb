class Car
 @cust = "Enow"
 pr = Proc.new{|cust| puts cust}

 def name 
   puts caller.take(5)
 end


 end

 c = Car.new
 c.name

