require './app.rb'


module Requests
  def initialize
    @inst = App.new
  end

  def request(request)
   case request
   when '1'
     @inst.all_books
     init
   when '2'
     @inst.all_people
     init
   when '3'
     @inst.create_person
     init
   when '4'
     @inst.book
     init
   when '5'
     @inst.create_rental
     init
   when '6'
     @inst.all_rentals
     init
   else
     p 'Thanks for using this app, See you again'
     exit
   end
  end
end