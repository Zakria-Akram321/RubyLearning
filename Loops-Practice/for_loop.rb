arr = [1,2,3,4,5]

#Simple for loop
puts "Simple for loop:"
for i in arr 
  print "#{i} , "
end
puts

#Incrementing for loop
puts "Incrementing for loop:"
for i in 0..arr.length()-1 do
  print "#{arr[i]}, "
end
puts

#Decrementing for loop
puts "Decrementing for loop:"
for i in 5.downto(1)
  print "#{i}, "
end
puts

#For loop with incrementing step size
puts "For loop with incrementing steps:"
for i in 1.step(5,2)
  print("#{i}, ")
end
puts

#For loop with decrementing step size
puts "For loop with decrementing step size:"
for i in 5.step(1,-2)
  print("#{i}, ")
end

arr_gpt = ["apple", "banana", "cherry"]

#The each method is a common way to iterate over arrays. 
#It takes a block of code and executes it for each element in the array.
arr_gpt.each do |fruit|
  print "#{fruit}, "
end
puts

#If you need the index as well as the value, you can use the each_with_index method.
arr_gpt.each_with_index do |fruit, index|
  puts "fruit#{index}: #{fruit}"
end

numbers  = [1,2,3,4]

# --> map(Transforming)
#The map method transforms each element in an array and 
#returns a new array with the transformed elements.
squared_numbers = numbers.map do |number|
  number * number
end

puts squared_numbers.inspect

# --> select (Filtering)
#The select method filters elements based on a condition and 
#returns a new array with the selected elements.
even_numbers = numbers.select do |number|
  number.even?
end
puts even_numbers.inspect

# --> reduce/inject (Aggregating)
# The reduce or inject method combines all elements of an array into a single value
sum = numbers.reduce do |total, number|
  total + number
end
puts sum




