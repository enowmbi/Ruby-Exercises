class User 
 def age
  "instance method age"
 end
 end

 me = User.new
 you = User.new
 
 def me.age
    "singleton method age"
   end
 puts "calling me.age #{me.age}" 
 puts "calling you.age #{you.age}"
