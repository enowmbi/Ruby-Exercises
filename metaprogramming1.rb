class Greeting
attr_accessor :text
errors = []
 def initialize(text)
   self.text = text
 end
 
 def welcome
  puts "You are welcome #{@text}"
end

end

#create an instance of the Greeting class
 
greeting = Greeting.new("Enow Mbi")
greeting.welcome

puts "greeting object is a #{greeting.class}"

puts "displaying instance methods:"
puts greeting.class.instance_methods(false)
#puts greeting.class.instance_methods
puts "local variables: #{local_variables}" 
puts "global variables: #{global_variables}"

puts "value of instance variable: #{greeting.text}"

 

