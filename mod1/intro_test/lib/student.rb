class Student
  attr_reader :name,
              :cookies

  def initialize(name)
    @name = name
    @cookies = []
  end

  def add_cookie(cookie)
    @cookies << cookie
  end
end







# Setup - all of the objects necessary to run a specific method
# Execution - run the method that you are testing
# Assertion(Verification) - did the method do what you expect?
# Teardown - get our environment ready for the next test
      # teardown automaticllay taken care of in minitest

#assert_nil the thing i expect to be nil
  #assert_nil student.veggies

#assert a thing that shouldn't be nil or false
#assert_equal true, thing that should be true
# will pass if it's anything but nil or false

#efute a_thing_that_is_false_or_nil_will_pass
#assert_equal false, thing that should be false
#assert_nil the thing i expect to be nil
