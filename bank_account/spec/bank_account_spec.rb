require_relative '../bank_account.rb'


RSpec.describe BankAccount do 

    let!(:ba){BankAccount.new("James Bond","checking")}
  describe "validation of attributes" do 

    it "is valid with all parameters present" do
      expect{BankAccount.new("Mary Ann","saving")}.not_to raise_error
  end

    it "is invalid with one of the parameters missing" do 
       expect{BankAccount.new("Mary Joe")}.to raise_error(ArgumentError)
    end

    it "displays relevant information with #get_account_information" do 
      expect(ba.get_account_information).to eq("Account Owner: #{ba.account_owner}, Account Type: #{ba.account_type}, Account Balance: 0")
    end

    it "ensures account owner can be modified" do 
      expect{ba.account_owner ="James '007' Bond"}.to change(ba,:account_owner).from("James Bond").to("James '007' Bond")
    end

    it "ensures checking_balance is readonly" do 
      expect{ba.checking_balance = 500}.to raise_error(NoMethodError)
    end

    it "ensures saving_balance is readonly" do 
       expect{ba.saving_balance = 1000}.to raise_error(NoMethodError)
    end

    it "ensures account_number is readonly" do 
      expect{ba.account_number = "123456789"}.to raise_error(NoMethodError)
    end

    it "ensures it returns count of total account created" do 
      expect{BankAccount.new("enow","saving")}.to change(BankAccount,:get_number_of_accounts_created).by(1)
    end

  end

  describe "transactions" do 

    describe "deposits" do 

      it "ensure deposits done correctly with negetive numbers to saving account" do 
          expect{ba.deposit("saving",-5000)}.to change(ba,:saving_balance).by(5000)
          expect(ba.saving_balance).to eql(5000.0)
      end

      it "ensure deposits done correctly with positive numbers to saving account" do 
        expect{ba.deposit("saving",5000)}.to change(ba,:saving_balance).by(5000)
        expect(ba.saving_balance).to eql(5000.0)
      end

      it "ensure deposits done correctly with negetive numbers to checking account" do 
          expect{ba.deposit(ba.account_type,-5000)}.to change(ba,:checking_balance).by(5000)
          expect(ba.checking_balance).to eql(5000.0)
      end

      it "ensure deposits done correctly with positive numbers to checking account" do 
        expect{ba.deposit("checking",5000)}.to change(ba,:checking_balance).by(5000)
        expect(ba.checking_balance).to eql(5000.0)
      end

    end
    describe "withdrawals" do 

      it "ensures withdraws are done correctly with positive number from saving account" do
          expect{ba.withdraw("saving",-5000)}.not_to change(ba,:saving_balance).by(5000)
          expect(ba.saving_balance).to eql(0.0)
      end

      it "ensures withdraws with negetive numbers from saving account"

      it "ensures withdraws within account balance from saving account"

      it "ensures withdraws are done correctly with positive number from saving account"

      it "ensures withdraws with negetive numbers from saving account"

      it "ensures withdraws within account balance from saving account"

    end
  end

end
