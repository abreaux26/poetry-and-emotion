class ToneService
  def self.tones(poem_lines)
    data = get_data("/instances/581b8525-9760-424b-927d-cb3e8dc2c04a/v3/tone?version=2017-09-21&text=#{poem_lines}")
    create_new_objects(data)
  end

  def self.create_new_objects(data)
    data[:document_tone][:tones].map do |data|
      Tone.new(data)
    end
  end

  def self.connection
    conn ||= Faraday.new('https://api.us-south.tone-analyzer.watson.cloud.ibm.com') do |conn|
      conn.basic_auth("apikey", ENV['api_key'])
    end
  end

  def self.get_data(url)
    response = connection.get(url)
    data = response.body
    JSON.parse(data, symbolize_names: true)
  end
end
