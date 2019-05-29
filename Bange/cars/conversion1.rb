puts "Working with to_str method"
class Person
attr_accessor :name
def to_str
 name
end
end

p = Person.new
p.name = "Enow Mbi"
puts p.name
puts p.to_str

