puts "implementing my each"

class Array
def my_each
c = 0
until c == size
yield(self[c]) 
c = c+1
end
end

end

[1,2,3,4,5].my_each do |item|
puts item
end
