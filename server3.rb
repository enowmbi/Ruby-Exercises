puts "this is a multithreaded time server that serves multiple concurrent client requests"

require 'socket'
server = TCPServer.new(3999)

while(conn = server.accept)

 Thread.new(conn) do |c|
 c.puts "please enter your name"
 name = c.gets.chomp
 c.puts "The date is: #{`date`}"
 c.puts "#{name}, we are closing your connection !"
 c.close 
 end 

end




