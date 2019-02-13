class Ghost
    attr_reader :par1

    def initialize(arg1)
        @par1 = arg1
    end
    def reflect
        self
    end
    
    def to_s
        @par1
    end
    def inspect
        "HAHAHA#{par1}"
    end
end

g = Ghost.new("parameter1")
puts g.reflect
puts (g.reflect == g)