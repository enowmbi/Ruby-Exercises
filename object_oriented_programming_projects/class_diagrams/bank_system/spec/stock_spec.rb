require_relative '../stock.rb'

RSpec.describe Stock do 
 
  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end
