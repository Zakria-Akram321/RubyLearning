class SomeClass
  def []= (*params)
    value = params.pop
    puts "Indexed with #{params.join(', ')}"
    puts "value = #{value.inspect}"
  end
end

s = SomeClass.new
s[1] = 2
s['cat', 'dog'] = 'enemies'

#Assignment operators
#Here is the implementation of adding/pushing elements in array
class List
  def initialize(*values)
    @list = values
  end

  def +(other)
    @list.push(other)
  end
end

a = List.new(1,2)
a += 3
puts a.inspect