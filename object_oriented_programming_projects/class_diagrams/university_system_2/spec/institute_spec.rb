require_relative "../institute.rb"

RSpec.describe Institute do 

  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end
