require_relative '../university.rb'

RSpec.describe University do 

  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end
