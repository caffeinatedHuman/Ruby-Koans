class Dog2
    def initialize(init_vale)
        @name = @init_vale
    end

    def set_name(a_name)
        @name = a_name
    end
end

def tester
    fido = Dog2.new
    fido.set_name("Fido")
    eval "fido.@name"
end

tester