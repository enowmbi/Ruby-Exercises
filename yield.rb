puts "I'm creating my own loop in ruby"
#yield yield control of the code block back to the calling method, so it does it again and again  
def my_loop
 yield while true
end

puts "I've started my loop"
my_loop{puts "Jesus is Lord !"}
puts "I've ended the loop"
