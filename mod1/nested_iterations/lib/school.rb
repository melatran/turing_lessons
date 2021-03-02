class School
  attr_reader :name, :houses, :courses

  def initialize(name, houses)
    @name = name
    @houses = houses
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def sort(student)
    student.house = @houses.sample
  end

  def sort_students
    courses.each do |course|
      course.students.each do |student|
        sort(student)
      end
    end
  end

  def student_names
  list_of_students = []
    courses.each do |course|
      require "pry";binding.pry
      course.students.each do |student|
        list_of_students << student.name
      end
    end
  list_of_students.uniq
  end

  def students_by_house
    # students_in_houses = {}
    # students = []
    # @courses.each do |course|
    #   course.students.each do |student|
    #     students << student
    #   end
    # end
    # students = students.uniq
    # @houses.map do |house|
    #   students_in_houses[house] = students.find_all {|student| student.house == house}
    # end
    # students_in_houses
  #   students = @courses.map do |course|
  #     course.students
  #   end
  # students = students.flatten.uniq
  end
end