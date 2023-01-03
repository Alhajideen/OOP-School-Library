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
end