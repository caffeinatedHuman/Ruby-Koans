#Test small integers have fixed IDs:
puts 0.object_id
puts 1.object_id
puts 3.object_id
puts 99.object_id
puts
#Test clone creates a different object:
string1 = "Ruby"
puts "Object ID of string1 is #{string1.object_id}"

string2 = string1.clone
puts "Object ID of string2 is #{string2.object_id}"
puts

puts "Are the IDs same?"
if string1.object_id==string2.object_id
    puts "Yes"
else
    puts "No"
end