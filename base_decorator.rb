require_relative 'nameable.rb'
class Decorator < Nameable
  def initialize(nameable)
    @nameable=nameable
  end

  def correct_name
    return @nameable.correct_name
  end
end