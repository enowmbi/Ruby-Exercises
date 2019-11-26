require_relative '../bank_account.rb'

RSpec.describe BankAccount do 

  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end
end
