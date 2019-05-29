class Car
  attr_accessor :make,:model,:year 
def initialize 
end

define_method name do 
 
end

def method_missing(method,*args)
  puts "missing method #{method}(#{args.join(',')})"
  puts "you also passed a block" if block_given?
  puts "creating missing method #{method}"
  
  
end
end


c = Car.new
c.jump('Toyota','year') {|x| puts x}

p c.methods.sort
p Car.instance_methods(false)
