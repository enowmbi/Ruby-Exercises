#linear search

def linear_search(array,search_value)

 array.each_with_index do |value,index|

    return "#{search_value} found at position #{index + 1} of array" if value == search_value

 end

    return "#{search_value} not found in array"

end






puts linear_search([*('a'..'z')],'x')
puts linear_search([*('a'..'z')],'b')
puts linear_search([*('a'..'z')],'w')
puts linear_search([*('a'..'z')],'j')









