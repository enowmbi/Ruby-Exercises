class User
  attr_accessor :valid,:balance,:authorized

  def user_balance
    if valid && authorized && balance > 0
      puts balance
    else
      puts "Not a valid Account" 
    end
  end

  def user_profile
    if valid && authorized && balance > 0
      puts "Profile information goes here !"
    else
      puts "Not a valid Account" 
    end
  end

  def add_funds(amount)
    if valid && authorized && balance > 0
     balance = balance + amount
    else
      puts "Not a valid Account" 
    end
  end

end
