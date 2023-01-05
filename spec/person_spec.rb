require_relative '../person'

describe Person do
  before(:each) do
    @person = Person.new(22, 'Kelv')
  end

  it 'Created an instance of Person Class' do
    expect(@person).to be_instance_of Person
  end
end