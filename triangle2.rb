puts "printing an isoseles triangle"

(1..25).each do |item|
 line = '*' * item
 puts line.center(25,' ')
end

puts "printing an isoseles triangle"
(1..25).each {|item| puts ('*' * item).center(25,' ') } 
