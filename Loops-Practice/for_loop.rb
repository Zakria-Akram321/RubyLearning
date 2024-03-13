arr = [1,2,3,4,5]

#Simple for loop
for i in arr 
  puts i
end

#Incrementing for loop
for i in 1..arr.length() do
  puts arr[i]
end

#Decrementing for loop
for i in 5.downto(1)
  puts i
end

#For loop with incrementing step size
for i in 1.step(5,2)
  puts(i)
end

#For loop with decrementing step size
for i in 5.step(1,-2)
  puts(i)
end
