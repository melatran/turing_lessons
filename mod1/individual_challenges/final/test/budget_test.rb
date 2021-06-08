require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'
require './lib/department'
require './lib/budget'

class BudgetTest < Minitest::Test
  def setup
    @budget = Budget.new("2012")
    @customer_service = Department.new("Customer Service")
    @food_service = Department.new("Food Service")
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    @billie = Employee.new({name: "Billie Tanaka", age: "25", salary: "90000"})
  end

  def test_it_exists
    assert_instance_of Budget, @budget
  end

  def test_it_has_attributes
    assert_equal 2012, @budget.year
  end

  def test_has_no_departments
    assert_equal [], @budget.departments
  end

  def test_can_add_departments
    @budget.add_department(@customer_service)
    @budget.add_department(@food_service)

    assert_equal [@customer_service, @food_service], @budget.departments
  end

  def test_can_list_all_department_expense_less_than_500
    @budget.add_department(@customer_service)
    @budget.add_department(@food_service)
    @customer_service.expense(100)
    @customer_service.expense(25)
    @food_service.expense(501)

    assert_equal [@customer_service], @budget.less_than_500
  end

  def test_can_list_all_salaries
    @budget.add_department(@customer_service)
    @budget.add_department(@food_service)
    @customer_service.hire(@bobbi)
    @customer_service.hire(@aaron)
    @food_service.hire(@billie)

    assert_equal [100000, 90000, 90000], @budget.list_salaries
  end
end
