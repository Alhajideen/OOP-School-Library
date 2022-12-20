require_relative './person'
class Person
  def initialize(age,specialization,name="unknown",parent_permission=true)
    super(age,name,parent_permission)
    @specialization=specialization
  end

  def can_use_services?
    return true
  end
end