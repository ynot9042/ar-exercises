require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 40)
@store1.employees.create(first_name: "Billy", last_name: "Kimbur", hourly_rate: 15)

@store2.employees.create(first_name: "Sasha", last_name: "Pattuci", hourly_rate: 80)
@store2.employees.create(first_name: "Arnold", last_name: "Cantuk", hourly_rate: 35)
@store2.employees.create(first_name: "Olivia", last_name: "Mansel", hourly_rate: 50)

@employees = Employee.all

@employees.each do |employee| 
  p employee.first_name
end
