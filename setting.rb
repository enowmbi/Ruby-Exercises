class Setting
 def initialize 

 end
 
 def interest_settings
  puts "interest rate settings"
 end
 def account_settings
  puts "bank account creation setting"
 end
 def withdrawal_settings
  puts "withdrawal settings"
 end
 def deposit_settings
  puts "deposit settings"
 end
 def chart_settings
  puts "chart of accounts"
 end
end


class BankAccount
 def initialize 
 settings = []   
 s = Setting.new
 settings = Setting.instance_methods(false).grep(/settings$/){puts $1}   
 p settings
 end
end 

ba = BankAccount.new




 

