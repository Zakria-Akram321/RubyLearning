def fibonacci_up_to(max, &block)
  if !block_given?
    puts "Block not given"
    return
  end

  i1, i2 = 1, 1
  while i1 <= max
    block.call(i1)
    i1, i2 = i2, i1 + i2
  end
end

fibonacci_up_to(1000) {|number| print "#{number} "}
puts