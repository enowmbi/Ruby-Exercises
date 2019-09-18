class BankAccount

  @@number_of_accounts_created = 0

  attr_reader :account_number,:saving_balance,:checking_balance
  attr_accessor :account_owner

  def initialize(account_owner,account_type,options ={})
    @saving_balance = 0
    @checking_balance = 0
    @account_type = account_type
    @account_owner = account_owner
    @@number_of_accounts_created +=1
  end

  def deposit(account_type,amount = 0)
    if (account_type == "saving")
      @saving_balance += amount
    elsif (account_type == "checking")
      @checking_balance += amount
    else
      puts "Account type does not exist"
    end
  end

  def withdraw(account_type,amount = 0)
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
    p "------------------------------------"
    p "Account Owner:  #{@account_owner}"
    p "Account Type:  #{@account_type}"
    if  @account_type.downcase == "saving" 
      p "Account Balance: #{@saving_balance}" 
    elsif @account_type.downcase == "checking"
      p "Account Balance: #{@checking_balance}"
    else
      p "Account type does not exist"
    end
  end

  def self.get_number_of_accounts_created
    p "============================================="  
    p "Total number of accounts created: #{@@number_of_accounts_created} "
    p "============================================="
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
BankAccount.get_number_of_accounts_created
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
