hash = {}
arr=[1,2,3,4,4,5,2,5]

for i in arr do
  if hash.has_key?(i)
    hash[i] += 1
  else
    hash[i] = 1 
  end
end

hash2 = Hash.new(0)
arr =[1,1,2,2,5,6,7]
arr.each do |num|
  hash2[num] += 1
end

puts hash
puts abc