=begin
 given an array [] we want to search sequentially among all the elements for value
 depending on whether we want multiple results if there are multiple occurences 
=end

def linear_search(array =[],value)
  return "Found value" if array.include?(value)
  return "Did not find value"
end



array = [*(1..20)] #using splat operator
puts linear_search(array,21)
