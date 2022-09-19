require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...


@store3 = Store.find_by(id: 3)

puts "Store 3 is called #{@store3.name}"
puts "There are originally #{Store.all.count} stores."
@store3.destroy
puts "There are now #{Store.all.count} stores left."



