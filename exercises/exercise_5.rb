require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)

p "Total annual revenue of all stores is $#{@total_revenue}"

@annual_revenue = Store.all

@annual_revenue.each do |store|
  p "#{store.name}: #{store.annual_revenue}"
end

@well_stores = Store.where(annual_revenue:1000000..Float::INFINITY).count

p "There are #{@well_stores} stores with an annual revenue over $1000000"



