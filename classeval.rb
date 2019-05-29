def eval_my_class(a_class)
    @name ="Enow Mbi"
    a_class.class_eval do 
        def mymethod
            puts "this method is created dynamically using class_eval and my name is #{@name}"
        end
    end
end
def eval_my_instance(a_class)
    a_class.instance_eval do 
        def mymethod
            puts "this method is created dynamically in an instance_eval and myname is #{@name}"
        end
    end
end


puts "see results of running my dynamic method"
eval_my_class(String)
"Enow".mymethod

eval_my_instance(String)
String.mymethod