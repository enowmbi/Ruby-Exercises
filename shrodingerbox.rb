class SchrodingerBox
    @insta_var ="ueyey"
 def peek!
  if rand > 0.5
     @cat = "alive"
  else
    @cat = "dead"
 end
end

end

sb = SchrodingerBox.new
sb.peek!
p sb.instance_variables
p sb.instance_variable_get(:@cat)
p "==============================="
sb2 = SchrodingerBox.new
p sb2.instance_variables

p "======================"
p SchrodingerBox.instance_variables