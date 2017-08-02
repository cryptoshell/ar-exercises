require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Validate Store and Employee classes
begin
  @store_name = gets.chomp
  @user_store = Store.create(name: @store_name)
  @user_store.save!
rescue
  puts "IS YOUR STORE VALID? #{@user_store.valid?}"
  puts "YOUR ERRORS ARE:"
  @user_store.errors.messages.each {|e| puts e}
end