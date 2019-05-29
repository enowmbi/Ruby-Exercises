class Couple
  def marriage
 end
def self.preferred_positions
  p %w(Doggy Cowgirl Mish)
end
def method_missing(method) 
  puts "#{method} method is missing" 
end

end

puts Couple.respond_to?(:preferred_positions)

c = Couple.new
puts c.respond_to?(:method_missing)
c.send(:preferred_positions)
