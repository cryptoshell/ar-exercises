require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create 3 more stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch (a collection of) only those stores that carry men's apparel 
# Assign to instance variable
@mens_store = Store.where(mens_apparel: true)
@mens_store.each do |s|
    puts s.name
    puts s.annual_revenue
end

# Fetch stores that carry women's apparel 
# and are generating less than $1M in annual revenue
# assign to instance variable
@womens_small_store = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)
@womens_small_store.each do |s|
    puts s.name
    puts s.annual_revenue
end