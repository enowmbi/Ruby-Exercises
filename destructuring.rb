class Account
 attr_accessor :name,:address,:email,:notes
end

 user_info ={
 :name => "Enow Mbi",
 :address => "Quarter 5, Electric Line,Bomaka,Buea",
 :email => "benowmbi@gmail.com",
 :notes => "Jesus is Lord, to the Glory of God the Father"
 }

 account = Account.new

 account.name,account.address,account.email,account.notes = user_info[:name],user_info[:address],user_info[:email],user_info[:notes]
 puts account.class

 p account
 puts account.inspect
 puts "The name is #{account.name}"