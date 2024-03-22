require_relative "module"

# print "Enter your full name:"
# full_name = gets

result = ExtendString.extend_the_string("Ross Geller")
puts result.inspect


module Debug
  def who_am_i?
    "#{self.class.name} (id: #{self.object_id}) : #{self.name}"
  end
end

class Joey
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Chandler
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

joey = Joey.new("Joey Tribianni")
chandler = Chandler.new("Chandler Muriel Bing")

puts joey.who_am_i?
puts chandler.who_am_i?

#Module with the raise Error when not implemented method
module SoundOfAnimal
  def make_sound
    raise NotImplementedError, "Must implement make_sound in the child classes"
  end
end

class Dog
  include SoundOfAnimal

  def make_sound
    puts "woof woof"
  end
end

class Cat
  include SoundOfAnimal

  def make_sound
    puts "meow meow"
  end
end

dog = Dog.new
dog.make_sound

cat = Cat.new
cat.make_sound

#Seperate string on the bases of delimeter
module SeparateString
  def new_from_string(string, delimiter=",")
    new(*string.split(delimiter))
  end
end

class Person 
  extend SeparateString

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name 
    "#{@first_name}, #{@last_name}"
  end
end

person = Person.new_from_string("Joey,Tribiani")
person2 = Person.new_from_string("Ross|Geller", "|")

puts person.full_name
puts person2.full_name