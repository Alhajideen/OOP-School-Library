require_relative './nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..5000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    puts of_age?
    of_age? || parent_permission
  end

  def correct_name
    @name
  end

  def add_rentals(rental)
    @rentals.push(rental)
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
