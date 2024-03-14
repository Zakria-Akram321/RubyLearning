person = {
  name: "Alice",
  age: 30,
  city: "New York"
}

#The each method also works for hashes, but it yields key-value pairs.
person.each do |key, value|
  puts "#{key}: #{value}"
end

#You can iterate over just the keys or just the values of a hash using each_key and each_value.
person.each_key do |key|
  print "#{key} , "
end
puts

person.each_value do |value|
  print "#{value} , "
end
puts

#Similar to arrays, you can use a for loop with hashes, although it's less common.
for key, value in person
  puts "#{key}: #{value}"
end