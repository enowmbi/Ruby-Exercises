require 'rspec'
require 'rubygems'
require 'byebug'
val = 1
proc_method = ->{ val +=1}
5.times {puts proc_method.call}

def my_method
  byebug
  val +=1
end

my_method

describe 'proc/lambda vs method' do 
  describe 'lambda' do 
  it 'can access local variable outside of it\'s scope' do
    a = 5.times {proc_method.call}
    expect(a).to eq(6)
  end
  end
  describe 'method' do 
    it 'will raise an error when trying to access a local variable' do 
    expect(my_method).to raise_error(NoMethodError)
    end
  end
end


