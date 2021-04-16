class Tone
  attr_reader :score, :name

  def initialize(data)
    @score = data[:score]
    @name = data[:tone_name]
  end
end
