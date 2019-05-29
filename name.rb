class Name
attr_accessor :first_name,:middle_name,:last_name

def whole_name
 n = first_name + " "
 n << "#{middle_name} " unless middle_name==""
 n <<  last_name
end
end

 myname = Name.new
 myname.first_name = "Enow"
 myname.last_name = "Mbi"
 puts "printing name without middle name"
 puts myname.whole_name

myname.middle_name = 'Bessem'

puts "printing name with middle name"
puts myname.whole_name
