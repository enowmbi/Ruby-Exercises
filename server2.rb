require 'socket'

s = TCPServer.new(3999)
while true
conn = s.accept
conn.puts "please enter your name"
name = conn.gets.chomp()
conn.puts "#{name}, the time is: " +  `date`
conn.close
end
