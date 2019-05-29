puts "working with comparism operator - spaceship operator"

class Bid 
include Comparable

attr_accessor :estimate

def <=>(other_bid)
 if self.estimate < other_bid.estimate
	-1
 elsif self.estimate > other_bid.estimate
 1
 else
  0
 end
end
end

b = Bid.new
b.estimate = 100
c = Bid.new
c.estimate = 120

puts "bid b won" if (b<=>c)==-1
puts "bid c won" if (b<=>c)==1
puts "bids are thesame" if (b<=>c)== 0 

p b.methods.sort
