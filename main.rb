#!/usr/bin/env ruby

require './app'

class Main
  def initialize
    @inst = App.new
  end

  def init
    options = ['Please choose an option by entering a number',
               '1 - List all books.', '2 - List all people.',
               '3 - Create a person(1 - teacher or 2 - student).',
               '4 - Create a book.', '5 - Create a rental.',
               '6 - List all rentals for a given person id.',
               '7 - Exit']
    options.each do |opt|
      puts opt
    end
    req = gets.chomp
    request(req)
  end

 

  def book
    p 'Enter title: '
    title = gets.chomp
    p 'Enter Author: '
    author = gets.chomp
    @inst.create_book(title, author)
    init
  end
end

obj = Main.new
obj.init
