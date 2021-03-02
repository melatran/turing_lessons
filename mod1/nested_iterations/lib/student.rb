class Student
  attr_reader :name
  attr_accessor :house
  #can reasign attribute outside of the class

  def initialize(name)
    @name = name
    @house = nil
  end
end
