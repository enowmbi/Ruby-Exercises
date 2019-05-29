puts "testing opening classes and methods"


def open_a_class(a_class)
    a_class.class_eval do 
   def bange     
     puts "Bange !!!!"
   end
  end
end

#def open_a_class2(a_class)
    class << Integer 
   def bange     
     puts "Bange !!!!"
   end
  end
#end



#open_a_class(String)
#"hey hey".bange

#open_a_class2(Integer)
1.bange
