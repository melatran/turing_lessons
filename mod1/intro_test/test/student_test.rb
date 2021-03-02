# student_test.rb
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/student'

class StudentTest < Minitest::Test
  def test_it_exists
    student = Student.new("Penelope")

    assert_instance_of Student, student
  end

  def test_student_has_a_name
    student = Student.new("Penelope")
    assert_equal "Penelope", student.name
  end

  def test_it_has_cookies
    student = Student.new("Penelope")
    assert_equal [], student.cookies
  end

  def test_it_can_add_cookies
    student = Student.new("Penelope")
    student.add_cookie('Chocolate Chunk')
    student.add_cookie('Snickerdoodle')
    assert_equal ['Chocolate Chunk', 'Snickerdoodle'], student.cookies
  end
end


  # pry(main)> require './lib/student'
  # => true
  #
  # pry(main)> student = Student.new('Penelope')
  # => #<Student:0x007fa71e12c1f0 @cookies=[], @name="Penelope">
  #
  # pry(main)> student.name
  # => "Penelope"
  #
  # pry(main)> student.cookies
  # => []
  #
  # pry(main)> student.add_cookie('Chocolate Chunk')
  # pry(main)> student.add_cookie('Snickerdoodle')
  # dont care what the return value is but care about the arry
  # state of student has changed and thats what i care about
  #
  # pry(main)> student.cookies
  # => ["Chocolate Chunk", "Snickerdoodle"]
