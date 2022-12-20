class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name: 'unknown', parent_permission: true)
    @id = Random.rand(1..50)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    puts of_age?
    of_age? || parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

person1 = Person.new(16, 'Deen')
puts person1.can_use_services?
