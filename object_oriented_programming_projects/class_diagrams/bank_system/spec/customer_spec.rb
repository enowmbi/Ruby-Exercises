require_relative '../customer.rb'

RSpec.describe Customer do 
  
  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end
