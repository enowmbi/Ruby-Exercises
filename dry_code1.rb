class User
  attr_accessor :valid,:balance,:authorized

  def user_balance
    if account_valid?
      puts balance
    else
      warning_account_not_valid
    end
  end

  def user_profile
    if account_valid?  
    puts "Profile information goes here !"
    else
      warning_account_not_valid
    end
  end

  def add_funds(amount)
    if account_valid?
     balance = balance + amount
    else
      warning_account_not_valid
    end
  end

  def account_valid
    if valid && authorized && balance > 0
      return true
    else
      false
    end
  end

  def warning_account_not_valid
      puts "Not a valid Account" 
  end
end
