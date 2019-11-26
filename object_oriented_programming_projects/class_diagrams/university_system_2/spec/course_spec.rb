require_relative "../course.rb"

RSpec.describe Course do 

  it "compares bange" do 
    expect("bange").not_to eq("Bange")
  end

end
