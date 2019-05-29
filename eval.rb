puts "working on eval"
String.class_exec do
  def bange
   yield self if block_given?
  end
end


p "Enow".bange{|str| str.upcase!}
p String.instance_methods.sort
puts "methods in string instance".center(25,'=')
p "Enow".methods.sort
