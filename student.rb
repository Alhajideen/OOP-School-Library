require_relative './person'
class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name: 'unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classrooms(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.student.include?(self)
  end
end
