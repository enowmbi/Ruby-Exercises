module Math
 def fibonacci
  puts "#{__method__}- Math"
end
end
module Math2
def fibonacci
puts "#{__method__} - Math2"
end
end

class Mathematics
 if(rand > 0.5)
 include Math
 include Math2
else
 include Math2
 include Math
end


 puts "#{self.ancestors}"
end

