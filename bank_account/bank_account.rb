class BankAccount

  @@number_of_accounts_created = 0

  attr_reader :account_number,:saving_balance,:checking_balance,:account_type
  attr_accessor :account_owner

  def initialize(account_owner,account_type,options ={})
    @saving_balance = 0
    @checking_balance = 0
    @account_type = account_type
    @account_owner = account_owner
    @@number_of_accounts_created +=1
  end

  def deposit(account_type,amount = 0)
    amount = amount.to_f.abs
    if (account_type == "saving")
      @saving_balance += amount
    elsif (account_type == "checking")
      @checking_balance += amount
    else
      puts "Account type does not exist"
    end
  end

  def withdraw(account_type,amount = 0)
    # amount = amount.to_f.abs
    if account_type.downcase == "checking"
      if @checking_balance >= amount
        @checking_balance -= amount  
      else
        puts "Not enough funds in checking acount"
      end
    elsif account_type.downcase == "saving"
      if @saving_balance >= amount
        @saving_balance -= amount
      else
        puts "Not enough funds in the saving account"
      end
    else
      puts "Account type does not exist"
    end
  end

  def get_account_information
    balance = 0
    if  @account_type.downcase == "saving" 
    balance = @saving_balance 
    elsif @account_type.downcase == "checking"
     balance = @checking_balance
    else
      "Account type does not exist"
    end
    p "Account Owner: #{@account_owner}, Account Type: #{@account_type}, Account Balance: #{balance}"
  end

  def self.get_number_of_accounts_created
    @@number_of_accounts_created
  end

  private
  def get_account_number(account_type)
    if account_type.downcase == "checking"
      @account_number = rand(10 **13)
    elsif account_type.downcase =="saving"
      @account_number = rand(10 **13)
    else
      puts "Account type (#{account_type}) doesn't exist"
    end
  end

end


ba = BankAccount.new("John Doe","checking")
ba.get_account_information
ba2 = BankAccount.new("Jane Doe","saving")
ba2.get_account_information
p "Number of bank accounts created: #{BankAccount.get_number_of_accounts_created}"
ba.deposit("checking",1000)
ba.deposit("checking",500)
ba2.deposit("saving",5000)
ba2.deposit("saving",150)
ba.get_account_information
ba2.get_account_information
ba.withdraw("checking",1750)
ba2.withdraw("saving",700)
ba.get_account_information
ba2.get_account_information
