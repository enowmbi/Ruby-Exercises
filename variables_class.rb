class Student
 def initialize
   @@count +=1
 end
 def self.count
   @@count
 end
 def destroy
 @@count -=1 
 end

end

Enow = Student.new
puts Student.count
