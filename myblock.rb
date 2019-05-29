class TestBlock
v1 = "1"
puts local_variables
 def my_method
  puts local_variables
  puts "starting block"
  x = " Hello"
  yield(x) if block_given?
  puts "done with block"
 end
end

 x ="Good bye"
 t = TestBlock.new
 t.my_method{|x| puts x + " world" ;puts local_variables} 
 t.my_method() 


 
