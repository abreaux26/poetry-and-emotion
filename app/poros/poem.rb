class Poem
  attr_reader :author, :title, :lines

  def initialize(data)
    @title = data[:title]
    @author = data[:author]
    @lines = data[:lines].join(" ")
  end
end
