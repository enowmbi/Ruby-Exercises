class Man
  @last_name = "Mbanga"
 @first_name = "Pungo"
  def method_details
    m = method(__method__)
    puts "Name of Method: #{m.name}"
    puts "Owner of method: #{m.owner}"
    puts "Receiver: #{m.receiver}"
    puts "source_location: #{m.source_location}"
    puts "Super_method: #{m.super_method}"
  end 
  class << self
    @middle_name = "Enow"
  end
end


m = Man.new
m.method_details
Man.class_eval do 
 puts "these are my instance variables #{self.instance_variables}"
 puts "these are the class_Variables #{self.class_variables}"
end
Man.instance_eval do 
  puts "#{self.methods.sort}"
end
