#parent
#instance methods
#no initialize so no attributes
#parent class doesnt need to execute methods but there to help the children
#may never use Employee.new

class Employee
  attr_reader :name, :id

  def initialize(name, id)
    @name = name
    @id = id
  end

  def total_compensation
    base_salary + bonus
  end

  def benefits
    [:sick_leave]
  end
end
