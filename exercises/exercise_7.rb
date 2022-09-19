require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true
end


# p Employee.create(first_name: "Sashaa", last_name: "Patty", hourly_rate: 300).valid?
# p Employee.create(first_name: "Sasha", last_name: "Pattucii", hourly_rate: 15).valid?
# p @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60).valid?


class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  
end

# p Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel:true, womens_apparel: true).valid?
# p Store.create(name: "Bu", annual_revenue: 300000, mens_apparel:true, womens_apparel: true).valid?
# p Store.create(name: "Toronto", annual_revenue: 0, mens_apparel:true, womens_apparel: true).valid?


puts "Enter a store name!"
store_name = gets.chomp.to_s

store_create = Store.create(name: "#{store_name}", annual_revenue: nil, mens_apparel: nil, womens_apparel: nil)

store_error =  store_create.errors.messages

store_error.each do |error|
  p error
end

