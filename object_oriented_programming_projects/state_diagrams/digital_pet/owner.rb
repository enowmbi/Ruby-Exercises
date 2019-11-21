require_relative 'pet.rb'

class Owner
  def initialize(name_of_owner)
    @pet = Pet.new("Gobacheve")
    @name = name_of_owner
  end

  def punish_pet
    @pet.receive_punishment
    return "#{@pet.get_name} is #{@pet.get_state()}".rjust(50,'*')
  end

  def praise_pet
    @pet.receive_praise
    return "#{@pet.get_name} is #{@pet.get_state()}".rjust(50,'*')
  end

end
