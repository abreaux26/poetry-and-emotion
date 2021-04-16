class SearchController < ApplicationController
  def index
    @poems = SearchFacade.search(params[:author])
  end
end
