require_relative '../book'
require_relative '../person'
require_relative '../rental'

describe Book do
  before(:each) do
    @book = Book.new('Microverse', 'Ariel Camus')
    @person = Person.new('Deen', 23)
    @rental = Rental.new('05/01/2023', @book, @person)
    @book.add_rentals(@rental)
  end

  it 'Show the array length of rentals' do
    expect(@book.rentals.length).to eql 1
  end

  it 'should return book title' do
    expect(@book.title).to eq 'Microverse'
  end

  it 'should return book author' do
    expect(@book.author).to eq 'Ariel Camus'
  end

  it 'returns the class instance' do
    expect(@book).to be_instance_of Book
  end
end
