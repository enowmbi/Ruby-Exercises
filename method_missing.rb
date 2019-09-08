class Animal
  def walk
    puts "i'm walking"
  end
 def method_missing method
      if method.to_s == "fly"
         puts "animals can't fly"
      else
         super
      end
 end

 def respond_to_missing method
   if method.to_s == "fly"
     puts "animals can't fly"
   else
       super
   end
 end
end

cow = Animal.new
cow.walk
cow.fly
p "responding to walk: #{cow.respond_to?(:walk)}"
p "responding to fly: #{cow.respond_to?(:fly)}"

p cow.methods.sort
cow.swim

