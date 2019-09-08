require 'pg'
require "active_record"
require_relative 'sizeable'

ActiveRecord::Base.establish_connection({
  :adapter  => 'postgresql',
  :database => 'my_pos_development'})

class Client < ActiveRecord::Base
  extend Sizeable
end

p Client.all
puts "========================"
p Client.ancestors
puts "========================"
p Client.superclass
puts "========================"
p Client.send(:length)
