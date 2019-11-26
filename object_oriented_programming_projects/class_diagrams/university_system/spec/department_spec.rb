require_relative '../department.rb'

RSpec.describe Department do 

  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end
