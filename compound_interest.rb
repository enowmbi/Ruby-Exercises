#algorithm
#ask for principal(amount deposited)
#receive amount deposited and store in amount_deposited variable
#prompt for interest rate and store it in interest_rate
#prompt for duration and store it in duration 
#calculate compound interest based on period given
#display the interest for each period plus the principal used as the basis 
#display the cummulative interest for the entire period

#TODO require 'active_support'  # add support for rails helpers - for human readable helpers and percentages etc

p "============================="
p "Compound Interest Calculator"
p "============================="


p "Please enter principal amount (deposit amount)"
amount_deposited = gets.chomp.to_f

until amount_deposited > 0.0
 p "Please enter a valid principal(deposit amount)"
 amount_deposited = gets.chomp.to_f
end
p "Your deposit amount is: #{amount_deposited}"


 
p "Please enter interest rate"
interest_rate = gets.chomp.to_f

until interest_rate > 0.0
p "Please enter a valid interest rate"
interest_rate = gets.chomp.to_f
end

p "Your interest rate is: #{interest_rate} %"

p "Please enter the duration for which the interest will be compounded"
duration = gets.chomp.to_f

until duration > 0
 p "Please enter a valid duration for the loan"
 duration = gets.chomp.to_i
end

p "Your duration for which interest will be compounded is: #{duration} years"

compounded_amount = amount_deposited

1.upto(duration) do |year_number|
p "-----"
interest = (compounded_amount * interest_rate) / 100
 p "Year #{year_number} : Intest: #{interest.round} frs based on Principal of : #{compounded_amount.round} ".ljust(100,"*")
compounded_amount = interest + compounded_amount

end

 






  




