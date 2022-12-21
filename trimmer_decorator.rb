require_relative './base_decorator'

class TrimmerDecorator < Nameable
  def correct_name
    value = @nameable.correct_name
    value.length > 10 ? (value[0...10]).to_s : value
  end
end
