require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Use sum to output total revenue
@sum_revenue = Store.sum(:annual_revenue)
puts @sum_revenue

# Use average to output average revenue
@avg_revenue = Store.average(:annual_revenue)
puts @avg_revenue

# Output num of stores that are generating $1M or more in annual sales
@num_of_rich_stores = Store.where("annual_revenue > ?", 1000000).size
puts @num_of_rich_stores