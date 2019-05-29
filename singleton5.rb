module Math
  def fibonacci
    puts "fibonacci"
  end
  def factorial
   puts "factorial"
  end

  def self.bange
    puts "this is bange"
  end

  end

class Manga
    extend Math

    puts self.instance_methods.sort
    puts "============================="
    puts self.singleton_methods.sort

    puts "============================="
    puts Math.bange
end