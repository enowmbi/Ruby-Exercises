class Pet 

  def initialize(name)
    @state = "Happy"
    @name = name
    puts "#{@name} is #{@state}".rjust(50,'*')
  end

=begin
  def receive_stimuli(stimuli)
    if @state == "Happy" && stimuli == "Punishment"
      @state = "Sad"
    elsif @state == "Sad" && stimuli == "Punishment"
      @state = "Heart Broken"
    elsif @state == "Sad" && stimuli =="Punishment"
      @state = "Heart Broken"
    elsif @state == "Sad" && stimuli == "Praise"
      @state = "Happy"
    end
  end

=end

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

