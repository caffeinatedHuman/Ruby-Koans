puts "#Test creating arrays:"
arr = Array.new
puts arr.class
puts

puts "#Test array Literals"
arr[0] = 1
arr[1] = 2
arr << 3333

puts arr
puts

puts "#Test accessing array elements"
puts arr.last
puts arr[-1]
puts arr[-2]
puts

puts "#Test slicing arrays"
array = [:peanut, :butter, :and, :jelly]
puts "array[1,2]: #{array[1,2]}"
puts "array[4,-1]: #{array[4,-1]}"
puts "array[5,0]: #{array[5,0]}"

#To understand the reason for the output in Line 23 & 24, visit link: https://stackoverflow.com/questions/3219229/why-does-array-slice-behave-differently-for-length-n/54594030#54594030

puts "#Test arrays and ranges"
puts (1..5).class
puts (1..5)
puts (1..5).to_a
puts (1...5).to_a

puts "#Test Slicing with Ranges"
puts array[0..2]