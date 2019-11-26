require_relative '../stock_order.rb'

RSpec.describe StockOrder do 
 
  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end
