hash = {}
arr=[1,2,3,4,4,5,2,5]

for i in arr do
  if hash.has_key?(i)
    hash[i] += 1
  else
    hash[i] = 1 
  end
end

puts hash