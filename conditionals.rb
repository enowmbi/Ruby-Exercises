request = "please enter the time of the day from 0-23 "
print request
number = gets.to_i

case number
when (0...12)
 puts "Good morning"
 exit
when (12...17)
puts "Good afternoon" 
exit
when (17...23)
puts "Good evening"
exit
else
puts "Wrong entry"
end




