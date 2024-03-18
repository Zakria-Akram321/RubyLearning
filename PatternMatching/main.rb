# ----> Matching Hash Structure

def matching_has_structure(user)
  if user in {name: String => x, age: y}
    puts "Pattern is matched along with data type"
  #You can add extra checks for data type
  elsif user in {name: x, age: y}
    puts "Pattern is matched for hash"
  else
    puts "Pattern not matched"
  end
end

#The pattern would match for this object
user1 = {name: "Ross", age: 30}
#The pattern would not match for this object
user2 = {name: "Chandler", city:"New York"}
#The pattern alongwith data type would match for this object 
user3 = {name:"Joey", age:20}
matching_has_structure(user3)

# ----> Matching Arrays & Using Extra Conditions
def matching_array_with_condition(arr)
  case arr
  in [*all] if all.sum > 10
    puts "Sum is greater than 10"
  else
    puts "Sum is not greater than 10"
  end
end

#The sum would be greater than 10 
arr1 = [1,2,3,4,5,6,7]
#The sum would not be greater than 10
arr2 = [1,2,4]
matching_array_with_condition(arr2)

# ----> Find Patterns
def find_patterns(arr)
  if arr in [Integer, String, Integer]
    puts "Pattern Found"
  else
    puts "Pattern not found"
  end
end

#Pattern will be found for this array
arr1 = [1, "2", 3]
#Pattern would not be found for this array
arr2 = [1,3,5]
find_patterns(arr2)