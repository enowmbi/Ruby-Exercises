require_relative '../owner.rb'

RSpec.describe Owner do 

describe 'methods' do 
  before(:each) do 
    @owner = Owner.new("Max")
  end

  it "allows owner to punish pet" do 
    expect(@owner.punish_pet).to eq("Gobacheve is Sad".rjust(50,'*'))
    expect(@owner.punish_pet).to eq("Gobacheve is Heart Broken".rjust(50,'*'))
  end

  it "allows owner to praise pet" do
     expect(@owner.punish_pet).to eq("Gobacheve is Sad".rjust(50,'*'))
     expect(@owner.praise_pet).to eq("Gobacheve is Happy".rjust(50,'*'))
     expect(@owner.praise_pet).to eq("Gobacheve is Happy".rjust(50,'*'))
  end
end


end
