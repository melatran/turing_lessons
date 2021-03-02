require './employee'
require './ceo'
require './intern'
employee = Employee.new("Kyu", 1)
# doesn't need employee to exist for CEO to exist
#if you do employee.report_total_salary, it will result in undefined method since the method doesnt exist in employee and only in Ceo
ceo = Ceo.new(100, 10, "Dan", 2)
ceo.total_compensation
#even though total_compensatin doesn't exist as a method in ceo class but its defined in the parent employee class
#ceo class has base salary, bonus, and the total compensation methods

# pry(main)> employee
# => #<Employee:0x00007fa5a18e7008 @id=1, @name="Kyu">
# [2] pry(main)> ceo
# => #<Ceo:0x00007fa5a18e6fe0 @base_salary=100, @bonus=10>
#if you have two methods named the same thing in parent and class, it will take itself first and never get to the parent
#since ceo has initialize and employee has initialize, ceo will use its own class and not the parent (lesson before super)
intern = Intern.new(10, "Aurora", 2)
require "pry";binding.pry
