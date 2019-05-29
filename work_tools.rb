require_relative "tools"
class WorkTools
  include Tools

  My_Tools = []
  def initialize_hammer
    My_Tools << "Hammer"
    Hammer.new
  end

  def initialize_screwdriver
    My_Tools << "Screw Driver"
    ScrewDriver.new
  end

end

wt = WorkTools.new 
wt.initialize_screwdriver
wt.initialize_hammer

p WorkTools::My_Tools
