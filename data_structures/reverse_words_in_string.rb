=begin 
Given a string of words, write an algorithm and a program in Ruby that reverses the string of characters but not the characters of each word e.g. "
The quick brown fox jumped over the sleeping lazy dog" becomes "dog lazy sleeping the over jumped fox brown quick The"

Algorithm 1 - using stack - time complexity = O(n), space complexity = extra space taken for the array of words,stack
take string and split it into and array of words
create an empty stack  
iterate through the array of words and add them to a stack (we could use an array for this since it supports pop and push)
until stack.is_empty?
  print " #{stack.pop} "
end

algorithm 2 -using loop - time complexity = O(n) where n is length of array of words,space complexity = space taken by the array of words
take string and split into an array of words
iterate through the array of words from the highest index to the lowest and print the string at each position
 for (i= array_of_words.length -1;i = 0; i--)
   {
    print " #{ array_of_words[i] } "
   } 


=end

 def reverse_the_words_in_a_string_using_stack(string)
    array_of_words = string.split(/ /)	
    
    stack_of_words = []

    array_of_words.each do |word|
      stack_of_words.push(word)
    end

     until stack_of_words.empty?
       print " #{stack_of_words.pop}" 
     end

 end


 def reverse_the_words_in_a_string_using_loop(string)
    array_of_words = string.split(/ /)
    
    (array_of_words.length-1).downto(0) do |i| 
      print " #{array_of_words[i]}"
    end

 end



string = "The quick brown fox jumped over the sleeping lazy dog"

puts reverse_the_words_in_a_string_using_stack(string)

puts reverse_the_words_in_a_string_using_loop(string) 
