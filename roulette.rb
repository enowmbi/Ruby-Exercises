class Roulette
def method_missing(name, *args)
person = name.to_s.capitalize
super unless %w(Frank Bill Bob).include? person
number = 0
3.times do
number = rand(10) + 1
puts "#{number}..."
end
"#{person} got a #{number}"
end
end
#You can use the Roulette like this:
number_of = Roulette.new
puts number_of.bobs
puts number_of.frank
