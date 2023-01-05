require_relative '../base_decorator'
require_relative '../person'

describe Decorator do
  before(:each) do
    @person = Person.new(23, 'John')
    @base_decorator = Decorator.new(@person)
  end
  it 'Has correct name' do
    expect(@base_decorator.correct_name).to eql 'John'
  end
end
