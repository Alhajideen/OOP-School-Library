require_relative '../person'

describe Person do
  before(:each) do
    @person = Person.new(22, 'kelv')
  end

  it 'Created an instance of Person Class' do
    expect(@person).to be_instance_of Person
  end

  it 'Expect to return correct age' do
    expect(@person.age).to eql 22
  end

  it 'Expect to return correct age' do
    expect(@person.correct_name).to eql 'kelv'
  end
end