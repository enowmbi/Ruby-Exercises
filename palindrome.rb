#given a string "string"
#if string reads thesame or characters are arranged or appear in same sequence as its reverse (when fliped or read from last to first character)ways #then it's a palendrome


#string = "radar"

#if string == reverse(string)
 #return true
#else
#return false


def palindrome?(string)
 string == string.reverse ? true : false
end 


puts "This app checks if the string input is a palindrome".center(100,"*")

input = ""
until input.downcase == 'x'
 if input.length > 1
  if palindrome?(input)
   puts "#{input} is a palindrome"
  else
  puts "#{input} is not a palindrome"
  end
 end  
puts ""
puts "please enter a string with atleast two(2) characters.Spaces and punctuations matter! Press 'x' to quit at any time"

input = gets.chomp

end
puts "Thank you for using this app. Bye".center(100,"*")

