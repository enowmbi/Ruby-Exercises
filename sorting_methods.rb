puts "This method displays all non-bang methods of strings"

str = "Jesus is Lord"
#get all the methods of string
all_methods = str.methods.sort

#get all bang methods
bang_methods = str.methods.grep(/.!/)

#get non-bang counterparts of bang methods 

non_bang_counterparts = bang_methods.reject do |bang_method|
 all_methods.include?bang_method[0..-2].to_sym
end

p all_methods
p bang_methods
p non_bang_counterparts

 
