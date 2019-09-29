#linear search
#start comparing values for a match from the first element of the list to the where the match is found or to the end of the list

def linear_search(list,search_value)

 list.each_with_index do |value,index|

    return "#{search_value} found at position #{index + 1} of list" if value == search_value

 end

    return "#{search_value} not found in list"

end






puts linear_search([*('a'..'z')],'x')
puts linear_search([*('a'..'z')],'b')
puts linear_search([*('a'..'z')],'w')
puts linear_search([*('a'..'z')],'j')









