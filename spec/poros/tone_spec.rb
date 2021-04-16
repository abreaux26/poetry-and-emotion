require 'rails_helper'

RSpec.describe Tone do
  before :each do
    @tone = Tone.new({score: 0.730959, tone_name: "Joy"})
  end

  it 'can be created' do
    expect(@tone.class).to eq(Tone)
  end

  it 'has valid attributes' do
    expect(@tone.score).to eq(0.730959)
    expect(@tone.name).to eq("Joy")
  end
end
