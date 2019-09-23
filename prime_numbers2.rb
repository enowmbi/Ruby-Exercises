# Initialize our counter
i = 1
prime_numbers =[]
max = 500
# i: [0, max]
while (i <= max)
# Initialize prime flag
prime_flag = true

j = 2
# Test divisibility of i from [0, i/2]
while (j <= i / 2)
# puts " i ==> " + i.to_s + " j ==> " + j.to_s
if (i % j == 0)
prime_flag = false
# break
end
j = j + 1
end
# We found a prime!
if prime_flag
#puts "Prime ==> " + i.to_s
prime_numbers << i
end
# Increment the counter
i += 1
end

p "Prime numbers from 1 to #{max} are #{prime_numbers}"
