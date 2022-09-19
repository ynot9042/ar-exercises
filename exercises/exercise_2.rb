require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)


puts "Store 1 is called #{@store1.name}"
@store1.name = "Toronto"
puts "Store 1's new name is #{@store1.name}"

