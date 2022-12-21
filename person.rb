require_relative 'nameable.rb'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name: 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..5000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    puts of_age?
    of_age? || parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end

person1 = Person.new(16, 'Deen')
puts person1.can_use_services?
