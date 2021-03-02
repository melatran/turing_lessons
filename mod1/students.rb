class Student
  attr_reader :name, :id, :mod
  def initialize(name, id, mod)
    @name = name
    @id = id
    @mod = mod
  end
end

student_1 = Student.new("Megan", 4, "mod1")
student_2 = Student.new("Brian", 9, "mod3")
student_3 = Student.new("Sal", 1, "mod4")
student_4 = Student.new("Tim", 2, "mod2")
student_5 = Student.new("Aurora", 5, "mod1")

students = [student_1, student_2, student_3, student_4, student_5]

# Create an Array of all the Student names
student_names = []
students.each do |student|
  student_names << student.name
end

student_names = students.map do |student|
  student.name
end
p student_names

# Create an Array of all the Students whose names start with the letter "M"
#Students is a class so we want all the class
student_m = []
students.each do |student|
  if student.name[0] == "M"
    student_m << student
  end
end
p student_m

m_students = students.find_all do |student|
  student.name[0] == "M"
end

p m_students

# Get the Student whose id is 1 (the means return single value)
student_1 = nil #I start with a student I dont now is 1
students.each do |student|
  if student.id == 1
    student_1 = student
  end
end
p student_1

student_1 = students.find do |student|
  student.id == 1
end

p student_1

# Check if one Student is named "Aurora" (Is there a studnet name Aurora? True or False )
student_aurora = false #start false unless you tell me otherwise
students.each do |student|
  if student.name == "Aurora"
    student_aurora = true
  end
end
p student_aurora

student_aurora = students.any? {|student| student.name == "Aurora"}
p student_aurora

# Check if any of the Students have an id of 10 (any)
students10 = false
students.each do |student|
  if student.id == 10
    students10 = true
  end
end
p students10

student10 = students.any? {|student| student.id == 10}
p student10

# Find the Student with the highest id (max_by)
student_max = student.max
students.each do |student|
  if stuents.id > 
# Create an Array with the Students in order of name, alphabetically (sort_by)
# Create an Array with the Students in order of name by lengthv(sort_by)