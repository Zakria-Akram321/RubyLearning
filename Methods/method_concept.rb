def simple_method(a, b)
  puts "#{a}, #{b}"
end
simple_method(3, "Lahore")

def method_with_rest_operator(first, *rest, last)
  puts "first: #{first}, rest: #{rest}, last: #{last}"
end

method_with_rest_operator(1,2) #Will assign 1 and 2 to first and last respectively and rest would be empty
method_with_rest_operator(1,3,"Punjab","Lahore") #first: 1, rest: [3, "Punjab"], last: Lahore

#And you can pass the anonymous rest parameter to another method without giving it a name.
class ArrayLettersJoin
  def method_1(*)
    method_2(*)
  end
  #You do have to give the splat a name if you want to use it, though, 
  #so you can’t write *.join or something like that.
  def method_2(*arg_from_above)
    puts arg_from_above.join(', ')
  end
end

ArrayLettersJoin.new.method_1("a", "b", "c")

#You can also give keywords in the arguments.
#This way when you call the function the order of arguments do not matter.
def method_with_keywords(city:, state:, country:)
  puts "City: #{city}, state: #{state}, country: #{country}"
end

method_with_keywords(city: "Lahore", country: "Pakistan", state: "Punjab")

#You can also do it in this way
my_address_data = {
  city: "Munich",
  state: "Hamburg",
  country: "Germany"
}

method_with_keywords(**my_address_data)

#Taking input from the user
print "Enter city: "
city = gets.chomp
print "Enter state: "
state = gets.chomp
print "Enter country: "
country = gets.chomp

puts "I live in #{city}, #{state}, #{country}"

#Making an object from the user input to pass it to the function with " ** "
my_address_data_from_input = {
  city: city,
  state: state,
  country: country
}
method_with_keywords(**my_address_data_from_input)

