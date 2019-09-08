#note the structure of the dsl
#Construction.define :user do 
#first_name "Michael"
#last_name "Jackson"
#email "michael_jackson@gmail.com"
#end


class Construction 
 attr_reader :attribs
 def self.define(&block)
   obj = new
   obj.instance_eval(&block)
   obj
end

 def initialize
  attribs = []
 end

 def attrib
 



end
 






