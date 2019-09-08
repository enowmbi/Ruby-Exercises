require 'car'

describe Car do 
  let(:car){Car.new}
  context 'attributes' do 
    it "allows reading and writing for :make" do 
       car.make = "Volvo"
       expect(car.make).to eq('Volvo')
    end

    it "allows reading and writing for :color" do 
        car.color = "black"
        expect(Car.colors).to include(car.color)
    end

    it "allows reading and writing for :year" do 
        car.year = 2016
        expect(car.year).to eq(2016)
    end
  end
   context 'other values' do 
    it "allows reading of #fullname" do 
      car = Car.new(make: "Honda",year: 2019,color: "yellow")
      expect(car.full_name).to eq("#{car.year} #{car.make}(#{car.color})")
    end

    it "allows reading of .colors" do 
        colors = ['black','blue','green','red']
        expect(Car.colors).to match_array(colors)
   end

  end
end




