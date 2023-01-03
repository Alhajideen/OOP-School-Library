require './book'
require './teacher'
require './rental'
require './student'
require './getData.rb'

class App
  include GetData
  def initialize
    @books = getBooks
    @rentals = getRentals
    @people = getPeople
  end

  def permission?
    puts 'Do you have Parent\'s Permission (Y/N)?'
    permit = gets.chomp
    case permit
    when permit == 'y', 'Y'
      true
    when permit == 'n', 'N'
      false
    else
      puts 'Invalide entry, Please try again'
      permission?
    end
  end

  def all_books
    if @books.empty?
      puts "There are no books created yet, You can be the first to add one ): \n\n"
    else
      @books.each_with_index { |book,i| puts "\n #{i+1}) Title: #{book["title"]} by #{book["author"]} \n \n" }
    end
  end

  def all_people
    if @people.empty?
      puts "There are no persons created yet, Add users to see them here :( \n\n"
    else
      @people.each { |peeps| puts "\n Name: #{peeps['name']}, Age: #{peeps["age"]} years old \n\n" }
    end
  end

  def create_person()
    p 'Please enter an option, 1 for Teacher, 2 for Student'
    response = gets.chomp
    case response
    when '1'
      puts 'Enter Name of Teacher'
      name = gets.chomp
      puts 'Enter teacher\'s Age'
      age = gets.chomp
      puts 'What\'s teacher\'s specialization?'
      spec = gets.chomp
      new_person = Teacher.new(spec, age, name)
      data = {id: new_person.id, age: new_person.age, name: new_person.name, spec: spec, type: "teacher"}
      @people << data unless @people.include?(data)
      puts "\n User #{name} added successfully \n\n"
      File.open('./database/people.json', 'w') do |file|
      file.write(JSON.pretty_generate(@people))
    end
    when '2'
      puts 'Enter Student Name'
      name = gets.chomp
      puts 'What\'s your age?'
      age = gets.chomp
      puts 'What Class (Classes incluse 3b, 4a, 6c)?'
      classes = gets.chomp
      permission?
      new_student = Student.new(classes, name, age)
      data = {id: new_student.id, age: age, name: name, classes: classes, type: "student"}
      @people << data unless @people.include?(data)
      puts "\n Student #{name} aged #{age} added successfully \n\n"
      File.open('./database/people.json', 'w') do |file|
      file.write(JSON.pretty_generate(@people))
      end
    end
  end

  def create_book(title, author)
    new_book = Book.new(title, author)
    data= { title: new_book.title, author: new_book.author }
    @books << data unless @books.include?(data)
    File.open('./database/books.json', 'w') do |file|
    file.write(JSON.pretty_generate(@books))
    end
    puts "\n Book #{title} by #{author} created successfully \n\n"
  end

  def create_rental
    puts "Here are the available books, Select by Index number \n"
    @books.each_with_index { |bk, i| puts "\n #{i + 1}. #{bk["title"]} by #{bk["author"]}  \n\n" }
    index = gets.chomp.to_i
    puts 'Who is renting this book?'
    @people.each_with_index { |bk, i| puts "#{i + 1} #{bk["name"]} aged #{bk["age"]}" }
    person = gets.chomp.to_i
    puts 'Enter a date'
    date = gets.chomp
    new_rental = Rental.new(date, @books[index - 1], @people[person - 1])
    personArr = []
    data = {
      date: new_rental.date,
      person_id: new_rental.person["id"],
      person_name: new_rental.person["name"],
      title: new_rental.book["title"],
      author: new_rental.book["author"],
      rentals: personArr << new_rental.person["rentals"]
    }
    @rentals << data unless @rentals.include?(data)
    puts "\n Rental Created successfully \n\n"
    File.open('./database/rentals.json', 'w') do |file|
    file.write(JSON.pretty_generate(@rentals))
    end
  end

  def all_rentals
    puts "Below are the rentals Records, Insert an ID to filter \n"
    @rentals.each_with_index { |rent, i| puts "\n #{i}. #{rent.book.title} written by #{rent.book.author} \n \n" }
    puts "Here are all users information \n"
    @people.each_with_index { |users, i| puts "\n #{i + 1}. #{users.name} aged #{users.age} with ID: #{users.id} \n\n" }

    puts 'Enter an ID to see all user\'s rentals'
    id = gets.chomp.to_i
    @rentals.select do |user|
      puts "\n #{user.date} #{user.book.title} written by #{user.book.author} \n\n" if user.person.id == id
    end
  end

  def book
    p 'Enter title: '
    title = gets.chomp
    p 'Enter Author: '
    author = gets.chomp
    create_book(title, author)
  end
end
