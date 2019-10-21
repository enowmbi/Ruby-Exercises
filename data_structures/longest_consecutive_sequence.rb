=begin
use a hash to keep track of key for the hash as xter and count as value
keep variables that hold count of sequence and character so that we don't need to sort through hash - these operations are simple operations and thus we maintain our O(1) - constant time for our operations 
=end

def longest_consecutive_sequence(string)

  sequence = {}
  max_count = 0
  max_character = ''
  previous_character = ''
  string.each_char do |char|
    if sequence.has_key?(char)
      count = sequence[char] + 1
      sequence[char] = count  if char == previous_character
      if max_count < count
        max_count = count
        max_character = char
      end
    else
      sequence[char] = 1
    end
    previous_character = char
  end
  if max_count > 1
    puts "Longest consecutive sequence is of character is #{max_character} is #{max_count}" 
  else
    puts "No consecutive sequence of characters !" 
  end
end


longest_consecutive_sequence('ABBCCCCCDEFGHA')
longest_consecutive_sequence('AABCDDBBBEA')
longest_consecutive_sequence('ABCDE')

