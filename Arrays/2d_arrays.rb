# students_data = [
#   ["John", 90],
#   ["Chris", 80],
#   ["Tony", 95],
#   ["Andy", 75]
# ]

# students_data.each do |(name, grade)|
#   puts "#{name} has #{grade} marks."
# end

# puts students_data.to_h

arr =[1,1,2,2,5,6,7]
hash = Hash.new(0)
arr.each do |num|
  hash[num] += 1
end

puts hash