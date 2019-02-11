hash = Hash.new
hash = {"one"=>"1", "two" => 2}

puts hash

hash2 = Hash.new([])
puts "Hash2:"
puts hash2

puts" #hash2['one']"
hash2["one"] << "uno"
puts hash2["one"]

puts" #hash2['two']"
hash2["two"] << "dos"
puts hash2["two"]

puts hash2["one"]