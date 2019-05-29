obj = Object.new

def obj.talk(say_something)
  puts say_something
end

def obj.convert_celsius_to_fahrenheit(celsius)
 fahrenheit = (celsius * 9.0/5) + 32
 puts "Converting #{celsius} degree celsius to fahrenheit is :#{fahrenheit} "
end

obj.talk("what's your name ?")
obj.convert_celsius_to_fahrenheit(100)
