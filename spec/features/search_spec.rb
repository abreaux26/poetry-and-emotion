require 'rails_helper'
RSpec.describe 'As a user' do
  before :each do
    visit '/'
    fill_in :author, with: 'Emily'
    click_button('Get Poems')
  end

  describe 'I click "Get Poems"' do
    it 'I should be on page "/search"' do
      expect(current_path).to eq('/search')
    end

    it 'I should see a list of the first 10 poems' do
      expect(page).to have_css(".poem", count: 10)
    end

    it 'I should see Title, Author, and the poem' do
      first_poem = find(".poem", match: :first)

      within (first_poem) do
        expect(page).to have_content(first_poem.text)
      end
    end

    it 'I should see the tone or tones listed for each poem' do
      first_tones = find(".tones", match: :first)

      within (first_tones) do
        expect(page).to have_content(first_tones.text)
      end
    end
  end
end
