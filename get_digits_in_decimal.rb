# given a natural number n
# create an empty list 
# while natural number > 0
# get n % 10
# add value of modulo to list
# n = n / 10
#return list in reverse order

def find_digits_in_decimal(n=0,base = 10)
  remainders = []
  while(n > 0)
    remainders << n % base
    n = n / base
  end
  return remainders.reverse.to_s.split(',').join

end


p find_digits_in_decimal(0,2)

