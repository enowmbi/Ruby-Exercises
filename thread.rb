puts "Trying to read in some files..."
t = Thread.new do
(2..3).each do |n|
begin
File.open("loops#{n}.rb") do |f|
test << f.readlines
end
rescue Errno::ENOENT
puts "Message from thread: Failed on n=#{n}"
Thread.exit
end
end
end
t.join
puts "Finished!"
