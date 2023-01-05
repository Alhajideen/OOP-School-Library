require_relative '../trimmer_decorator'
require_relative '../person'

describe 'TrimmerDecorator' do
  before(:each) do
    @person = Person.new(22, 'Kelvin Benjamin')
    @trimmer = TrimmerDecorator.new(@person)
  end

  it 'return a trimmed name for person' do
    expect(@trimmer.correct_name).to eql 'Kelvin Ben...'
  end
end
