students_data = ["John", "Andy", "Tony", "Leo"]

# "&block" is the block of code passed explicitly to the function.
# Here, we have implemented the each function in RUBY.  
def print_name_of_students(arr, &block)
  i = 0
  while i < arr.count
    element = arr[i]
    block.call(element)
    i += 1
  end
end

# The block can be any code enclosed in do end block.
# Here we are printing the names of the students.
# Each name of student will be passed one by one to the block
# and we will get the names of all students.
print_name_of_students(students_data) do |student_name|
    puts student_name
end

# Fibonacci number up to some limit through code using the blocks.
def fibonacci_up_to(max, &block)
  i1, i2 = 1, 1
  while i1 <= max
    block.call(i1)
    i1, i2 = i2, i1 + i2
  end
end

fibonacci_up_to(1000) do |number|
  print "#{number}  "
end
puts

#Find the number depending upon some condition using block
# --> Method-1
def find_the_number(arr, &block)
  #Condition to check if block is given or not
  if !block_given?
    puts "Block is not given"
    return
  end
  #Here goes the main code
  i = 0
  while i < arr.count
    number = arr[i]
    print "#{number}" if block.call(number)
    i += 1
  end
end

numbers = [1,2,3,4,5,6,7,8]
find_the_number(numbers) {|number| number * number <= 25}
puts


#Find the number depending upon some condition using block
# --> Method-2
def find_the_number(arr, &block)
  #Condition to check if block is given or not
  if !block_given?
    puts "Block is not given"
    return
  end
  #Here goes the main code
  i = 0
  while i < arr.count
    block.call(arr[i])
    i += 1
  end
end

numbers = [1,2,3,4,5,6,7,8]
find_the_number(numbers) do |number|
  print "#{number}  " if number * number >= 25  
end
puts