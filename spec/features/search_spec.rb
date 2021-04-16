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
  end
end
