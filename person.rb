class Person
  attr_accessor :name, :age
  attr_reader :id
  def initialize(age,name="unknown",parent_permission=true)
    @id= Random.rand(1..50)
    @age=age
    @name=name
    @parent_permission=parent_permission
  end
end