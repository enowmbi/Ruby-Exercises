class Pet 

  def initialize(name)
    @state = "Happy"
    @name = name
    puts "#{@name} is #{@state}".rjust(50,'*')
  end

  def receive_punishment
    if @state == "Happy"
      @state = "Sad"
    elsif @state == "Sad" 
      @state = "Heart Broken"
    elsif @state == "Sad"
      @state = "Heart Broken"
    end
  end

  def receive_praise
    if @state == "Sad" 
      @state = "Happy"
    end
  end

  def get_state
    return @state
  end

  def get_name
    return @name
  end

end

