module Accessor
  def my_attr_accessor name
    ivar_name = "@#{name}"
    #getter
    define_method(name) do 
      instance_variable_get(ivar_name)
    end

    #setter
    define_method("#{name}=") do |value|
      instance_variable_set(ivar_name,value)
    end
  end
end


class Thing
  extend Accessor
  attr_accessor :name
  attr_accessor :address
end

th = Thing.new
th.name ="Enow Mbi"
th.address ="Bomaka,Buea"
puts th.name
puts th.address

p th.methods

