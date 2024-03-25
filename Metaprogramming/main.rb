puts "Before the class definition self = #{self}\n"

class Test
  puts "In the definition of the class self = #{self}"
end

puts "After the class definition self = #{self}"

animal = "cats"

def animal.speak
  puts "The #{self} says meow!"
end

class Test
  puts "self of class test = #{self}"

  def animal
    puts "The #{self} is running"
  end
end

animal.speak
puts animal.upcase

t = Test.new()
t.animal


animal = "dog"
def animal.speak
  puts "The #{self} says bao bao!"
end

animal.speak
puts animal.class
puts animal.singleton_class
puts animal.singleton_methods


class John
  def self.class_method_one
    puts "class method one"
  end
  def John.class_method_two
    puts "class method two"
  end
end

John.class_method_one
John.class_method_two

module Logger
  def log(msg)
    STDERR.puts Time.now.strftime("%H:%M:%S: ") + "#{self} (#{msg})"
  end
end

class Song
  include Logger
end

s = Song.new
s.log("created")

module VanityPuts
  def puts(*args)
    args.each do |arg|
      super("Dave says: #{arg}")
    end
  end
end

class Object
  prepend VanityPuts
end 

puts "Hello and"
puts "goodbye"

With "extend" if you use it within a class definition, the module’s methods become class methods.
module Humour 
  def tickle
    "#{self} says hee hee!"
  end
end

class Grouchy
  extend Humour
end

puts Grouchy.tickle