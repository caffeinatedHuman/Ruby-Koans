puts /pattern/.class
=begin
puts "some matcing content"[/ match/]
puts "some matching content"[/ matches/]

puts "abbcccddddeeeee"[/ab?/]
puts "abbcccddddeeeee"[/aaz?/]
puts "abbcccddddeeeee"[/ab*/]

puts "the number is 42"[/[0123456789]+/]
=end

puts "Gray, James"[/(\w+), (\w+)/,2]
# assert_equal "Gray, James", "Gray, James"[/(\w+), (\w+)/, 1]

grays = /(James|Dana|Summer) Gray/
puts "Jim Gray"[grays]

# puts "one two-three"c.sub(/(t\w*)/)
puts "one two-three"[/(t\w*)/]