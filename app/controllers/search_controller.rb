class SearchController < ApplicationController
  def index
    # response = Faraday.get("https://poetrydb.org/author/#{params[:author]}")
    #
    # data = response.body
    # @poems = JSON.parse(data, symbolize_names: true).first(10)
    @poems = PoemService.search(params[:author])

    # @poems.each do |poem_info|
    #   conn = Faraday.new("https://api.us-south.tone-analyzer.watson.cloud.ibm.com") do |connection|
    #     connection.basic_auth("apikey", ENV['api_key'] )
    #   end
    #   response = conn.get("/instances/581b8525-9760-424b-927d-cb3e8dc2c04a/v3/tone?version=2017-09-21&text=#{poem_info[:lines].join(" ")}")
    #   poem_data = response.body
    #   @tones = JSON.parse(data, symbolize_names: true)
    # end
  end
end
