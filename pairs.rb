puts "Display a pair of matching numbers".center(25,'*')

class Pair

 def matching_pair(numbers,expected)
 @match = []; @expected_num = expected; @numbers = numbers
 
  numbers.each do |num|
   if numbers.include?(expected-num)
     @match << num
   end
  end

  p "The pair #{@match} adds up to #{@expected_num}" if @match.size > 1
  puts "No matching pair was found in the array #{numbers} that adds up to #{@expected_num}" if @match.size < 2
  puts "thanks".center(25,'*')
 end

end


pair = Pair.new

#pair.matching_pair([1,2,3,4],8)
pair.matching_pair([1,2,9,4],8)




 
  
