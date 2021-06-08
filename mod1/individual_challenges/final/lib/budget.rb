class Budget
  attr_reader :year, :departments

  def initialize(year)
    @year = year.to_i
    @departments = []
  end

  def add_department(department)
    @departments << department
    require "pry";binding.pry
  end

  def less_than_500
    @departments.find_all do |department|
      department.expenses < 500
    end
  end

  def list_salaries
    employees = @departments.map do |department|
      department.employees
    end.flatten
    employees.map do |employee|
      employee.salary
    end
  end
end
