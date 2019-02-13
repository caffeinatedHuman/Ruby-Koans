class Xyz
    def function1
        puts "FUNCTION1"
    end
end

obj_sample = Xyz.new
obj_sample.function1
obj_sample.method_missing(:function2)