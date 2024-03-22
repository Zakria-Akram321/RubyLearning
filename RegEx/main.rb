# The Ruby operator =~ matches a string against a pattern. It returns the character offset of
# the string at which the beginning of the match occurred:

def get_the_starting_index_of_pattern(letter)
  output = /cat/ =~ letter
  output
  # (/cat/ =~) 
end

puts get_the_starting_index_of_pattern("dogs and cat"); puts

#The function match? will return true oon false depending upon the pattern matching
print "dog and cat:" , /cat/.match?("dog and cat"), "  "
print "Cat: ", /cat/.match?("Cat"), "  "
print "catch: ",/cat/.match?("catch")
puts; puts

#using the pattern matching to print something conditionally from the file
File.foreach("./test.txt").with_index do |line, index|
  puts "#{index}: #{line}" if line.match?(/on/)
end
puts

#to check if the pattern does not matches the string you can use !~ symbol
File.foreach("./test.txt").with_index do |line, index|
  puts "#{index}: #{line}" if line !~ (/on/)
end
puts

#to replace the word from a string
def replace_word_in_string(str, fromWord, toWord)
  if str.nil?
    return "The string should not be null"
  end
  output = str.sub(fromWord, toWord)
  return "original str: #{str}\nchanged str: #{output}"
end

str1 = "Dog and Cat"
puts replace_word_in_string(str1, "Cat", "Dog")
puts
#But this will only change the first occurence of the word in the string
str2 = "Dog and Cat, Cat and dog"
puts replace_word_in_string(str2, "Cat", "Dog")
puts

#To remove all the occurences we can use "gsub"
def remove_all_matched_words(str, fromWord, toWord)
  if str.nil?
    return "Str should not be nil"

  elsif str.length == 0 
    return "Str length should not be zero"
  
  elsif !str.include?(fromWord)
    return "Str does not contain '#{fromWord}'"

  else
    output = str.gsub(fromWord, toWord)
  end

  return "original str: #{str} \nchanged str: #{output}"
end

str3 =  "cat and dog, dog and cat"
puts remove_all_matched_words(str3, "cat", "dog")
puts

def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    return "Pre-match: #{match.pre_match},  Post-match: #{match.post_match},  Matched-part: #{match}"
  else
    return "no match"
  end
end

string = "Fats Waller"
puts show_regexp(string, /lle/)