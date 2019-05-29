module Mathematics 
     extend self
   def fibonacci(n1,n2)
      puts "this is fibonacci"
   end
   def factorial(n)
  puts "this is factorial"
   end
end


class Math1 
   include Mathematics

   def my_method
      puts "this is my class's instance method"
   end
   def self.my_singleton_method
     puts "this is my class's singleton method"
   end
end

puts "displaying instance methods".center(32,'=')

p Math1.instance_methods.sort
puts "displaying class methods".center(32,'=')
p Math1.singleton_methods(false).sort
p Mathematics.singleton_methods

obj = Object.new
obj.extend(Mathematics)
puts "displaying singleton methods for obj"
p obj.singleton_methods
puts "displaying instance methods for obj"
p obj.instance_methods
 
