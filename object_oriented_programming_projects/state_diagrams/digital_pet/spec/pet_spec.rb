require_relative '../pet.rb'

RSpec.describe Pet do 

  describe 'attributes' do 
    before(:all) {
      @pet =  Pet.new("Goobachev")
    }

    it "doesn't allow state to be modifed from outside pet class" do 
      expect{@pet.state}.to raise_error(NoMethodError)
      expect(@pet.get_state).to eq("Happy") 
    end

    it "doesn't allow name to be modified from outside pet class" do 
      expect{@pet.name}.to raise_error(NoMethodError)
    end

  end

  describe "methods" do 
    it "ensures that name is a read only property from outside pet class" do 
      pet = Pet.new("Skinny")
      expect(pet.get_name()).to eq("Skinny")
      expect{@pet.name = "Skinny"}.to raise_error(NoMethodError)
    end

    it "ensures proper output when pet is initialized" do 
      pet = Pet.new("Skinny")
      expect("#{pet.get_name} is #{pet.get_state}").to eq("Skinny is Happy") 
    end

    it "ensures pet can receive punishment and modify state" do 
      pet = Pet.new("Skinny")
      expect(pet.receive_punishment).to eq("Sad")
      expect(pet.receive_punishment).to eq("Heart Broken")      
    end

    it "ensures pet can receive praise and modify state" do 
      pet = Pet.new("Skinny")
      expect(pet.receive_punishment).to eq("Sad")
      expect(pet.receive_praise).to eq("Happy")
    end

  end

end



