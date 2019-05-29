puts "printing a right angle triangle"

(1..10).each do |item|
 puts '*' * item
end

#we can even do it in one line 
puts "printing a right angle triangle using one-liner code"
(1..10).each {|item| puts '*' * item }

puts "printing another triangle"
(1..10).each {|item| puts ('*' * item).rjust(12,' ') }


