begin
file = File.open('loops3.rb'))
line = file.gets
puts line
end
rescue => e
p e

puts "See the error message below:"
puts "============================"
p e.message 

ensure
file.close
end


