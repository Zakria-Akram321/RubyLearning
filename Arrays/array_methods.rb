arr = [1, 2, 3, 4, 5]
arr2 = [1, 5, 'cat', 'dog', [8,9]]

print arr[1..3] #prints all elements of arr from index 1 to 3
puts
print arr[-1] #print the last element of arr
puts
print arr[-2] #prints the second last element of arr
puts
new_arr = arr2[2,3] #will take 3 elements starting from the index 2
print "New Array: #{new_arr}"
puts
print "The length of arr is: #{arr.length()}"
puts

arr_with_delimeter = %w[cat dog ant cow sheep] #use '%w' as delimeter and then add elements seperated by spaces
print arr_with_delimeter
puts

arr3 = [1,2,3,4,5,6,7,8,9]
print "arr first: #{arr3.first}" 
puts
print "arr first(4): #{arr3.first(4)}"
puts
print "arr last: #{arr3.last}"
puts
print "arr last(3): #{arr3.last(3)}"
puts

#implementing the stack data stucture using array methods
stack = []
stack.push("abc")
stack.push(2)
stack.push([2,3])
stack.pop()
print stack
puts

#implementing queue data structure using array methods
queue = []
queue.push(3)
queue.push("cat")
queue.push("abc")
queue.shift()
print queue
puts

