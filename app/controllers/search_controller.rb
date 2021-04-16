class SearchController < ApplicationController
  def index
    @poems = PoemService.search(params[:author])
  end
end
