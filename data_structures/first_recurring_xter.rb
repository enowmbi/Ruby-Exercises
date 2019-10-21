=begin 
 given a series of xters - write an algorithm that returns the first recurring character
 solution
 use a hash table 
=end

def first_recurring_xter(string)
  sequence = {}
  string.each_char do |char|
   if sequence[char] 
     return "The first recurrent character in the string #{string} is #{char}"
   else
     sequence[char] = char
   end
  end

   return "No recurrent character found in the string #{string}!"
end


puts first_recurring_xter("ABBCD")
puts "============================"
puts first_recurring_xter("ABCA")
puts "============================"
puts first_recurring_xter("BCABA")
puts "============================"
puts first_recurring_xter("ABC")

