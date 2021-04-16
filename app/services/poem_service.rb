class PoemService
  def self.search(author)
    get_data("/author/#{author}").map do |data|
      Poem.new(data)
    end
  end

  def self.connection
    Faraday.new('https://poetrydb.org')
  end

  def self.get_data(url)
    response = connection.get(url)
    data = response.body
    JSON.parse(data, symbolize_names: true).first(10)
  end
end
