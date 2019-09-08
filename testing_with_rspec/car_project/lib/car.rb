class Car

  attr_accessor :make,:year, :color
  attr_reader :wheels
  attr_writer :doors

  def initialize(options ={})
    self.make = options[:make] || "Honda"
    @wheels = 4
  end

  def self.colors
    ['blue','black','red','green']
  end
  
  def full_name
    "#{self.year.to_s} #{self.make}(#{self.color})"
  end

end
