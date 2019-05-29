require_relative "parent"

class Person
  include Parent
  attr_accessor :name,:age,:height,:weight

  def initialize(name,age,height,weight)
    @name = name
    @age = age
    @height = height
    @weight = weight  
  end

  def who_am_i
    puts "My name is #{@name} I am a #{@age} years old. #{@height}m tall and weigh about #{@weight}kg"
  end

end

p = Person.new("Enow Mbi",39,1.78,75)
p.who_am_i
p.children
p.married?



