puts "Working with to_ary"

class Person
attr_accessor :name,:age,:email

def to_ary
[name,age,email]
end
end

p = Person.new
p.name = "Enow Mbi"
p.age = 39
p.email = "benowmbi@gmail.com"

persons = []
persons.concat(p)
p persons

