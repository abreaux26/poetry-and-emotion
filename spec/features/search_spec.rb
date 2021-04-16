require 'rails_helper'
RSpec.describe 'As a user' do
  before :each do
    visit '/'
  end

  describe 'I click "Get Poems"' do
    it 'I should be on page "/search"' do
      fill_in :author, with: 'Emily'

      click_button('Get Poems')

      expect(current_path).to eq('/search')
    end
  end
end
