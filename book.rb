class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(_title, author)
    @title = tittle
    @author = author
    @rentals = []
  end

  def add_rentals(rental)
    @rentals.push(rental)
  end
end
