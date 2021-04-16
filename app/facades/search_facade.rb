class SearchFacade
  def self.search(author)
    PoemService.search(author)
  end
end
