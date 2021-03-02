#child
#child has base salary and bonus
#inheriting from employee <
#must require from parent when using inheritence

require './employee'

class Ceo < Employee
  attr_reader :base_salary,
              :bonus

  def initialize(base_salary, bonus, name, id)
    @base_salary = base_salary
    @bonus       = bonus
    super(name, id)
    #tells code to look at parent for the rest when super is called, giving name and id to parent
    #jump back to parent's initialize and begin to execute method with the same name
    #calling super is similar to employee.new(name, id)
  end

  def report_total_salary
    "My total salary is #{total_compensation}"
  end
end
