puts "implementing times"

class Arithmetic
 def times string,mycount
  count = 0
  while count < mycount   
  yield string if block_given?
  count = count + 1
  end
 end
end



math = Arithmetic.new 

math.times("Jesus is Lord",5) {|string| puts string}




