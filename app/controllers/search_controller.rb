class SearchController < ApplicationController
  def index
    response = Faraday.get("https://poetrydb.org/author/#{params[:author]}")

    data = response.body
    @poems = JSON.parse(data, symbolize_names: true).first(10)
  end
end
