require './employee'
#has name and id because its an Employee
#intern has hourly rate and no bonus

class Intern < Employee
  attr_reader :hourly_rate

  def initialize(hourly_rate, name, id)
    @hourly_rate = hourly_rate
    super(name, id)
  end

  def total_compensation
    hourly_rate * 2000
    #this will override the employee total compensation
  end

  def benefits
    super.push(:health_insurance)
    #add to the benefit array from the parent
  end
end
