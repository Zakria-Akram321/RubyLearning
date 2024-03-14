hash = {
  dog: "canine", 
  cat: "feline", 
  bear: "ursine"
}

puts hash.length #prints the length of hash
puts hash[:dog] #prints the value of dog(key)

data = {
  mcu: [
      {name: "Iron Man", year: 2010, actors: ["Robert Downey Jr.", "Gwyneth Paltrow"]}
  ],
  starwars: [
      {name: "A New Hope", year: 1977, actors: ["Mark Hamill", "Carrie Fisher"]}
  ]
}

#To print the Gwyneth Paltrow from data
puts data[:mcu][0][:actors][1]
#Print Gwyneth Paltrow using dig
puts data.dig(:mcu, 0, :actors, 1)
