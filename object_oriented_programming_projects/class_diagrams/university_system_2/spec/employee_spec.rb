require_relative "../employee.rb"

RSpec.describe Employee do 

  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end
