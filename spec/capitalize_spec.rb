require_relative '../capitalize_decorator'
require_relative '../person'

describe 'capitilizeDecorator' do
  before(:each) do
    @person = Person.new(22, 'deen')
    @capitilize = CapitalizeDecorator.new(@person)
  end

  it 'return capitalized name' do
    expect(@capitilize.correct_name).to eql 'Deen'
  end
end
