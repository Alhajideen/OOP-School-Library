require('json')

module GetData
  def getBooks
    if File.exist?('./database/books.json')
      file = File.open('./database/books.json','r')
      data_hash=JSON.parse(file.read())
    else
      File.open('./database/books.json', 'w') do |file|
      file.write([])
      end
    end
  end

  def getPeople
    if File.exist?('./database/people.json')
      file = File.open('./database/people.json','r')
      data_hash=JSON.parse(file.read())
    else
      File.open('./database/people.json', 'w') do |file|
      file.write([])
      end
    end
  end

  def getRentals
    if File.exist?('./database/rentals.json')
      file = File.open('./database/rentals.json','r')
      data_hash=JSON.parse(file.read())
    else
      File.open('./database/rentals.json', 'w') do |file|
      file.write([])
      end
    end
  end
end