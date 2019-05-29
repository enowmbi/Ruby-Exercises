module Accountable
  def attributes(*args)
    args.each do |arg|
     define_method(arg) do 
          #create the getter and setter
          def arg=(value)
              @arg = value
          end

          def arg
              @arg
          end
       end
    end
  end
end


class Account
    include Accountable

    attributes :name,:address,:email, :phone

end


acc = Account.new
p acc.methods.sort
acc.name = "Enow Mbi"
p acc.name
acc.email = "benowmbi@gmail.com"
p acc.email