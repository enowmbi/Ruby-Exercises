puts "self outside of class declaration - #{self}"

class Thing
def any_method
 puts "self inside the instance method of class -#{self}"
end
def self.any_method
 puts "self inside singleton method -#{self}"
end
puts "self inside class declaration but not in any method - #{self}"
end

th = Thing.new
th.any_method
Thing.any_method
puts th.object_id
