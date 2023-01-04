require('json')

module GetData
  def getbooks
    if File.exist?('./database/books.json')
      files = File.open('./database/books.json', 'r')
      JSON.parse(files.read)
    else
      File.open('./database/books.json', 'w') do |_file|
        File.write([])
      end
    end
  end

  def getpeople
    if File.exist?('./database/people.json')
      files = File.open('./database/people.json', 'r')
      JSON.parse(files.read)
    else
      File.open('./database/people.json', 'w') do |_file|
        File.write([])
      end
    end
  end

  def getrentals
    if File.exist?('./database/rentals.json')
      files = File.open('./database/rentals.json', 'r')
      JSON.parse(files.read)
    else
      File.open('./database/rentals.json', 'w') do |_file|
        File.write([])
      end
    end
  end
end
