require_relative '../student'

describe Student do
  before(:each) do
    @student = Student.new('2a','Deen',22)
  end

  it 'returns the class instance' do
    expect(@student).to be_instance_of Student
  end  

  it 'returns the classroom' do
   expect(@student.classroom).to eql '2a'
  end  

  it 'returns the student name' do
   expect(@student.name).to eql 'Deen'
  end  

  it 'returns the student age' do
   expect(@student.age).to eql 22
  end  

  it 'returns the student age' do
   expect(@student.play_hooky).to eql '¯\(ツ)/¯'
  end  
end