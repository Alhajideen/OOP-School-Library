require_relative './person'
class Teacher < Person
  def initialize(spec, name, age)
    super(name, age)
    @spec = spec
  end

  def can_use_services?
    true
  end
end
