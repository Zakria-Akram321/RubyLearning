def count_number_freq(text_array)
  counts = Hash.new(0)
  text_array.each do |word|
    counts[word] += 1
  end
  counts
end

raw_text = "The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count."

words_array = raw_text.split()

freq_of_word = count_number_freq(words_array)

sorted_freq_of_word = freq_of_word.sort_by {|words_array, freq_of_word| freq_of_word}

top_five_frequent_words = sorted_freq_of_word.last(5)

puts "Five most frequent words:"
top_five_frequent_words.reverse_each do |word, count|
  puts "#{word} : #{count}"
end