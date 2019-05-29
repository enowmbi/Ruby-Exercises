require 'socket'

s = TCPServer.new(3999)
conn = s.accept

conn.puts "This server shows you the time"
conn.puts `date`
conn.puts "Done"
conn.close
