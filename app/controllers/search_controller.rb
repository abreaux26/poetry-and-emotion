class SearchController < ApplicationController
  def index
    response = Faraday.get("https://poetrydb.org/author/#{params[:author]}")

    data = response.body
    @parsed_data = JSON.parse(data, symbolize_names: true)
  end
end
