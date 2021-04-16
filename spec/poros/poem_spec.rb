require 'rails_helper'

RSpec.describe Poem do
  before :each do
    tone = Tone.new({score: 0.730959, tone_name: "Joy"})
    @tones = [tone]
    @poem = Poem.new(
      {
        author: "Emily Dickinson",
        lines: ["Not at Home to Callers", "Says the Naked Tree --", "Bonnet due in April --", "Wishing you Good Day --"],
        title: "Not at Home to Callers",
        tones: @tones
      })
  end

  it 'can be created' do
    expect(@poem.class).to eq(Poem)
  end

  it 'has valid attributes' do
    expect(@poem.author).to eq("Emily Dickinson")
    expect(@poem.lines).to eq("Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --")
    expect(@poem.title).to eq("Not at Home to Callers")
    expect(@poem.tones).to eq(@tones)
  end
end
