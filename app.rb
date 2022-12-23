require './book'
require './teacher'
require './rental'
require './student'

class App
  def initialize
    @books = []
    @rentals =[]
    @people = []
  end

  def create_person()
    p 'Please enter an option, 1 for Teacher, 2 for Student'
    res = gets.chomp
    case res
    when '1'
      puts 'Enter Name of Teacher'
      name = gets.chomp
      puts 'Enter teacher\'s Age'
      age = gets.chomp
      puts 'What\'s teacher\'s specialization?'
      spec = gets.chomp
      new_person = Teacher.new(spec, name, age)
      @people << new_person unless @people.include?(new_person)
      puts "\n User #{name} added successfully \n\n"
    when '2'
      puts 'Enter Student Name'
      name = gets.chomp
      puts 'What\'s your age?'
      age = gets.chomp
      puts 'What Class (Classes incluse 3b, 4a, 6c)?'
      classes = gets.chomp
      permission?
      new_student = Student.new(classes, name, age)
      @people << new_student unless @people.include?(new_student)
      puts "\n Student #{name} aged #{age} added successfully \n\n"
    end
  end
end