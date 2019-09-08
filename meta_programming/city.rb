#structure 
#new_york = CityInstance.construct do 
#tax 'big_apple_tax'
#tax 'liberty_tax'
#end

class CityInstance 
  def self.construct(&block)
    city = new #same as city = CityInstance.new
    city.instance_eval(&block)
    city
  end

  attr_reader :taxes
  def initialize
    @taxes = []
  end

  def tax(name)
    @taxes << name
  end

end

class AddressBook
  @@addresses = []
  def self.instance(&block)
    address_book = new
    address_book.instance_eval(&block)
    @@addresses << address_book
    address_book
  end

  attr_reader :entries

  def initialize
     @entries = {}
  end



  def entry(name,value)
    @entries["#{name}".to_sym] = value
  end
end

class Myapp 
  def self.configure(&block)
    myapp ||= new
    myapp.instance_eval(&block)
    myapp    
  end
  attr_accessor :app_id,:title,:cookie_name
  
end
