require_relative '../building.rb'

RSpec.describe Building do 

  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end
