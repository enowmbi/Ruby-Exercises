require_relative 'pet.rb'

class Owner
  def initialize(name_of_owner)
    @pet = Pet.new("Gobacheve")
    @name = name_of_owner
  end

  def punish_pet()
    @pet.receive_punishment
    puts "#{@pet.get_name} is #{@pet.get_state()}"
  end

  def praise_pet()
    @pet.receive_praise
    puts "#{@pet.get_name} is #{@pet.get_state()}"
  end

end
