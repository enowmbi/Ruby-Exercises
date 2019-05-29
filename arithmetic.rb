puts "creating my own arithmetic class"

class Arithmetic
  def +(*a)
   total = 0
   puts a.sum   
  end
end


a = Arithmetic.new
count = a.+(1,2,3,4,5)
puts count.to_s
