# require File.expand_path(File.dirname(__FILE__) + '/neo')

def global_method(a,b)
    a + b
end
# exception = assert_raise(ArgumentError) do
# global_method(1,2,3)
# end

# puts exception.message

def method_with_var_args(*args)
    args
end

puts (method_with_var_args.class)
puts "method_wth_args:"
# puts method_with_var_args
puts method_with_var_args(:one)

=begin
puts global_method 1,2
puts (global_method 1,2).is_a?(Integer)
=end
puts (method_with_var_args :one).is_a?(Symbol)

array = [ :a,:d,:f]
# puts array.is_a?(Hash)
array.each {
    |x|
    puts x.is_a?Symbol
}
puts array

def method_with_return 
    :a_symbol
    return :return_symbol
    :another_symbol
end

puts method_with_return

def my_private_method
    "a secret"
end
private :my_private_method

puts self.

class Dog
    def name
        "Fido"
    end
    
    private
    
    def tail
        "tail"
    end
end

def test_calling_methods_in_other_objects_require_explicit_receiver
    rover = Dog.new
    # assert_equal __, rover.name
    puts rover.name
end