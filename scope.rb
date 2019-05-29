puts "#{self} # this is self for top level outside method"
def start
  puts "#{self} # this is self for top level method"
end
 start
class Car
  puts "#{self} # this is self inside Car but not in a method"
  def initialize
    puts "#{self} #  this is self inside initialize"
  end
  def make 
    puts "#{self} # this is self inside a method in class Car"
      def year
        puts "#{self} # this is self inside a method if a method"
      end
  end

end

c = Car.new 
puts "methods before calling make"
p Car.instance_methods.sort
puts "class / singleton methods before calling make"
p Car.singleton_methods.sort
c.make
puts "methods after calling make"
p Car.instance_methods.sort
puts "class / singleton methods after calling make"
p Car.singleton_methods.sort
c.year



