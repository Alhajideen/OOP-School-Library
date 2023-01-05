require_relative '../nameable'

describe 'Error not implemented' do
  before (:each) do
    @nameable = Nameable.new 
  end
  it 'return a error notImplemented' do
    expect {@nameable.correct_name}.to raise_error(NotImplementedError)
  end
  it 'return an instance' do
    expect(@nameable).to be_instance_of Nameable
  end
end