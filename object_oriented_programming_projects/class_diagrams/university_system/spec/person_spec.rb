require_relative '../person.rb'

RSpec.describe Person do 

  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end
