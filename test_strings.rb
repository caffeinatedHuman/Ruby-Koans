string = 'This is a "Quoted String"'

puts string
puts string.is_a?(String)

puts "Length of string:#{string.lines.count}"

long_strings = <<LONG
This is an example 
of Multiline String
Also called as HERE doc
LONG

puts long_strings
string = '\\\''
puts string