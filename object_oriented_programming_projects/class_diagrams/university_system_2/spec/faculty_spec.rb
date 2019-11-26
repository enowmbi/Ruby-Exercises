require_relative "../faculty.rb"

RSpec.describe Faculty do 

  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end

