require_relative 'pet.rb'
require_relative 'owner.rb'


puts "Welcome to ACME Digital Pet simulator".center(50,'*')
puts "=".center(50,'=')

puts "Select '0' to Revert to initial state of pet or  '1' to Punish pet or '2' to Praise or 'x' to exit."
puts "Press 'Enter' after each selection"
owner = Owner.new("Max")
entry = ""
until entry == 'x' do 
  puts "Please select an option"
  entry = gets.chomp()
  if entry =='0'
    puts "Reverting to initial state".rjust(50,'*')
    owner = Owner.new('Max')
  end
  if entry == '1'
    owner.punish_pet()
  end
  if entry == '2'
    owner.praise_pet()
  end

end
puts "*".center(50,'*')
puts "Thank you for using ACME Digital Pet simulator"

