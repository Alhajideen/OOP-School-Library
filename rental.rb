class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @book = book
    @person = person
    @date = date
  end

  def books=(book)
    @book = book
    book.rentals.push(self) unless book.rentals.include?(self)
  end

  def persons=(person)
    @person = person
    person.rentals.push(self) unless person.rentals.include?(self)
  end
end
