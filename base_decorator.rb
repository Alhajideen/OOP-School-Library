require_relative 'nameable.rb'
class Decorator < Nameable
  def initialize(nameable)
    @nameable=nameable
  end

  def correct_name
    return Nameable.correct_name
  end
end