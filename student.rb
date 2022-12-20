require_relative './person'
class Student < Person
  def initialize(age,classroom,name="unknown",parent_permission=true)
    super(age,name,parent_permission)
    @classroom=classroom
  end

  def play_hooky
    return "¯\(ツ)/¯"
  end
end