
class Person
attr_accessor :name
def say_my_name
 puts "my name from the instance method is: #{name}" 
end

class << self
def say_my_name
 puts "my name from the singleton method is:#{name}"
end
end
end

p = Person.new
p.name = "Enow"

p.say_my_name
Person.say_my_name

class Persona < Person
 def to_s
   puts "calling the to_s method"
 end
end

pd = Persona.new
pd.say_my_name

puts Person.singleton_methods
puts Persona.singleton_methods
