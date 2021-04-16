class Poem
  attr_reader :author, :lines, :title, :tones

  def initialize(data)
    @title = data[:title]
    @author = data[:author]
    @lines = data[:lines].join(" ")
    @tones = data[:tones]
  end
end
