ticket = Object.new

def ticket.venue
 "Buea Town Green"
end

def ticket.date
 "2019-04-30"
end

def ticket.author
 "Molua Wem NJOH"
end

def ticket.price
  5.50
end

def ticket.is_available?
 true
end

def ticket.summary
val = ticket.is_available? ? "Registration on-going.You can get your ticket #{ticket.price} for #{ticket.event} at #{ticket.venue} on #{ticket.date} by #{ticket.author}" : "tickets are not available"
puts "this is going to print "
puts val
puts "finished printing"
end


