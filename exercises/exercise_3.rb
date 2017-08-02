require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Assign store 3 to instance variable
@store3 = Store.find_by(id: 3)

# Destroy store 3 from db
@store3.destroy
puts Store.count