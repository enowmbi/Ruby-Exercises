module StringExtensions
refine String do
def ozigizaga
"esrever"
end
end
end
module StringStuff
using StringExtensions
puts String.methods.grep(/ozi/)
puts "my_string".ozigizaga
# => "esrever"
puts "my_string".ozigizaga
puts String.methods.grep(/ozi/)
end
#puts "my_string".ozigizaga
# => "gnirts_ym"
