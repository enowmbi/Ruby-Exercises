class Account 

    def initialize
        @attributes = {}
    end

    def self.define_attributes(name)
        define_method name do 
          @attributes.fetch(name)
        end

        define_method "#{name}=" do |value| 
          @attributes[name] = value 
        end      
    end
end



=begin
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
 =end