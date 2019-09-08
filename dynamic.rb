class Dynamic
  # def initialize(entries =[])
  [:account,:payroll,:research].each do |entry|
      define_method "#{entry}" do 
        puts entry
      end
    end
  
end

d = Dynamic.new
p d.methods(false)
