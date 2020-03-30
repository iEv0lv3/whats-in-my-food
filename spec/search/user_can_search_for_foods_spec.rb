require 'rails_helper'

RSpec.describe 'As a user', type: :feature do
  describe 'When I visit the root_path' do

    it 'I see a search form' do
      visit root_path

      expect(page).to have_content('Ingredient Search')
      fill_in 'q', with: 'sweet potatoes'
      click_on 'Search'

      expect(current_path).to eq(foods_path)
    end
  end
end
