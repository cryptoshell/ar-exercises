require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Create more employees under store 1 and 2
@store1.employees.create(first_name: "Yelim", last_name: "Oh", hourly_rate: 60)
@store1.employees.create(first_name: "Bryce", last_name: "Loo", hourly_rate: 10)
@store1.employees.create(first_name: "Raj", last_name: "Ha", hourly_rate: 50)
@store2.employees.create(first_name: "Kai", last_name: "So", hourly_rate: 10)
@store2.employees.create(first_name: "Gong", last_name: "Yoo", hourly_rate: 600)
@store2.employees.create(first_name: "Dan", last_name: "Sho", hourly_rate: 6)