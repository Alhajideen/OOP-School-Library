require_relative '../teacher'

describe Teacher do
  before (:each) do
    @teacher = Teacher.new('Ruby','Bee',25)
  end

  it 'Check an instance of Teacher class' do
    expect(@teacher).to be_instance_of Teacher
  end

  it 'Check the variables in the instance' do
    expect(@teacher.can_use_services?).to be_truthy
  end
end