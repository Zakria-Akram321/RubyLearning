# Q1 --> Write a Ruby program that takes an array of numbers and prints each number multiplied by 2.
q1 = [1,2,3,4,5,6,7,8,9]

q1.each do |number|
  if number % 2 == 0
    print "#{number} , "
  end
end
puts
#Can also be done by filtering the even numbers
# even_numbers = q1.select do |number|
#   number.even?
# end

# puts even_numbers.inspect

# Q2 --> Write a Ruby program that takes a hash of names and ages, and prints a greeting for each person with their name and age.
q2 = {
  John: 23,
  Meer: 23,
  Zakria: 23
}

q2.each do |key, value|
  puts "Good Evening! #{key} having age #{value}"
end

# Q3 --> Write a Ruby program that takes an array of words and prints only the words that contain the letter 'a'.
q3 = ["apples", "oranges", "strawberry", "eggs"]

words_with_letter_a = q3.select do |letter|
  if letter.include? "a" 
    letter
  end
end

puts words_with_letter_a.inspect

# Q4 --> Write a Ruby program that takes a hash of names and converts each name to uppercase, storing the result in a new hash.
q4={
  alice: "Alice",
  bob: "Bob",
  charlie: "Charlie"
}

uppercase_hash = {}

q4.each do |key, value|
  uppercase_hash[key] = value.upcase
end

puts uppercase_hash.inspect

#Q5 --> Write a Ruby program that takes an array of numbers and calculates the sum of all even numbers in the array.
q5 = [1,2,3,4,5,6,7,8]

sum = q5.reduce(0) do |total, number|
  if number % 2 == 0
    total+number
  else
    total
  end

end

puts sum
