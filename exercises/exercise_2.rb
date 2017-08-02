require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Assign store 1 and 2 to instance variables
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

# Update the first store with a new name
@store1.name = "Yelim's store"
p @store1.name

