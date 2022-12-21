require_relative 'decorator.rb'
class TrimmerDecorator < Nameable
  def correct_name
    value = @nameable.correct_name
    value.length > 10 ? "#{value[0...10]}" : value
  end
end