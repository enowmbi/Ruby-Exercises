require_relative "../project.rb"

RSpec.describe Project do 

  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end
