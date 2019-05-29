puts "validating email: janedoe@gmail.com "
/[A-Za-z0-9]+.?_?[a-zA-Z0-9]+@[a-z0-9]+\.[a-z]{2,3}/.match("jane_doe.enow@gmail.me")
/[A-Za-z]\w+.?[a-zA-Z]\w+@\w+\.\w+/.match("jane.doe@gmail.com") # this will allow _ at the end of the name lile jane_@gmail.com


puts "validating Cameroon phone number (+237) 677-941-484"
/((\(\+\d{3}\))\s(\d{3}-\d{3}-\d{3}))/.match("(+237) 677-941-484")



puts "look behind: only counted as match if preceeded by a particular string"
/(?<=David) Black/.match("David Black") # Black is counted as a match if it's preceeded by David and space

puts "not look behind"
/(?<!David) Black/.match("Johny Black")  # Black is counted as a match only if it's not preceeded by David


# + => one or more
# * => zero or more
# . => any single character except newline 
# [a-z] => range 
# {}=> occurence or frequency {0,} => * , {1,} => +,
# \ => escape character 
# \x => escapes spaces
# m => this modifier spans accross multiple lines - includes newline 
# i => case insensitive matches
# ^ => start of line ends at new line character
# A => beginning of string
# Z => end of string including new line
# z => end of string excluding new line at the end"
# $ => end of line
# b => word boundaries 
# w+ => word  => made up of letters,numbers and underscore you can make it use uppercase [A-Z]\w+
# "string".scan(/regexp/)  # can scan for matches inside string and returns and array 

#using scan - using regex as an attribute of the string scan method
str = "Leopold Auer was the teacher of Jascha Heifetz."
violinists = str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/)  # get uppercase word separated by space which
[["Leopold", "Auer"], ["Jascha", "Heifetz"]]

>> ["USA", "UK", "France", "Germany"].grep(/[a-z]/) {|c| c.upcase }

str = "first_name:Enow;last_name:Bessem"
hash = Hash[*str.split(/=|;/)]  # creates a hash with keys = first_name and last_name and corresponding values




Ruby => rspec 
Rails => rspec 
Ruby gems,
